package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x500.X500Name;

public class TBSCertificateStructure
  extends ASN1Object
  implements X509ObjectIdentifiers, PKCSObjectIdentifiers
{
  Time aAI;
  Time aAJ;
  SubjectPublicKeyInfo aAK;
  DERBitString aAL;
  DERBitString aAM;
  X509Extensions aAN;
  ASN1Integer aeY;
  ASN1Integer aek;
  ASN1Sequence agu;
  X500Name apZ;
  X500Name aps;
  AlgorithmIdentifier ayg;
  
  public TBSCertificateStructure(ASN1Sequence paramASN1Sequence)
  {
    int i = 0;
    this.agu = paramASN1Sequence;
    if ((paramASN1Sequence.ϲ(0) instanceof DERTaggedObject))
    {
      this.aek = ASN1Integer.ˋ((ASN1TaggedObject)paramASN1Sequence.ϲ(0), true);
    }
    else
    {
      i = -1;
      this.aek = new ASN1Integer(0L);
    }
    this.aeY = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(i + 1));
    this.ayg = AlgorithmIdentifier.ᓪ(paramASN1Sequence.ϲ(i + 2));
    this.aps = X500Name.ᒾ(paramASN1Sequence.ϲ(i + 3));
    Object localObject = (ASN1Sequence)paramASN1Sequence.ϲ(i + 4);
    this.aAI = Time.ᒃ(((ASN1Sequence)localObject).ϲ(0));
    this.aAJ = Time.ᒃ(((ASN1Sequence)localObject).ϲ(1));
    this.apZ = X500Name.ᒾ(paramASN1Sequence.ϲ(i + 5));
    this.aAK = SubjectPublicKeyInfo.ן(paramASN1Sequence.ϲ(i + 6));
    int j = paramASN1Sequence.size() - (i + 6) - 1;
    while (j > 0)
    {
      localObject = (DERTaggedObject)paramASN1Sequence.ϲ(i + 6 + j);
      switch (((DERTaggedObject)localObject).eW())
      {
      default: 
        break;
      case 1: 
        this.aAL = DERBitString.ʽ((ASN1TaggedObject)localObject, false);
        break;
      case 2: 
        this.aAM = DERBitString.ʽ((ASN1TaggedObject)localObject, false);
        break;
      case 3: 
        this.aAN = X509Extensions.ᕪ(localObject);
      }
      j -= 1;
    }
  }
  
  public static TBSCertificateStructure ہ(Object paramObject)
  {
    if ((paramObject instanceof TBSCertificateStructure)) {
      return (TBSCertificateStructure)paramObject;
    }
    if (paramObject != null) {
      return new TBSCertificateStructure(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    return this.agu;
  }
  
  public X500Name hf()
  {
    return this.aps;
  }
  
  public X500Name hi()
  {
    return this.apZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.TBSCertificateStructure
 * JD-Core Version:    0.7.0.1
 */