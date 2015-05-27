package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class NaccacheSternKeyParameters
  extends AsymmetricKeyParameter
{
  private BigInteger aDB;
  private BigInteger aFB;
  int aQA;
  
  public NaccacheSternKeyParameters(boolean paramBoolean, BigInteger paramBigInteger1, BigInteger paramBigInteger2, int paramInt)
  {
    super(paramBoolean);
    this.aFB = paramBigInteger1;
    this.aDB = paramBigInteger2;
    this.aQA = paramInt;
  }
  
  public BigInteger getG()
  {
    return this.aFB;
  }
  
  public BigInteger getModulus()
  {
    return this.aDB;
  }
  
  public int le()
  {
    return this.aQA;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.NaccacheSternKeyParameters
 * JD-Core Version:    0.7.0.1
 */