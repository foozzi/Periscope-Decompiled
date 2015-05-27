package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x500.X500Name;

public class CertificateList
  extends ASN1Object
{
  AlgorithmIdentifier apX;
  int awi;
  DERBitString ayv;
  TBSCertList ayw;
  boolean ayx = false;
  
  public CertificateList(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() == 3)
    {
      this.ayw = TBSCertList.נ(paramASN1Sequence.ϲ(0));
      this.apX = AlgorithmIdentifier.ᓪ(paramASN1Sequence.ϲ(1));
      this.ayv = DERBitString.ʸ(paramASN1Sequence.ϲ(2));
      return;
    }
    throw new IllegalArgumentException("sequence wrong size for CertificateList");
  }
  
  public static CertificateList 丶(Object paramObject)
  {
    if ((paramObject instanceof CertificateList)) {
      return (CertificateList)paramObject;
    }
    if (paramObject != null) {
      return new CertificateList(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ayw);
    localASN1EncodableVector.ˊ(this.apX);
    localASN1EncodableVector.ˊ(this.ayv);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public int hashCode()
  {
    if (!this.ayx)
    {
      this.awi = super.hashCode();
      this.ayx = true;
    }
    return this.awi;
  }
  
  public int he()
  {
    return this.ayw.he();
  }
  
  public X500Name hf()
  {
    return this.ayw.hf();
  }
  
  public AlgorithmIdentifier hk()
  {
    return this.apX;
  }
  
  public DERBitString hl()
  {
    return this.ayv;
  }
  
  public TBSCertList hm()
  {
    return this.ayw;
  }
  
  public Enumeration hn()
  {
    return this.ayw.hn();
  }
  
  public Time ho()
  {
    return this.ayw.ho();
  }
  
  public Time hp()
  {
    return this.ayw.hp();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.CertificateList
 * JD-Core Version:    0.7.0.1
 */