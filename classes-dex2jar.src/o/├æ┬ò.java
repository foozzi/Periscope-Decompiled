package o;

import java.util.Arrays;

public final class ѕ
  implements ʎ
{
  private int Aa;
  private ɢ[] Ab;
  private final int zY;
  private int zZ;
  
  public ѕ(int paramInt)
  {
    boolean bool;
    if (paramInt > 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.יּ(bool);
    this.zY = paramInt;
    this.Ab = new ɢ[100];
  }
  
  public void Ȉ(int paramInt)
  {
    try
    {
      paramInt = Math.max(0, ผ.Ꭵ(paramInt, this.zY) - this.zZ);
      if (paramInt < this.Aa)
      {
        Arrays.fill(this.Ab, paramInt, this.Aa, null);
        this.Aa = paramInt;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void ȋ(int paramInt)
  {
    try
    {
      while (ｱ() > paramInt) {
        wait();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void ˊ(ɢ paramɢ)
  {
    for (;;)
    {
      try
      {
        if (paramɢ.fw.length == this.zY)
        {
          bool = true;
          ړ.יּ(bool);
          this.zZ -= 1;
          if (this.Aa == this.Ab.length) {
            this.Ab = ((ɢ[])Arrays.copyOf(this.Ab, this.Ab.length * 2));
          }
          ɢ[] arrayOfɢ = this.Ab;
          int i = this.Aa;
          this.Aa = (i + 1);
          arrayOfɢ[i] = paramɢ;
          notifyAll();
          return;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
  
  public ɢ ｮ()
  {
    try
    {
      this.zZ += 1;
      Object localObject1;
      if (this.Aa > 0)
      {
        localObject1 = this.Ab;
        int i = this.Aa - 1;
        this.Aa = i;
        localObject1 = localObject1[i];
      }
      else
      {
        localObject1 = new ɢ(new byte[this.zY], 0);
      }
      return localObject1;
    }
    finally {}
  }
  
  public int ｱ()
  {
    try
    {
      int i = this.zZ;
      int j = this.zY;
      return i * j;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int ﾏ()
  {
    return this.zY;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ñ
 * JD-Core Version:    0.7.0.1
 */