package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERSequence;

public class AlgorithmIdentifier
  extends ASN1Object
{
  private ASN1ObjectIdentifier aqj;
  private ASN1Encodable auI;
  private boolean axY = false;
  
  public AlgorithmIdentifier(String paramString)
  {
    this.aqj = new ASN1ObjectIdentifier(paramString);
  }
  
  public AlgorithmIdentifier(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    this.aqj = paramASN1ObjectIdentifier;
  }
  
  public AlgorithmIdentifier(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.axY = true;
    this.aqj = paramASN1ObjectIdentifier;
    this.auI = paramASN1Encodable;
  }
  
  public AlgorithmIdentifier(ASN1Sequence paramASN1Sequence)
  {
    if ((paramASN1Sequence.size() < 1) || (paramASN1Sequence.size() > 2)) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.aqj = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
    if (paramASN1Sequence.size() == 2)
    {
      this.axY = true;
      this.auI = paramASN1Sequence.ϲ(1);
      return;
    }
    this.auI = null;
  }
  
  public static AlgorithmIdentifier ʿ(ASN1TaggedObject paramASN1TaggedObject, boolean paramBoolean)
  {
    return ᓪ(ASN1Sequence.ᐝ(paramASN1TaggedObject, paramBoolean));
  }
  
  public static AlgorithmIdentifier ᓪ(Object paramObject)
  {
    if ((paramObject == null) || ((paramObject instanceof AlgorithmIdentifier))) {
      return (AlgorithmIdentifier)paramObject;
    }
    if ((paramObject instanceof ASN1ObjectIdentifier)) {
      return new AlgorithmIdentifier((ASN1ObjectIdentifier)paramObject);
    }
    if ((paramObject instanceof String)) {
      return new AlgorithmIdentifier((String)paramObject);
    }
    return new AlgorithmIdentifier(ASN1Sequence.ﹾ(paramObject));
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aqj);
    if (this.axY) {
      if (this.auI != null) {
        localASN1EncodableVector.ˊ(this.auI);
      } else {
        localASN1EncodableVector.ˊ(DERNull.abj);
      }
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier fK()
  {
    return new ASN1ObjectIdentifier(this.aqj.getId());
  }
  
  public ASN1Encodable fL()
  {
    return this.auI;
  }
  
  public ASN1ObjectIdentifier fO()
  {
    return this.aqj;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.AlgorithmIdentifier
 * JD-Core Version:    0.7.0.1
 */