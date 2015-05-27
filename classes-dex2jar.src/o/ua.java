package o;

import java.io.IOException;
import java.io.InterruptedIOException;

public class ua
  extends vb
{
  private static ua head;
  private boolean inQueue;
  private ua next;
  private long timeoutAt;
  
  private static ua awaitTimeout()
  {
    try
    {
      ua localua = head.next;
      if (localua == null)
      {
        ua.class.wait();
        return null;
      }
      long l1 = localua.remainingNanos(System.nanoTime());
      if (l1 > 0L)
      {
        long l2 = l1 / 1000000L;
        ua.class.wait(l2, (int)(l1 - 1000000L * l2));
        return null;
      }
      head.next = localua.next;
      localua.next = null;
      return localua;
    }
    finally {}
  }
  
  private static boolean cancelScheduledTimeout(ua paramua)
  {
    try
    {
      for (ua localua = head; localua != null; localua = localua.next) {
        if (localua.next == paramua)
        {
          localua.next = paramua.next;
          paramua.next = null;
          return false;
        }
      }
      return true;
    }
    finally {}
  }
  
  private long remainingNanos(long paramLong)
  {
    return this.timeoutAt - paramLong;
  }
  
  private static void scheduleTimeout(ua paramua, long paramLong, boolean paramBoolean)
  {
    try
    {
      if (head == null)
      {
        head = new ua();
        new if().start();
      }
      long l = System.nanoTime();
      if ((paramLong != 0L) && (paramBoolean)) {
        paramua.timeoutAt = (Math.min(paramLong, paramua.deadlineNanoTime() - l) + l);
      } else if (paramLong != 0L) {
        paramua.timeoutAt = (l + paramLong);
      } else if (paramBoolean) {
        paramua.timeoutAt = paramua.deadlineNanoTime();
      } else {
        throw new AssertionError();
      }
      paramLong = paramua.remainingNanos(l);
      for (ua localua = head;; localua = localua.next) {
        if ((localua.next == null) || (paramLong < localua.next.remainingNanos(l)))
        {
          paramua.next = localua.next;
          localua.next = paramua;
          if (localua != head) {
            break;
          }
          ua.class.notify();
          break;
        }
      }
      return;
    }
    finally {}
  }
  
  public final void enter()
  {
    if (this.inQueue) {
      throw new IllegalStateException("Unbalanced enter/exit");
    }
    long l = timeoutNanos();
    boolean bool = hasDeadline();
    if ((l == 0L) && (!bool)) {
      return;
    }
    this.inQueue = true;
    scheduleTimeout(this, l, bool);
  }
  
  final IOException exit(IOException paramIOException)
  {
    if (!exit()) {
      return paramIOException;
    }
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    localInterruptedIOException.initCause(paramIOException);
    return localInterruptedIOException;
  }
  
  final void exit(boolean paramBoolean)
  {
    if ((exit()) && (paramBoolean)) {
      throw new InterruptedIOException("timeout");
    }
  }
  
  public final boolean exit()
  {
    if (!this.inQueue) {
      return false;
    }
    this.inQueue = false;
    return cancelScheduledTimeout(this);
  }
  
  public final uz sink(uz paramuz)
  {
    return new ub(this, paramuz);
  }
  
  public final va source(va paramva)
  {
    return new uc(this, paramva);
  }
  
  public void timedOut() {}
  
  static final class if
    extends Thread
  {
    public if()
    {
      super();
      setDaemon(true);
    }
    
    public void run()
    {
      try
      {
        for (;;)
        {
          ua localua = ua.access$000();
          if (localua != null) {
            localua.timedOut();
          }
        }
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ua
 * JD-Core Version:    0.7.0.1
 */