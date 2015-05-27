package org.spongycastle.asn1.eac;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class RSAPublicKey
  extends PublicKeyDataObject
{
  private static int ajK = 1;
  private static int ajL = 2;
  private BigInteger ajI;
  private BigInteger ajJ;
  private ASN1ObjectIdentifier ajy;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ajy);
    localASN1EncodableVector.ˊ(new UnsignedInteger(1, getModulus()));
    localASN1EncodableVector.ˊ(new UnsignedInteger(2, getPublicExponent()));
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger getModulus()
  {
    return this.ajI;
  }
  
  public BigInteger getPublicExponent()
  {
    return this.ajJ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.RSAPublicKey
 * JD-Core Version:    0.7.0.1
 */