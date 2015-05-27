package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.Arrays;

public class ECDomainParameters
  implements ECConstants
{
  private BigInteger aDB;
  private BigInteger aDC;
  private ECCurve aDw;
  private byte[] aDx;
  private ECPoint aQd;
  
  public ECDomainParameters(ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger)
  {
    this(paramECCurve, paramECPoint, paramBigInteger, ONE, null);
  }
  
  public ECDomainParameters(ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this(paramECCurve, paramECPoint, paramBigInteger1, paramBigInteger2, null);
  }
  
  public ECDomainParameters(ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte)
  {
    this.aDw = paramECCurve;
    this.aQd = paramECPoint.pQ();
    this.aDB = paramBigInteger1;
    this.aDC = paramBigInteger2;
    this.aDx = paramArrayOfByte;
  }
  
  public byte[] getSeed()
  {
    return Arrays.І(this.aDx);
  }
  
  public BigInteger gy()
  {
    return this.aDB;
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
 * Qualified Name:     org.spongycastle.crypto.params.ECDomainParameters
 * JD-Core Version:    0.7.0.1
 */