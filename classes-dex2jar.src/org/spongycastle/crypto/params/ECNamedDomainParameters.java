package org.spongycastle.crypto.params;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

public class ECNamedDomainParameters
  extends ECDomainParameters
{
  private ASN1ObjectIdentifier axs;
  
  public ECNamedDomainParameters(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte)
  {
    super(paramECCurve, paramECPoint, paramBigInteger1, paramBigInteger2, paramArrayOfByte);
    this.axs = paramASN1ObjectIdentifier;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ECNamedDomainParameters
 * JD-Core Version:    0.7.0.1
 */