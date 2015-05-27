package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

public class AttributeCertificateInfo
  extends ASN1Object
{
  private ASN1Integer aeY;
  private ASN1Integer aek;
  private Extensions ahV;
  private Holder aye;
  private AttCertIssuer ayf;
  private AlgorithmIdentifier ayg;
  private AttCertValidityPeriod ayh;
  private ASN1Sequence ayi;
  private DERBitString ayj;
  
  private AttributeCertificateInfo(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() < 6) || (paramASN1Sequence.size() > 9)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    int i;
    if ((paramASN1Sequence.ϲ(0) instanceof ASN1Integer))
    {
      this.aek = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0));
      i = 1;
    }
    else
    {
      this.aek = new ASN1Integer(0L);
      i = 0;
    }
    this.aye = Holder.İ(paramASN1Sequence.ϲ(i));
    this.ayf = AttCertIssuer.ᓫ(paramASN1Sequence.ϲ(i + 1));
    this.ayg = AlgorithmIdentifier.ᓪ(paramASN1Sequence.ϲ(i + 2));
    this.aeY = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(i + 3));
    this.ayh = AttCertValidityPeriod.ᔾ(paramASN1Sequence.ϲ(i + 4));
    this.ayi = ASN1Sequence.ﹾ(paramASN1Sequence.ϲ(i + 5));
    i += 6;
    while (i < paramASN1Sequence.size())
    {
      ASN1Encodable localASN1Encodable = paramASN1Sequence.ϲ(i);
      if ((localASN1Encodable instanceof DERBitString)) {
        this.ayj = DERBitString.ʸ(paramASN1Sequence.ϲ(i));
      } else if (((localASN1Encodable instanceof ASN1Sequence)) || ((localASN1Encodable instanceof Extensions))) {
        this.ahV = Extensions.ﺗ(paramASN1Sequence.ϲ(i));
      }
      i += 1;
    }
  }
  
  public static AttributeCertificateInfo ᵒ(Object paramObject)
  {
    if ((paramObject instanceof AttributeCertificateInfo)) {
      return (AttributeCertificateInfo)paramObject;
    }
    if (paramObject != null) {
      return new AttributeCertificateInfo(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aek.eA().intValue() != 0) {
      localASN1EncodableVector.ˊ(this.aek);
    }
    localASN1EncodableVector.ˊ(this.aye);
    localASN1EncodableVector.ˊ(this.ayf);
    localASN1EncodableVector.ˊ(this.ayg);
    localASN1EncodableVector.ˊ(this.aeY);
    localASN1EncodableVector.ˊ(this.ayh);
    localASN1EncodableVector.ˊ(this.ayi);
    if (this.ayj != null) {
      localASN1EncodableVector.ˊ(this.ayj);
    }
    if (this.ahV != null) {
      localASN1EncodableVector.ˊ(this.ahV);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public Holder gS()
  {
    return this.aye;
  }
  
  public AttCertIssuer gT()
  {
    return this.ayf;
  }
  
  public ASN1Integer gU()
  {
    return this.aeY;
  }
  
  public AttCertValidityPeriod gV()
  {
    return this.ayh;
  }
  
  public ASN1Sequence gW()
  {
    return this.ayi;
  }
  
  public Extensions gX()
  {
    return this.ahV;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AttributeCertificateInfo
 * JD-Core Version:    0.7.0.1
 */