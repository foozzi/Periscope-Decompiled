package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpEngine;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class Dispatcher
{
  private final Deque<Call> executedCalls = new ArrayDeque();
  private ExecutorService executorService;
  private int maxRequests = 64;
  private int maxRequestsPerHost = 5;
  private final Deque<Call.AsyncCall> readyCalls = new ArrayDeque();
  private final Deque<Call.AsyncCall> runningCalls = new ArrayDeque();
  
  public Dispatcher() {}
  
  public Dispatcher(ExecutorService paramExecutorService)
  {
    this.executorService = paramExecutorService;
  }
  
  private void promoteCalls()
  {
    if (this.runningCalls.size() >= this.maxRequests) {
      return;
    }
    if (this.readyCalls.isEmpty()) {
      return;
    }
    Iterator localIterator = this.readyCalls.iterator();
    while (localIterator.hasNext())
    {
      Call.AsyncCall localAsyncCall = (Call.AsyncCall)localIterator.next();
      if (runningCallsForHost(localAsyncCall) < this.maxRequestsPerHost)
      {
        localIterator.remove();
        this.runningCalls.add(localAsyncCall);
        getExecutorService().execute(localAsyncCall);
      }
      if (this.runningCalls.size() >= this.maxRequests) {
        return;
      }
    }
  }
  
  private int runningCallsForHost(Call.AsyncCall paramAsyncCall)
  {
    int i = 0;
    Iterator localIterator = this.runningCalls.iterator();
    while (localIterator.hasNext())
    {
      int j = i;
      if (((Call.AsyncCall)localIterator.next()).host().equals(paramAsyncCall.host())) {
        j = i + 1;
      }
      i = j;
    }
    return i;
  }
  
  public void cancel(Object paramObject)
  {
    label174:
    for (;;)
    {
      try
      {
        Iterator localIterator = this.readyCalls.iterator();
        Object localObject;
        if (localIterator.hasNext())
        {
          localObject = (Call.AsyncCall)localIterator.next();
          if (Util.equal(paramObject, ((Call.AsyncCall)localObject).tag())) {
            ((Call.AsyncCall)localObject).cancel();
          }
        }
        else
        {
          localIterator = this.runningCalls.iterator();
          if (localIterator.hasNext())
          {
            localObject = (Call.AsyncCall)localIterator.next();
            if (!Util.equal(paramObject, ((Call.AsyncCall)localObject).tag())) {
              break label174;
            }
            ((Call.AsyncCall)localObject).get().canceled = true;
            localObject = ((Call.AsyncCall)localObject).get().engine;
            if (localObject == null) {
              break label174;
            }
            ((HttpEngine)localObject).disconnect();
            break label174;
          }
          localIterator = this.executedCalls.iterator();
          if (localIterator.hasNext())
          {
            localObject = (Call)localIterator.next();
            if (Util.equal(paramObject, ((Call)localObject).tag())) {
              ((Call)localObject).cancel();
            }
            continue;
          }
          return;
        }
      }
      finally {}
    }
  }
  
  void enqueue(Call.AsyncCall paramAsyncCall)
  {
    try
    {
      if ((this.runningCalls.size() < this.maxRequests) && (runningCallsForHost(paramAsyncCall) < this.maxRequestsPerHost))
      {
        this.runningCalls.add(paramAsyncCall);
        getExecutorService().execute(paramAsyncCall);
      }
      else
      {
        this.readyCalls.add(paramAsyncCall);
      }
      return;
    }
    finally {}
  }
  
  void executed(Call paramCall)
  {
    try
    {
      this.executedCalls.add(paramCall);
      return;
    }
    finally
    {
      paramCall = finally;
      throw paramCall;
    }
  }
  
  void finished(Call.AsyncCall paramAsyncCall)
  {
    try
    {
      if (!this.runningCalls.remove(paramAsyncCall)) {
        throw new AssertionError("AsyncCall wasn't running!");
      }
      promoteCalls();
      return;
    }
    finally {}
  }
  
  void finished(Call paramCall)
  {
    try
    {
      if (!this.executedCalls.remove(paramCall)) {
        throw new AssertionError("Call wasn't in-flight!");
      }
      return;
    }
    finally
    {
      paramCall = finally;
      throw paramCall;
    }
  }
  
  public ExecutorService getExecutorService()
  {
    try
    {
      if (this.executorService == null) {
        this.executorService = new ThreadPoolExecutor(0, 2147483647, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp Dispatcher", false));
      }
      ExecutorService localExecutorService = this.executorService;
      return localExecutorService;
    }
    finally {}
  }
  
  public int getMaxRequests()
  {
    try
    {
      int i = this.maxRequests;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int getMaxRequestsPerHost()
  {
    try
    {
      int i = this.maxRequestsPerHost;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void setMaxRequests(int paramInt)
  {
    if (paramInt < 1) {}
    try
    {
      throw new IllegalArgumentException("max < 1: " + paramInt);
    }
    finally {}
    this.maxRequests = paramInt;
    promoteCalls();
  }
  
  public void setMaxRequestsPerHost(int paramInt)
  {
    if (paramInt < 1) {}
    try
    {
      throw new IllegalArgumentException("max < 1: " + paramInt);
    }
    finally {}
    this.maxRequestsPerHost = paramInt;
    promoteCalls();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Dispatcher
 * JD-Core Version:    0.7.0.1
 */