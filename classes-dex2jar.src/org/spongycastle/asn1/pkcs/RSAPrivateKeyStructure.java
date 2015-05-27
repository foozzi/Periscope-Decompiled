package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class RSAPrivateKeyStructure
  extends ASN1Object
{
  private BigInteger ajI;
  private BigInteger asR;
  private BigInteger asS;
  private BigInteger asT;
  private BigInteger asU;
  private BigInteger asV;
  private BigInteger asW;
  private BigInteger asX;
  private ASN1Sequence asY;
  private int version;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(this.version));
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
 * Qualified Name:     org.spongycastle.asn1.pkcs.RSAPrivateKeyStructure
 * JD-Core Version:    0.7.0.1
 */