package o;

import android.os.Handler;

public class ӧ
  implements ʭ
{
  private final ʭ.if Ac;
  private final ڽ Ad;
  private final ৰ Ae;
  private long Af;
  private long Ag;
  private long Ah;
  private int Ai;
  private final Handler qK;
  
  public ӧ()
  {
    this(null, null);
  }
  
  public ӧ(Handler paramHandler, ʭ.if paramif)
  {
    this(paramHandler, paramif, new ถ());
  }
  
  public ӧ(Handler paramHandler, ʭ.if paramif, ڽ paramڽ)
  {
    this(paramHandler, paramif, paramڽ, 2000);
  }
  
  public ӧ(Handler paramHandler, ʭ.if paramif, ڽ paramڽ, int paramInt)
  {
    this.qK = paramHandler;
    this.Ac = paramif;
    this.Ad = paramڽ;
    this.Ae = new ৰ(paramInt);
    this.Ah = -1L;
  }
  
  private void ˎ(int paramInt, long paramLong1, long paramLong2)
  {
    if ((this.qK != null) && (this.Ac != null)) {
      this.qK.post(new ӭ(this, paramInt, paramLong1, paramLong2));
    }
  }
  
  public void ĉ()
  {
    try
    {
      if (this.Ai == 0) {
        this.Ag = this.Ad.elapsedRealtime();
      }
      this.Ai += 1;
      return;
    }
    finally {}
  }
  
  public void č()
  {
    for (;;)
    {
      float f;
      try
      {
        if (this.Ai > 0)
        {
          bool = true;
          ړ.ᐟ(bool);
          long l2 = this.Ad.elapsedRealtime();
          int i = (int)(l2 - this.Ag);
          if (i > 0)
          {
            f = (float)(this.Af * 8000L / i);
            this.Ae.ˎ((int)Math.sqrt(this.Af), f);
            f = this.Ae.ﹳ(0.5F);
            if (!Float.isNaN(f)) {
              break label159;
            }
            l1 = -1L;
            this.Ah = l1;
            ˎ(i, this.Af, this.Ah);
          }
          this.Ai -= 1;
          if (this.Ai > 0) {
            this.Ag = l2;
          }
          this.Af = 0L;
          return;
        }
      }
      finally {}
      boolean bool = false;
      continue;
      label159:
      long l1 = f;
    }
  }
  
  public void ɨ(int paramInt)
  {
    try
    {
      this.Af += paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long ﾗ()
  {
    try
    {
      long l = this.Ah;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ó§
 * JD-Core Version:    0.7.0.1
 */