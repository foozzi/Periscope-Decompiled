package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

public class ECParameterSpec
  implements AlgorithmParameterSpec
{
  private BigInteger aDB;
  private BigInteger aDC;
  private ECCurve aDw;
  private byte[] aDx;
  private ECPoint aQd;
  
  public ECParameterSpec(ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    this.aDw = paramECCurve;
    this.aQd = paramECPoint.pQ();
    this.aDB = paramBigInteger;
    this.aDC = BigInteger.valueOf(1L);
    this.aDx = null;
  }
  
  public ECParameterSpec(ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte)
  {
    this.aDw = paramECCurve;
    this.aQd = paramECPoint.pQ();
    this.aDB = paramBigInteger1;
    this.aDC = paramBigInteger2;
    this.aDx = paramArrayOfByte;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ECParameterSpec)) {
      return false;
    }
    paramObject = (ECParameterSpec)paramObject;
    return (iv().ʼ(paramObject.iv())) && (iw().ʻ(paramObject.iw()));
  }
  
  public byte[] getSeed()
  {
    return this.aDx;
  }
  
  public BigInteger gy()
  {
    return this.aDB;
  }
  
  public int hashCode()
  {
    return iv().hashCode() ^ iw().hashCode();
  }
  
  public ECCurve iv()
  {
    return this.aDw;
  }
  
  public ECPoint iw()
  {
    return this.aQd;
  }
  
  public BigInteger ix()
  {
    return this.aDC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ECParameterSpec
 * JD-Core Version:    0.7.0.1
 */