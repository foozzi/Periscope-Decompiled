package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class RSAPublicKey
  extends ASN1Object
{
  private BigInteger ajI;
  private BigInteger asR;
  
  public RSAPublicKey(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this.ajI = paramBigInteger1;
    this.asR = paramBigInteger2;
  }
  
  private RSAPublicKey(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() != 2) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    paramASN1Sequence = paramASN1Sequence.eT();
    this.ajI = ASN1Integer.ﯨ(paramASN1Sequence.nextElement()).eI();
    this.asR = ASN1Integer.ﯨ(paramASN1Sequence.nextElement()).eI();
  }
  
  public static RSAPublicKey ﻧ(Object paramObject)
  {
    if ((paramObject instanceof RSAPublicKey)) {
      return (RSAPublicKey)paramObject;
    }
    if (paramObject != null) {
      return new RSAPublicKey(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
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
 * Qualified Name:     org.spongycastle.asn1.pkcs.RSAPublicKey
 * JD-Core Version:    0.7.0.1
 */