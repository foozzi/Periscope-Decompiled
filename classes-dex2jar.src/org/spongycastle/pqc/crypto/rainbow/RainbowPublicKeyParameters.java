package org.spongycastle.pqc.crypto.rainbow;

public class RainbowPublicKeyParameters
  extends RainbowKeyParameters
{
  private short[][] bif;
  private short[][] big;
  private short[] bih;
  
  public RainbowPublicKeyParameters(int paramInt, short[][] paramArrayOfShort1, short[][] paramArrayOfShort2, short[] paramArrayOfShort)
  {
    super(false, paramInt);
    this.bif = paramArrayOfShort1;
    this.big = paramArrayOfShort2;
    this.bih = paramArrayOfShort;
  }
  
  public short[][] qE()
  {
    return this.bif;
  }
  
  public short[][] qF()
  {
    return this.big;
  }
  
  public short[] qG()
  {
    return this.bih;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.RainbowPublicKeyParameters
 * JD-Core Version:    0.7.0.1
 */