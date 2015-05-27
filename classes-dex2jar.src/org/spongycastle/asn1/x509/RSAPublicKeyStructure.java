package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class RSAPublicKeyStructure
  extends ASN1Object
{
  private BigInteger ajI;
  private BigInteger asR;
  
  public RSAPublicKeyStructure(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this.ajI = paramBigInteger1;
    this.asR = paramBigInteger2;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(getModulus()));
    localASN1EncodableVector.ˊ(new ASN1Integer(getPublicExponent()));
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger getModulus()
  {
    return this.ajI;
  }
  
  public BigInteger getPublicExponent()
  {
    return this.asR;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.RSAPublicKeyStructure
 * JD-Core Version:    0.7.0.1
 */