package o;

public final class ｕ
  extends ঽ
{
  private volatile boolean tG;
  private final boolean wH;
  public final ἶ zl;
  private int zm;
  
  public ｕ(ϒ paramϒ, к paramк, int paramInt1, ব paramব, long paramLong1, long paramLong2, int paramInt2, boolean paramBoolean, ἶ paramἶ, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    super(ˊ(paramϒ, paramArrayOfByte1, paramArrayOfByte2), paramк, paramInt1, paramব, paramLong1, paramLong2, paramInt2, paramBoolean);
    this.zl = paramἶ;
    this.wH = (this.tF instanceof ȯ);
  }
  
  private static ϒ ˊ(ϒ paramϒ, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null)) {
      return paramϒ;
    }
    return new ȯ(paramϒ, paramArrayOfByte1, paramArrayOfByte2);
  }
  
  public long ব()
  {
    return this.zm;
  }
  
  public void ঽ()
  {
    this.tG = true;
  }
  
  public boolean ก()
  {
    return this.tG;
  }
  
  public void კ()
  {
    Object localObject1;
    int i;
    if (this.wH)
    {
      localObject1 = this.tE;
      if (this.zm != 0) {
        i = 1;
      } else {
        i = 0;
      }
    }
    else
    {
      localObject1 = ผ.ˊ(this.tE, this.zm);
      i = 0;
    }
    try
    {
      localObject1 = new ᐹ(this.tF, ((к)localObject1).zX, this.tF.ˊ((к)localObject1));
      if (i != 0) {
        ((ᒑ)localObject1).נ(this.zm);
      }
      i = 0;
      for (;;)
      {
        if (i == 0) {}
        try
        {
          if (!this.tG) {
            i = this.zl.ˋ((ᒑ)localObject1);
          } else {
            this.zm = ((int)(((ᒑ)localObject1).getPosition() - this.tE.zX));
          }
        }
        finally
        {
          this.zm = ((int)(((ᒑ)localObject1).getPosition() - this.tE.zX));
        }
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
 * Qualified Name:     o.ï½
 * JD-Core Version:    0.7.0.1
 */