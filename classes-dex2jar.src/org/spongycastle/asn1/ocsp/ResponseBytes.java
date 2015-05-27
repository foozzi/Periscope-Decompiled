package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;

public class ResponseBytes
  extends ASN1Object
{
  ASN1ObjectIdentifier apj;
  ASN1OctetString apk;
  
  public ResponseBytes(ASN1Sequence paramASN1Sequence)
  {
    this.apj = ((ASN1ObjectIdentifier)paramASN1Sequence.ϲ(0));
    this.apk = ((ASN1OctetString)paramASN1Sequence.ϲ(1));
  }
  
  public static ResponseBytes ᒻ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof ResponseBytes))) {
      return (ResponseBytes)paramObject;
    }
    if ((paramObject instanceof ASN1Sequence)) {
      return new ResponseBytes((ASN1Sequence)paramObject);
    }
    throw new IllegalArgumentException("unknown object in factory: " + paramObject.getClass().getName());
  }
  
  public static ResponseBytes ι(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ᒻ(ASN1Sequence.ᐝ(paramASN1TaggedObject, paramBoolean));
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.apj);
    localASN1EncodableVector.ˊ(this.apk);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ocsp.ResponseBytes
 * JD-Core Version:    0.7.0.1
 */