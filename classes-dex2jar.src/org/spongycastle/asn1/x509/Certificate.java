package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.x500.X500Name;

public class Certificate
  extends ASN1Object
{
  ASN1Sequence agu;
  AlgorithmIdentifier apX;
  TBSCertificate ayu;
  DERBitString ayv;
  
  private Certificate(ASN1Sequence paramASN1Sequence)
  {
    this.agu = paramASN1Sequence;
    if (paramASN1Sequence.size() == 3)
    {
      this.ayu = TBSCertificate.د(paramASN1Sequence.ϲ(0));
      this.apX = AlgorithmIdentifier.ᓪ(paramASN1Sequence.ϲ(1));
      this.ayv = DERBitString.ʸ(paramASN1Sequence.ϲ(2));
      return;
    }
    throw new IllegalArgumentException("sequence wrong size for a certificate");
  }
  
  public static Certificate ˈ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ⅰ(ASN1Sequence.ᐝ(paramASN1TaggedObject, paramBoolean));
  }
  
  public static Certificate ⅰ(Object paramObject)
  {
    if ((paramObject instanceof Certificate)) {
      return (Certificate)paramObject;
    }
    if (paramObject != null) {
      return new Certificate(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.agu;
  }
  
  public ASN1Integer gU()
  {
    return this.ayu.gU();
  }
  
  public TBSCertificate hd()
  {
    return this.ayu;
  }
  
  public int he()
  {
    return this.ayu.he();
  }
  
  public X500Name hf()
  {
    return this.ayu.hf();
  }
  
  public Time hg()
  {
    return this.ayu.hg();
  }
  
  public Time hh()
  {
    return this.ayu.hh();
  }
  
  public X500Name hi()
  {
    return this.ayu.hi();
  }
  
  public SubjectPublicKeyInfo hj()
  {
    return this.ayu.hj();
  }
  
  public AlgorithmIdentifier hk()
  {
    return this.apX;
  }
  
  public DERBitString hl()
  {
    return this.ayv;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.Certificate
 * JD-Core Version:    0.7.0.1
 */