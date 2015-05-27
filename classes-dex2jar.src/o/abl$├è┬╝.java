package o;

import java.lang.ref.WeakReference;
import java.util.ArrayList;

class abl$ʼ
  extends Thread
{
  private int bvd = 0;
  private WeakReference<abl> bwd;
  private boolean bwi;
  private boolean bwj;
  private boolean bwk;
  private boolean bwl;
  private boolean bwm;
  private boolean bwn;
  private boolean bwo;
  private boolean bwp;
  private boolean bwq;
  private boolean bwr;
  private boolean bws;
  private int bwt = 1;
  private boolean bwu = true;
  private boolean bwv;
  private ArrayList<Runnable> bww = new ArrayList();
  private boolean bwx = true;
  private abl.ʻ bwy;
  private int γ = 0;
  
  abl$ʼ(WeakReference<abl> paramWeakReference)
  {
    this.bwd = paramWeakReference;
  }
  
  private void wf()
  {
    if (this.bwq)
    {
      this.bwq = false;
      this.bwy.wd();
    }
  }
  
  private void wg()
  {
    if (this.bwp)
    {
      this.bwy.finish();
      this.bwp = false;
      abl.wa().ˎ(this);
    }
  }
  
  private void wh()
  {
    this.bwy = new abl.ʻ(this.bwd);
    this.bwp = false;
    this.bwq = false;
    int n = 0;
    int i = 0;
    int k = 0;
    int m = 0;
    int i5 = 0;
    int j = 0;
    int i2 = 0;
    int i4 = 0;
    int i3 = 0;
    ??? = null;
    for (;;)
    {
      int i6;
      try
      {
        abl.ʽ localʽ2 = abl.wa();
        i6 = j;
        int i7 = i5;
        j = m;
        m = i;
        try
        {
          boolean bool1 = this.bwi;
          if (bool1) {
            synchronized (abl.wa())
            {
              wf();
              wg();
              return;
            }
          }
          if (!this.bww.isEmpty())
          {
            ??? = (Runnable)this.bww.remove(0);
            i1 = m;
            m = j;
            i5 = i7;
            j = i6;
            i6 = i3;
          }
          else
          {
            bool1 = false;
            if (this.bwl != this.bwk)
            {
              bool1 = this.bwk;
              this.bwl = this.bwk;
              abl.wa().notifyAll();
            }
            i1 = i2;
            if (this.bws)
            {
              wf();
              wg();
              this.bws = false;
              i1 = 1;
            }
            i5 = k;
            if (k != 0)
            {
              wf();
              wg();
              i5 = 0;
            }
            if ((bool1) && (this.bwq)) {
              wf();
            }
            if ((bool1) && (this.bwp))
            {
              abl localabl = (abl)this.bwd.get();
              boolean bool2;
              if (localabl == null) {
                bool2 = false;
              } else {
                bool2 = abl.ʻ(localabl);
              }
              if ((!bool2) || (abl.wa().wo())) {
                wg();
              }
            }
            if ((bool1) && (abl.wa().wp())) {
              this.bwy.finish();
            }
            if ((!this.bwm) && (!this.bwo))
            {
              if (this.bwq) {
                wf();
              }
              this.bwo = true;
              this.bwn = false;
              abl.wa().notifyAll();
            }
            if ((this.bwm) && (this.bwo))
            {
              this.bwo = false;
              abl.wa().notifyAll();
            }
            i2 = i6;
            if (i6 != 0)
            {
              i7 = 0;
              i2 = 0;
              this.bwv = true;
              abl.wa().notifyAll();
            }
            int i9 = n;
            int i10 = m;
            i6 = j;
            int i8 = i1;
            if (wj())
            {
              k = n;
              i = i1;
              if (!this.bwp) {
                if (i1 != 0)
                {
                  i = 0;
                  k = n;
                }
                else
                {
                  bool1 = abl.wa().ˋ(this);
                  k = n;
                  i = i1;
                  if (bool1)
                  {
                    try
                    {
                      this.bwy.start();
                    }
                    catch (RuntimeException localRuntimeException)
                    {
                      abl.wa().ˎ(this);
                      throw localRuntimeException;
                    }
                    this.bwp = true;
                    k = 1;
                    abl.wa().notifyAll();
                    i = i1;
                  }
                }
              }
              i1 = m;
              n = j;
              if (this.bwp)
              {
                i1 = m;
                n = j;
                if (!this.bwq)
                {
                  this.bwq = true;
                  i1 = 1;
                  n = 1;
                }
              }
              i9 = k;
              i10 = i1;
              i6 = n;
              i8 = i;
              if (this.bwq)
              {
                m = n;
                if (this.bwx)
                {
                  m = 1;
                  i4 = this.bvd;
                  i3 = this.γ;
                  i7 = 1;
                  i1 = 1;
                  this.bwx = false;
                }
                this.bwu = false;
                abl.wa().notifyAll();
                n = k;
                k = i5;
                i5 = i7;
                j = i2;
                i2 = i;
                i6 = i3;
                continue;
              }
            }
            abl.wa().wait();
            n = i9;
            m = i10;
            k = i5;
            j = i6;
            i6 = i2;
            i2 = i8;
            continue;
          }
        }
        finally {}
        if (localObject2 != null)
        {
          localObject2.run();
          Object localObject3 = null;
          i = i1;
          i3 = i6;
          continue;
        }
        i = i1;
        if (i1 != 0)
        {
          if (this.bwy.wb()) {
            synchronized (abl.wa())
            {
              this.bwr = true;
              abl.wa().notifyAll();
            }
          }
          synchronized (abl.wa())
          {
            this.bwr = true;
            this.bwn = true;
            abl.wa().notifyAll();
          }
        }
        i3 = n;
        if (n != 0)
        {
          ??? = (abl)this.bwd.get();
          if (??? == null) {
            break label1093;
          }
          abl.ʼ((abl)???).ˊ(this.bwy.bwg);
          break label1093;
        }
        i1 = m;
        if (m != 0)
        {
          ??? = (abl)this.bwd.get();
          if (??? == null) {
            break label1099;
          }
          abl.ʼ((abl)???).ﹷ(i4, i6);
          break label1099;
        }
        ??? = (abl)this.bwd.get();
        if (??? != null) {
          abl.ʼ((abl)???).uG();
        }
        m = this.bwy.wc();
        switch (m)
        {
        default: 
          abl.ʻ.ˋ("GLThread", "eglSwapBuffers", m);
          synchronized (abl.wa())
          {
            this.bwn = true;
            abl.wa().notifyAll();
          }
          if (i5 != 0) {
            j = 1;
          }
          n = i3;
          m = i1;
          i3 = i6;
          continue;
        }
      }
      finally
      {
        synchronized (abl.wa())
        {
          wf();
          wg();
        }
      }
      i = i1;
      i3 = i6;
      continue;
      i = 0;
      continue;
      label1093:
      i3 = 0;
      continue;
      label1099:
      int i1 = 0;
      continue;
      continue;
      continue;
      k = 1;
    }
  }
  
  private boolean wj()
  {
    return (!this.bwl) && (this.bwm) && (!this.bwn) && (this.bvd > 0) && (this.γ > 0) && ((this.bwu) || (this.bwt == 1));
  }
  
  public int getRenderMode()
  {
    synchronized ()
    {
      int i = this.bwt;
      return i;
    }
  }
  
  public void requestRender()
  {
    synchronized ()
    {
      this.bwu = true;
      abl.wa().notifyAll();
      return;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 202	java/lang/StringBuilder
    //   4: dup
    //   5: invokespecial 203	java/lang/StringBuilder:<init>	()V
    //   8: ldc 205
    //   10: invokevirtual 209	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: aload_0
    //   14: invokevirtual 213	o/abl$ʼ:getId	()J
    //   17: invokevirtual 216	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   20: invokevirtual 220	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokevirtual 224	o/abl$ʼ:setName	(Ljava/lang/String;)V
    //   26: aload_0
    //   27: invokespecial 226	o/abl$ʼ:wh	()V
    //   30: invokestatic 79	o/abl:wa	()Lo/abl$ʽ;
    //   33: aload_0
    //   34: invokevirtual 228	o/abl$ʽ:ˊ	(Lo/abl$ʼ;)V
    //   37: return
    //   38: astore_1
    //   39: invokestatic 79	o/abl:wa	()Lo/abl$ʽ;
    //   42: aload_0
    //   43: invokevirtual 228	o/abl$ʽ:ˊ	(Lo/abl$ʼ;)V
    //   46: return
    //   47: astore_1
    //   48: invokestatic 79	o/abl:wa	()Lo/abl$ʽ;
    //   51: aload_0
    //   52: invokevirtual 228	o/abl$ʽ:ˊ	(Lo/abl$ʼ;)V
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	ʼ
    //   38	1	1	localInterruptedException	InterruptedException
    //   47	9	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   26	30	38	java/lang/InterruptedException
    //   26	30	47	finally
  }
  
  public void setRenderMode(int paramInt)
  {
    if ((paramInt > 0) || (paramInt > 1)) {
      throw new IllegalArgumentException("renderMode");
    }
    synchronized (abl.wa())
    {
      this.bwt = paramInt;
      abl.wa().notifyAll();
      return;
    }
  }
  
  public boolean wi()
  {
    return (this.bwp) && (this.bwq) && (wj());
  }
  
  public void wk()
  {
    synchronized ()
    {
      this.bwm = true;
      this.bwr = false;
      abl.wa().notifyAll();
      while ((this.bwo) && (!this.bwr))
      {
        boolean bool = this.bwj;
        if (bool) {
          break;
        }
        try
        {
          abl.wa().wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
        }
      }
      return;
    }
  }
  
  public void wl()
  {
    synchronized ()
    {
      this.bwm = false;
      abl.wa().notifyAll();
      while (!this.bwo)
      {
        boolean bool = this.bwj;
        if (bool) {
          break;
        }
        try
        {
          abl.wa().wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
        }
      }
      return;
    }
  }
  
  public void wm()
  {
    synchronized ()
    {
      this.bwi = true;
      abl.wa().notifyAll();
      for (;;)
      {
        boolean bool = this.bwj;
        if (bool) {
          break;
        }
        try
        {
          abl.wa().wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
        }
      }
      return;
    }
  }
  
  public void wn()
  {
    this.bws = true;
    abl.wa().notifyAll();
  }
  
  public void ﹻ(int paramInt1, int paramInt2)
  {
    synchronized ()
    {
      this.bvd = paramInt1;
      this.γ = paramInt2;
      this.bwx = true;
      this.bwu = true;
      this.bwv = false;
      abl.wa().notifyAll();
      while ((!this.bwj) && (!this.bwl) && (!this.bwv))
      {
        boolean bool = wi();
        if (!bool) {
          break;
        }
        try
        {
          abl.wa().wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          Thread.currentThread().interrupt();
        }
      }
      return;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abl.Ê¼
 * JD-Core Version:    0.7.0.1
 */