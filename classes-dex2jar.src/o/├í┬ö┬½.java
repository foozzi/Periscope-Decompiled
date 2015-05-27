package o;

final class ᔫ
  extends ᚁ
{
  private long sJ;
  private int state = 0;
  private int tH;
  private final ন wM = new ন(new byte[8]);
  private final প wN = new প(this.wM.fw);
  private int wO;
  private boolean wP;
  private long wQ;
  private ب wk;
  private int ww;
  
  public ᔫ(ᒳ paramᒳ)
  {
    super(paramᒳ);
  }
  
  private boolean ˊ(প paramপ, byte[] paramArrayOfByte, int paramInt)
  {
    int i = Math.min(paramপ.ϋ(), paramInt - this.wO);
    paramপ.ι(paramArrayOfByte, this.wO, i);
    this.wO += i;
    return this.wO == paramInt;
  }
  
  private boolean ᐝ(প paramপ)
  {
    while (paramপ.ϋ() > 0)
    {
      boolean bool;
      if (!this.wP)
      {
        if (paramপ.readUnsignedByte() == 11) {
          bool = true;
        } else {
          bool = false;
        }
        this.wP = bool;
      }
      else
      {
        int i = paramপ.readUnsignedByte();
        if (i == 119)
        {
          this.wP = false;
          return true;
        }
        if (i == 11) {
          bool = true;
        } else {
          bool = false;
        }
        this.wP = bool;
      }
    }
    return false;
  }
  
  private void Ḻ()
  {
    this.wM.setPosition(0);
    this.ww = ٻ.ˋ(this.wM);
    if (this.wk == null)
    {
      this.wM.setPosition(0);
      this.wk = ٻ.ˊ(this.wM);
      this.wZ.ˊ(this.wk);
      this.tH = ٻ.เ(this.ww, this.wk.sF);
    }
    this.wQ = ((int)(this.ww * 8000L / this.tH));
  }
  
  public void ˊ(প paramপ, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {
      this.sJ = paramLong;
    }
    while (paramপ.ϋ() > 0) {
      switch (this.state)
      {
      default: 
        break;
      case 0: 
        if (ᐝ(paramপ))
        {
          this.state = 1;
          this.wN.fw[0] = 11;
          this.wN.fw[1] = 119;
          this.wO = 2;
        }
        break;
      case 1: 
        if (ˊ(paramপ, this.wN.fw, 8))
        {
          Ḻ();
          this.wN.setPosition(0);
          this.wZ.ˊ(this.wN, 8);
          this.state = 2;
        }
        break;
      case 2: 
        int i = Math.min(paramপ.ϋ(), this.ww - this.wO);
        this.wZ.ˊ(paramপ, i);
        this.wO += i;
        if (this.wO == this.ww)
        {
          this.wZ.ˊ(this.sJ, 1, this.ww, 0, null);
          this.sJ += this.wQ;
          this.state = 0;
        }
        break;
      }
    }
  }
  
  public void ᒮ()
  {
    this.state = 0;
    this.wO = 0;
    this.wP = false;
  }
  
  public void ᴫ() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á«
 * JD-Core Version:    0.7.0.1
 */