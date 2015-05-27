package o;

import android.os.SystemClock;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

class abw
  extends Thread
{
  private volatile boolean bf;
  private final ot bny;
  private final Map<anu.ˊ, if> bwX = new ConcurrentHashMap();
  private final Lock bwY = new ReentrantLock();
  private final Condition bwZ = this.bwY.newCondition();
  private final Condition bxa = this.bwY.newCondition();
  private final aek.ˊ bxb;
  private boolean bxc;
  private boolean bxd = false;
  
  public abw(aek.ˊ paramˊ, ot paramot)
  {
    this.bny = paramot;
    this.bxb = paramˊ;
    this.bf = true;
  }
  
  private void await()
  {
    this.bwY.lock();
    try
    {
      this.bxa.await();
      return;
    }
    finally
    {
      this.bwY.unlock();
    }
  }
  
  private void ʸ(long paramLong)
  {
    if (paramLong <= 0L) {
      return;
    }
    this.bwY.lock();
    try
    {
      this.bwZ.await(paramLong, TimeUnit.MILLISECONDS);
      return;
    }
    finally
    {
      this.bwY.unlock();
    }
  }
  
  private void ʻ(ant paramant)
  {
    this.bny.ˣ(paramant);
  }
  
  private void ˊ(Condition paramCondition)
  {
    this.bwY.lock();
    try
    {
      paramCondition.signal();
      return;
    }
    finally
    {
      this.bwY.unlock();
    }
  }
  
  private void ᐝ(ant paramant)
  {
    BigInteger localBigInteger1 = this.bxb.xT();
    BigInteger localBigInteger2 = akn.ⁱ(paramant.Ci());
    long l1 = System.currentTimeMillis();
    long l2 = ᵢ(localBigInteger1);
    long l3 = ᵢ(localBigInteger2);
    if (this.bxd)
    {
      switch (1.bwW[paramant.Cf().ordinal()])
      {
      default: 
        break;
      case 1: 
        ʻ(paramant);
        return;
      }
      return;
    }
    if (localBigInteger1.compareTo(localBigInteger2) >= 0)
    {
      ʻ(paramant);
      return;
    }
    if ((this.bxc) && (l1 >= l3 + (l2 - l1)))
    {
      if (paramant.Cf() == anu.bOb) {
        this.bxd = true;
      }
      ʻ(paramant);
      return;
    }
    ʽ(paramant);
  }
  
  public void kill()
  {
    this.bf = false;
    ˊ(this.bwZ);
    ˊ(this.bxa);
  }
  
  public void run()
  {
    label184:
    for (;;)
    {
      try
      {
        if (this.bf)
        {
          int i = 0;
          int j = this.bwX.size();
          long l = 200L;
          Iterator localIterator = this.bwX.values().iterator();
          if (localIterator.hasNext())
          {
            if localif = (if)localIterator.next();
            ant localant = (ant)localif.bxe.poll();
            if (localant == null)
            {
              i += 1;
            }
            else if (localif.ready())
            {
              ᐝ(localant);
              l = Math.min(l, localif.wF());
            }
            else
            {
              localif.bxe.offer(localant);
              l = Math.min(l, localif.wE());
            }
          }
          else
          {
            if (i >= j)
            {
              await();
              break label184;
            }
            ʸ(l);
            break label184;
          }
        }
        else
        {
          akk.ـ("ChatQueue", "ChatQueue received kill signal. Thread will no longer loop.");
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        akk.ˏ("ChatQueue", "error", localInterruptedException);
        return;
      }
    }
  }
  
  public void ʼ(ant paramant)
  {
    ʽ(paramant);
    if (paramant.Cf().bxf.WC <= 0L) {
      ˊ(this.bwZ);
    }
    ˊ(this.bxa);
  }
  
  public void ʽ(ant paramant)
  {
    anu.ˊ localˊ = paramant.Cf().bxf;
    if localif2 = (if)this.bwX.get(localˊ);
    if localif1 = localif2;
    if (localif2 == null)
    {
      localif1 = new if(localˊ);
      this.bwX.put(localˊ, localif1);
    }
    localif1.bxe.offer(paramant);
  }
  
  void ᓪ(boolean paramBoolean)
  {
    this.bxc = paramBoolean;
  }
  
  public long ᵢ(BigInteger paramBigInteger)
  {
    return TimeUnit.SECONDS.toMillis(paramBigInteger.subtract(BigInteger.valueOf(2208988800L)).longValue());
  }
  
  static class if
  {
    public final BlockingQueue<ant> bxe = new PriorityBlockingQueue(11, new abv.if());
    public final anu.ˊ bxf;
    private long bxg;
    
    public if(anu.ˊ paramˊ)
    {
      this.bxf = paramˊ;
    }
    
    private long wD()
    {
      return SystemClock.elapsedRealtime() - this.bxg;
    }
    
    public boolean ready()
    {
      if (this.bxf.WC <= 0L) {
        return true;
      }
      return wD() >= this.bxf.WC;
    }
    
    public long wE()
    {
      return this.bxf.WC - wD();
    }
    
    public long wF()
    {
      this.bxg = SystemClock.elapsedRealtime();
      return this.bxf.WC;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abw
 * JD-Core Version:    0.7.0.1
 */