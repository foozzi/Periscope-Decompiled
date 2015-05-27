package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class RSAESOAEPparams
  extends ASN1Object
{
  public static final AlgorithmIdentifier asN = new AlgorithmIdentifier(OIWObjectIdentifiers.apM, DERNull.abj);
  public static final AlgorithmIdentifier asO = new AlgorithmIdentifier(PKCSObjectIdentifiers.aqw, asN);
  public static final AlgorithmIdentifier asP = new AlgorithmIdentifier(PKCSObjectIdentifiers.aqx, new DEROctetString(new byte[0]));
  private AlgorithmIdentifier akB;
  private AlgorithmIdentifier asL;
  private AlgorithmIdentifier asM;
  
  public RSAESOAEPparams()
  {
    this.akB = asN;
    this.asL = asO;
    this.asM = asP;
  }
  
  public RSAESOAEPparams(ASN1Sequence paramASN1Sequence)
  {
    this.akB = asN;
    this.asL = asO;
    this.asM = asP;
    int i = 0;
    while (i != paramASN1Sequence.size())
    {
      ASN1TaggedObject localASN1TaggedObject = (ASN1TaggedObject)paramASN1Sequence.ϲ(i);
      switch (localASN1TaggedObject.eW())
      {
      default: 
        break;
      case 0: 
        this.akB = AlgorithmIdentifier.ʿ(localASN1TaggedObject, true);
        break;
      case 1: 
        this.asL = AlgorithmIdentifier.ʿ(localASN1TaggedObject, true);
        break;
      case 2: 
        this.asM = AlgorithmIdentifier.ʿ(localASN1TaggedObject, true);
        break;
      }
      throw new IllegalArgumentException("unknown tag");
      i += 1;
    }
  }
  
  public RSAESOAEPparams(AlgorithmIdentifier paramAlgorithmIdentifier1, AlgorithmIdentifier paramAlgorithmIdentifier2, AlgorithmIdentifier paramAlgorithmIdentifier3)
  {
    this.akB = paramAlgorithmIdentifier1;
    this.asL = paramAlgorithmIdentifier2;
    this.asM = paramAlgorithmIdentifier3;
  }
  
  public static RSAESOAEPparams ﹼ(Object paramObject)
  {
    if ((paramObject instanceof RSAESOAEPparams)) {
      return (RSAESOAEPparams)paramObject;
    }
    if (paramObject != null) {
      return new RSAESOAEPparams(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (!this.akB.equals(asN)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 0, this.akB));
    }
    if (!this.asL.equals(asO)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 1, this.asL));
    }
    if (!this.asM.equals(asP)) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(true, 2, this.asM));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public AlgorithmIdentifier ga()
  {
    return this.akB;
  }
  
  public AlgorithmIdentifier gb()
  {
    return this.asL;
  }
  
  public AlgorithmIdentifier gd()
  {
    return this.asM;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.RSAESOAEPparams
 * JD-Core Version:    0.7.0.1
 */