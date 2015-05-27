package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.KeySpec;

public class RainbowPublicKeySpec
  implements KeySpec
{
  private int bid;
  private short[][] bif;
  private short[][] big;
  private short[] bih;
  
  public RainbowPublicKeySpec(int paramInt, short[][] paramArrayOfShort1, short[][] paramArrayOfShort2, short[] paramArrayOfShort)
  {
    this.bid = paramInt;
    this.bif = paramArrayOfShort1;
    this.big = paramArrayOfShort2;
    this.bih = paramArrayOfShort;
  }
  
  public int qD()
  {
    return this.bid;
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
 * Qualified Name:     org.spongycastle.pqc.jcajce.spec.RainbowPublicKeySpec
 * JD-Core Version:    0.7.0.1
 */