package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class ConnectionPool
{
  private static final long DEFAULT_KEEP_ALIVE_DURATION_MS = 300000L;
  private static final ConnectionPool systemDefault;
  private final LinkedList<Connection> connections = new LinkedList();
  private final Runnable connectionsCleanupRunnable = new ConnectionPool.1(this);
  private Executor executor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory("OkHttp ConnectionPool", true));
  private final long keepAliveDurationNs;
  private final int maxIdleConnections;
  
  static
  {
    String str1 = System.getProperty("http.keepAlive");
    String str2 = System.getProperty("http.keepAliveDuration");
    String str3 = System.getProperty("http.maxConnections");
    long l;
    if (str2 != null) {
      l = Long.parseLong(str2);
    } else {
      l = 300000L;
    }
    if ((str1 != null) && (!Boolean.parseBoolean(str1)))
    {
      systemDefault = new ConnectionPool(0, l);
      return;
    }
    if (str3 != null)
    {
      systemDefault = new ConnectionPool(Integer.parseInt(str3), l);
      return;
    }
    systemDefault = new ConnectionPool(5, l);
  }
  
  public ConnectionPool(int paramInt, long paramLong)
  {
    this.maxIdleConnections = paramInt;
    this.keepAliveDurationNs = (1000L * paramLong * 1000L);
  }
  
  private void addConnection(Connection paramConnection)
  {
    boolean bool = this.connections.isEmpty();
    this.connections.addFirst(paramConnection);
    if (bool)
    {
      this.executor.execute(this.connectionsCleanupRunnable);
      return;
    }
    notifyAll();
  }
  
  public static ConnectionPool getDefault()
  {
    return systemDefault;
  }
  
  private void runCleanupUntilPoolIsEmpty()
  {
    while (performCleanup()) {}
  }
  
  public void evictAll()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(this.connections);
      this.connections.clear();
      notifyAll();
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
    int i = 0;
    int j = localObject.size();
    while (i < j)
    {
      Util.closeQuietly(((Connection)localObject.get(i)).getSocket());
      i += 1;
    }
  }
  
  public Connection get(Address paramAddress)
  {
    Object localObject2 = null;
    for (;;)
    {
      try
      {
        ListIterator localListIterator = this.connections.listIterator(this.connections.size());
        Object localObject1 = localObject2;
        if (localListIterator.hasPrevious())
        {
          localObject1 = (Connection)localListIterator.previous();
          if ((((Connection)localObject1).getRoute().getAddress().equals(paramAddress)) && (((Connection)localObject1).isAlive()) && (System.nanoTime() - ((Connection)localObject1).getIdleStartTimeNs() < this.keepAliveDurationNs))
          {
            localListIterator.remove();
            boolean bool = ((Connection)localObject1).isSpdy();
            if (!bool) {
              try
              {
                Platform.get().tagSocket(((Connection)localObject1).getSocket());
              }
              catch (SocketException localSocketException)
              {
                Util.closeQuietly(((Connection)localObject1).getSocket());
                Platform.get().logW("Unable to tagSocket(): " + localSocketException);
              }
            }
          }
        }
        else
        {
          if ((localObject1 != null) && (((Connection)localObject1).isSpdy())) {
            this.connections.addFirst(localObject1);
          }
          return localObject1;
        }
      }
      finally {}
    }
  }
  
  public int getConnectionCount()
  {
    try
    {
      int i = this.connections.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  List<Connection> getConnections()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(this.connections);
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int getHttpConnectionCount()
  {
    try
    {
      int i = this.connections.size();
      int j = getMultiplexedConnectionCount();
      return i - j;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int getMultiplexedConnectionCount()
  {
    int i = 0;
    try
    {
      Iterator localIterator = this.connections.iterator();
      while (localIterator.hasNext())
      {
        boolean bool = ((Connection)localIterator.next()).isSpdy();
        int j = i;
        if (bool) {
          j = i + 1;
        }
        i = j;
      }
      return i;
    }
    finally {}
  }
  
  @Deprecated
  public int getSpdyConnectionCount()
  {
    try
    {
      int i = getMultiplexedConnectionCount();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  boolean performCleanup()
  {
    for (;;)
    {
      long l2;
      try
      {
        boolean bool = this.connections.isEmpty();
        if (bool) {
          return false;
        }
        ArrayList localArrayList = new ArrayList();
        i = 0;
        long l3 = System.nanoTime();
        l1 = this.keepAliveDurationNs;
        ListIterator localListIterator = this.connections.listIterator(this.connections.size());
        Connection localConnection;
        if (localListIterator.hasPrevious())
        {
          localConnection = (Connection)localListIterator.previous();
          long l4 = localConnection.getIdleStartTimeNs() + this.keepAliveDurationNs - l3;
          if ((l4 <= 0L) || (!localConnection.isAlive()))
          {
            localListIterator.remove();
            localArrayList.add(localConnection);
            j = i;
            l2 = l1;
            break label339;
          }
          j = i;
          l2 = l1;
          if (!localConnection.isIdle()) {
            break label339;
          }
          j = i + 1;
          l2 = Math.min(l1, l4);
          break label339;
        }
        localListIterator = this.connections.listIterator(this.connections.size());
        if ((localListIterator.hasPrevious()) && (i > this.maxIdleConnections))
        {
          localConnection = (Connection)localListIterator.previous();
          j = i;
          if (!localConnection.isIdle()) {
            break label348;
          }
          localArrayList.add(localConnection);
          localListIterator.remove();
          j = i - 1;
          break label348;
        }
        bool = localArrayList.isEmpty();
        if (bool) {
          try
          {
            l2 = l1 / 1000000L;
            wait(l2, (int)(l1 - 1000000L * l2));
            return true;
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
      finally {}
      int i = 0;
      int j = localObject.size();
      while (i < j)
      {
        Util.closeQuietly(((Connection)localObject.get(i)).getSocket());
        i += 1;
      }
      return true;
      label339:
      i = j;
      long l1 = l2;
      continue;
      label348:
      i = j;
    }
  }
  
  void recycle(Connection paramConnection)
  {
    if (paramConnection.isSpdy()) {
      return;
    }
    if (!paramConnection.clearOwner()) {
      return;
    }
    if (!paramConnection.isAlive())
    {
      Util.closeQuietly(paramConnection.getSocket());
      return;
    }
    try
    {
      Platform.get().untagSocket(paramConnection.getSocket());
    }
    catch (SocketException localSocketException)
    {
      Platform.get().logW("Unable to untagSocket(): " + localSocketException);
      Util.closeQuietly(paramConnection.getSocket());
      return;
    }
    try
    {
      addConnection(paramConnection);
      paramConnection.incrementRecycleCount();
      paramConnection.resetIdleStartTime();
      return;
    }
    finally
    {
      paramConnection = finally;
      throw paramConnection;
    }
  }
  
  void replaceCleanupExecutorForTests(Executor paramExecutor)
  {
    this.executor = paramExecutor;
  }
  
  void share(Connection paramConnection)
  {
    if (!paramConnection.isSpdy()) {
      throw new IllegalArgumentException();
    }
    if (!paramConnection.isAlive()) {
      return;
    }
    try
    {
      addConnection(paramConnection);
      return;
    }
    finally
    {
      paramConnection = finally;
      throw paramConnection;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.ConnectionPool
 * JD-Core Version:    0.7.0.1
 */