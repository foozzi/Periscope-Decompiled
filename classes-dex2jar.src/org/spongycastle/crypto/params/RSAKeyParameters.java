package org.spongycastle.crypto.params;

import java.math.BigInteger;

public class RSAKeyParameters
  extends AsymmetricKeyParameter
{
  private BigInteger ajI;
  private BigInteger ajJ;
  
  public RSAKeyParameters(boolean paramBoolean, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    super(paramBoolean);
    this.ajI = paramBigInteger1;
    this.ajJ = paramBigInteger2;
  }
  
  public BigInteger getExponent()
  {
    return this.ajJ;
  }
  
  public BigInteger getModulus()
  {
    return this.ajI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.RSAKeyParameters
 * JD-Core Version:    0.7.0.1
 */