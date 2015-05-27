package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.BERSequence;
import org.spongycastle.asn1.BERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptedData
  extends ASN1Object
{
  ASN1Sequence aqc;
  
  public EncryptedData(ASN1ObjectIdentifier paramASN1ObjectIdentifier, AlgorithmIdentifier paramAlgorithmIdentifier, ASN1Encodable paramASN1Encodable)
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(paramASN1ObjectIdentifier);
    localASN1EncodableVector.ˊ(paramAlgorithmIdentifier.ez());
    localASN1EncodableVector.ˊ(new BERTaggedObject(false, 0, paramASN1Encodable));
    this.aqc = new BERSequence(localASN1EncodableVector);
  }
  
  private EncryptedData(ASN1Sequence paramASN1Sequence)
  {
    if (((ASN1Integer)paramASN1Sequence.ϲ(0)).eA().intValue() != 0) {
      throw new IllegalArgumentException("sequence not version 0");
    }
    this.aqc = ASN1Sequence.ﹾ(paramASN1Sequence.ϲ(1));
  }
  
  public static EncryptedData ᕑ(Object paramObject)
  {
    if ((paramObject instanceof EncryptedData)) {
      return (EncryptedData)paramObject;
    }
    if (paramObject != null) {
      return new EncryptedData(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(0L));
    localASN1EncodableVector.ˊ(this.aqc);
    return new BERSequence(localASN1EncodableVector);
  }
  
  public AlgorithmIdentifier fI()
  {
    return AlgorithmIdentifier.ᓪ(this.aqc.ϲ(1));
  }
  
  public ASN1OctetString fJ()
  {
    if (this.aqc.size() == 3) {
      return ASN1OctetString.ˏ(ASN1TaggedObject.ʵ(this.aqc.ϲ(2)), false);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.EncryptedData
 * JD-Core Version:    0.7.0.1
 */