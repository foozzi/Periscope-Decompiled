package o;

import java.util.Arrays;

public abstract class ঢ
  extends र
{
  private byte[] fw;
  private int limit;
  private volatile boolean tG;
  
  public ঢ(ϒ paramϒ, к paramк, int paramInt1, int paramInt2, ব paramব, byte[] paramArrayOfByte)
  {
    super(paramϒ, paramк, paramInt1, paramInt2, paramব);
    this.fw = paramArrayOfByte;
  }
  
  private void ᐯ()
  {
    if (this.fw == null)
    {
      this.fw = new byte[16384];
      return;
    }
    if (this.fw.length < this.limit + 16384) {
      this.fw = Arrays.copyOf(this.fw, this.fw.length + 16384);
    }
  }
  
  protected abstract void ˊ(byte[] paramArrayOfByte, int paramInt);
  
  public long ব()
  {
    return this.limit;
  }
  
  public byte[] শ()
  {
    return this.fw;
  }
  
  public final void ঽ()
  {
    this.tG = true;
  }
  
  public final boolean ก()
  {
    return this.tG;
  }
  
  public final void კ()
  {
    try
    {
      this.tF.ˊ(this.tE);
      this.limit = 0;
      int i = 0;
      while ((i != -1) && (!this.tG))
      {
        ᐯ();
        int j = this.tF.read(this.fw, this.limit, 16384);
        i = j;
        if (j != -1)
        {
          this.limit += j;
          i = j;
        }
      }
      if (!this.tG) {
        ˊ(this.fw, this.limit);
      }
      return;
    }
    finally
    {
      this.tF.close();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¦¢
 * JD-Core Version:    0.7.0.1
 */