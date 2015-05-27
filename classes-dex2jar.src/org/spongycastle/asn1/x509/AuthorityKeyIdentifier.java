package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

public class AuthorityKeyIdentifier
  extends ASN1Object
{
  ASN1OctetString ayl = null;
  GeneralNames aym = null;
  ASN1Integer ayn = null;
  
  protected AuthorityKeyIdentifier(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    while (paramASN1Sequence.hasMoreElements())
    {
      ASN1TaggedObject localASN1TaggedObject = DERTaggedObject.ʵ(paramASN1Sequence.nextElement());
      switch (localASN1TaggedObject.eW())
      {
      default: 
        break;
      case 0: 
        this.ayl = ASN1OctetString.ˏ(localASN1TaggedObject, false);
        break;
      case 1: 
        this.aym = GeneralNames.ˍ(localASN1TaggedObject, false);
        break;
      case 2: 
        this.ayn = ASN1Integer.ˋ(localASN1TaggedObject, false);
        break;
      }
      throw new IllegalArgumentException("illegal tag");
    }
  }
  
  public static AuthorityKeyIdentifier ᵘ(Object paramObject)
  {
    if ((paramObject instanceof AuthorityKeyIdentifier)) {
      return (AuthorityKeyIdentifier)paramObject;
    }
    if (paramObject != null) {
      return new AuthorityKeyIdentifier(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.ayl != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.ayl));
    }
    if (this.aym != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 1, this.aym));
    }
    if (this.ayn != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 2, this.ayn));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public byte[] gY()
  {
    if (this.ayl != null) {
      return this.ayl.eM();
    }
    return null;
  }
  
  public String toString()
  {
    return "AuthorityKeyIdentifier: KeyID(" + this.ayl.eM() + ")";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AuthorityKeyIdentifier
 * JD-Core Version:    0.7.0.1
 */