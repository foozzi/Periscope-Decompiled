package o;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.PriorityBlockingQueue;

public class acg
  implements abt
{
  private aad bnA;
  private final ot bny;
  private String bxA;
  private long bxB;
  private if bxC;
  private yz bxD;
  private boolean bxE;
  private aek.ˊ bxb;
  private final PriorityBlockingQueue<acb> bxy;
  private boolean bxz;
  private long ẛ;
  
  public acg(ot paramot, aad paramaad, yz paramyz, aek.ˊ paramˊ, boolean paramBoolean)
  {
    this.bny = paramot;
    this.bnA = paramaad;
    this.bxD = paramyz;
    this.bxb = paramˊ;
    this.bxE = paramBoolean;
    if (this.bxE)
    {
      this.bxy = new PriorityBlockingQueue(11, new acg.ˊ(this));
      return;
    }
    this.bxy = new PriorityBlockingQueue(11, new acg.ˋ(this));
  }
  
  private void ˊ(acb paramacb)
  {
    this.bxy.offer(paramacb);
  }
  
  private boolean ˋ(acb paramacb)
  {
    if (this.bxE)
    {
      BigInteger localBigInteger = this.bxb.ym();
      paramacb = akn.ⁱ(paramacb.bxr.Ci());
      if (BigInteger.ZERO.equals(localBigInteger)) {
        return false;
      }
      return localBigInteger.compareTo(paramacb) >= 0;
    }
    return paramacb.wG() <= this.bxb.xV();
  }
  
  public void kill()
  {
    if (this.bxC != null) {
      if.ˊ(this.bxC);
    }
    this.bny.ː(this);
  }
  
  public void onEventMainThread(abu paramabu)
  {
    ˊ(paramabu);
    Iterator localIterator = paramabu.wC().iterator();
    while (localIterator.hasNext()) {
      ˊ((acb)localIterator.next());
    }
    boolean bool;
    if (paramabu.wC().size() >= 100) {
      bool = true;
    } else {
      bool = false;
    }
    this.bxz = bool;
  }
  
  public void onEventMainThread(acf paramacf)
  {
    switch (1.bxF[paramacf.ordinal()])
    {
    default: 
      return;
    }
    akk.ᐪ("ReplayChatQueue", "Fetching more from pubnub with this token " + this.bxB);
    this.bxD.ˎ(this.bxA, this.bxB);
  }
  
  public void prepare()
  {
    if (this.bxC != null)
    {
      kill();
      this.bxy.clear();
      this.bxB = 0L;
    }
    this.bny.ʲ(this);
    this.bxC = new if();
    this.bxC.start();
  }
  
  public void ʽ(String paramString1, String paramString2, String paramString3)
  {
    this.bxA = paramString1;
  }
  
  public void ˊ(abu paramabu)
  {
    double d2 = 0.0D;
    paramabu = paramabu.wC().iterator();
    while (paramabu.hasNext())
    {
      acb localacb = (acb)paramabu.next();
      this.bxB = localacb.bxs;
      switch (1.bwW[localacb.bxq.ordinal()])
      {
      default: 
        break;
      case 1: 
        Double localDouble = localacb.bxr.Co();
        double d1 = d2;
        if (localDouble != null) {
          d1 = d2 + localDouble.doubleValue();
        }
        d2 = d1;
        if (this.ẛ == 0L)
        {
          this.ẛ = localacb.bxs;
          d2 = d1;
        }
        break;
      case 2: 
      case 3: 
      case 4: 
      case 5: 
      case 6: 
      case 7: 
        localacb.ˀ((localacb.bxs - (10000.0D * d2) - this.ẛ) / 10000L);
      }
    }
  }
  
  class if
    extends Thread
  {
    private volatile boolean bf = true;
    
    public if() {}
    
    private void kill()
    {
      this.bf = false;
      try
      {
        notify();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void run()
    {
      Object localObject1 = null;
      label361:
      label366:
      label371:
      label380:
      for (;;)
      {
        long l2;
        try
        {
          Object localObject4;
          if (this.bf)
          {
            l2 = 100L;
            localObject4 = localObject1;
            if (localObject1 == null)
            {
              localObject1 = (acb)acg.ˊ(acg.this).take();
              localObject4 = localObject1;
              if (acg.ˋ(acg.this))
              {
                localObject4 = localObject1;
                if (acg.ˊ(acg.this).size() < 50)
                {
                  acg.ˎ(acg.this).ˣ(acf.bxw);
                  acg.ˊ(acg.this, false);
                  localObject4 = localObject1;
                }
              }
            }
            if (!acg.ˏ(acg.this).yn()) {}
          }
          switch (acg.1.bwW[localObject4.bxq.ordinal()])
          {
          case 2: 
          case 5: 
          case 6: 
          case 7: 
            if (localObject4.bxr.Cb() == null) {
              break label361;
            }
            if (acg.ᐝ(acg.this).רּ(localObject4.bxr.Cb())) {
              break label366;
            }
            break label361;
            if (i != 0)
            {
              localObject1 = localObject4;
              l1 = l2;
              if (acg.ˊ(acg.this, localObject4))
              {
                acg.ˎ(acg.this).ˣ(localObject4.bxr);
                localObject1 = null;
                l1 = l2;
              }
            }
            else
            {
              localObject1 = localObject4;
              l1 = l2;
              if (localObject4.bxr.Cb() != null)
              {
                akk.ᐪ("ReplayChatQueue", "Dropping blocked message from " + localObject4.bxr.Cb());
                localObject1 = null;
                l1 = l2;
                continue;
                akk.ᐪ("ReplayChatQueue", "Player not ready, sleeping for longer.");
                l1 = 500L;
                localObject1 = localObject4;
              }
            }
            try
            {
              wait(l1);
              break label380;
            }
            finally
            {
              localObject2 = finally;
              throw localObject2;
            }
            akk.ᐪ("ReplayChatQueue", "ChatQueue received kill signal. Thread will no longer loop.");
            return;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          akk.ᐝ("ReplayChatQueue", "error", localInterruptedException);
          return;
        }
        break label371;
        int i = 1;
        continue;
        i = 0;
        continue;
        Object localObject3 = null;
        long l1 = l2;
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acg
 * JD-Core Version:    0.7.0.1
 */