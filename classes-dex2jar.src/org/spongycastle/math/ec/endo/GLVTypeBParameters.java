package org.spongycastle.math.ec.endo;

import java.math.BigInteger;

public class GLVTypeBParameters
{
  protected final BigInteger aPL;
  protected final BigInteger aPM;
  protected final int aQE;
  protected final BigInteger bdt;
  protected final BigInteger bdu;
  protected final BigInteger[] bdv;
  protected final BigInteger[] bdw;
  
  public GLVTypeBParameters(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger[] paramArrayOfBigInteger1, BigInteger[] paramArrayOfBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4, int paramInt)
  {
    this.bdt = paramBigInteger1;
    this.bdu = paramBigInteger2;
    this.bdv = paramArrayOfBigInteger1;
    this.bdw = paramArrayOfBigInteger2;
    this.aPL = paramBigInteger3;
    this.aPM = paramBigInteger4;
    this.aQE = paramInt;
  }
  
  public BigInteger kr()
  {
    return this.aPL;
  }
  
  public BigInteger ks()
  {
    return this.aPM;
  }
  
  public BigInteger qm()
  {
    return this.bdt;
  }
  
  public BigInteger[] qn()
  {
    return this.bdv;
  }
  
  public BigInteger[] qo()
  {
    return this.bdw;
  }
  
  public int qp()
  {
    return this.aQE;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.endo.GLVTypeBParameters
 * JD-Core Version:    0.7.0.1
 */