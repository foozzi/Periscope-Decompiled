package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class RSAPrivateKey
  extends ASN1Object
{
  private BigInteger ajI;
  private BigInteger asQ;
  private BigInteger asR;
  private BigInteger asS;
  private BigInteger asT;
  private BigInteger asU;
  private BigInteger asV;
  private BigInteger asW;
  private BigInteger asX;
  private ASN1Sequence asY = null;
  
  public RSAPrivateKey(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3, BigInteger paramBigInteger4, BigInteger paramBigInteger5, BigInteger paramBigInteger6, BigInteger paramBigInteger7, BigInteger paramBigInteger8)
  {
    this.asQ = BigInteger.valueOf(0L);
    this.ajI = paramBigInteger1;
    this.asR = paramBigInteger2;
    this.asS = paramBigInteger3;
    this.asT = paramBigInteger4;
    this.asU = paramBigInteger5;
    this.asV = paramBigInteger6;
    this.asW = paramBigInteger7;
    this.asX = paramBigInteger8;
  }
  
  private RSAPrivateKey(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    BigInteger localBigInteger = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    if ((localBigInteger.intValue() != 0) && (localBigInteger.intValue() != 1)) {
      throw new IllegalArgumentException("wrong version for RSA private key");
    }
    this.asQ = localBigInteger;
    this.ajI = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    this.asR = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    this.asS = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    this.asT = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    this.asU = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    this.asV = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    this.asW = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    this.asX = ((ASN1Integer)paramASN1Sequence.nextElement()).eA();
    if (paramASN1Sequence.hasMoreElements()) {
      this.asY = ((ASN1Sequence)paramASN1Sequence.nextElement());
    }
  }
  
  public static RSAPrivateKey ﺑ(Object paramObject)
  {
    if ((paramObject instanceof RSAPrivateKey)) {
      return (RSAPrivateKey)paramObject;
    }
    if (paramObject != null) {
      return new RSAPrivateKey(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(this.asQ));
    localASN1EncodableVector.ˊ(new ASN1Integer(getModulus()));
    localASN1EncodableVector.ˊ(new ASN1Integer(getPublicExponent()));
    localASN1EncodableVector.ˊ(new ASN1Integer(getPrivateExponent()));
    localASN1EncodableVector.ˊ(new ASN1Integer(ge()));
    localASN1EncodableVector.ˊ(new ASN1Integer(gf()));
    localASN1EncodableVector.ˊ(new ASN1Integer(gg()));
    localASN1EncodableVector.ˊ(new ASN1Integer(gh()));
    localASN1EncodableVector.ˊ(new ASN1Integer(gi()));
    if (this.asY != null) {
      localASN1EncodableVector.ˊ(this.asY);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger ge()
  {
    return this.asT;
  }
  
  public BigInteger getModulus()
  {
    return this.ajI;
  }
  
  public BigInteger getPrivateExponent()
  {
    return this.asS;
  }
  
  public BigInteger getPublicExponent()
  {
    return this.asR;
  }
  
  public BigInteger gf()
  {
    return this.asU;
  }
  
  public BigInteger gg()
  {
    return this.asV;
  }
  
  public BigInteger gh()
  {
    return this.asW;
  }
  
  public BigInteger gi()
  {
    return this.asX;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.RSAPrivateKey
 * JD-Core Version:    0.7.0.1
 */