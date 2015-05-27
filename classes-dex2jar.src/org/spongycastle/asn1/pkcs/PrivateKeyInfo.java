package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class PrivateKeyInfo
  extends ASN1Object
{
  private ASN1Set aej;
  private AlgorithmIdentifier agJ;
  private ASN1OctetString asK;
  
  public PrivateKeyInfo(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    if (((ASN1Integer)paramASN1Sequence.nextElement()).eA().intValue() != 0) {
      throw new IllegalArgumentException("wrong version for private key info");
    }
    this.agJ = AlgorithmIdentifier.ᓪ(paramASN1Sequence.nextElement());
    this.asK = ASN1OctetString.ﹸ(paramASN1Sequence.nextElement());
    if (paramASN1Sequence.hasMoreElements()) {
      this.aej = ASN1Set.ʻ((ASN1TaggedObject)paramASN1Sequence.nextElement(), false);
    }
  }
  
  public PrivateKeyInfo(AlgorithmIdentifier paramAlgorithmIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this(paramAlgorithmIdentifier, paramASN1Encodable, null);
  }
  
  public PrivateKeyInfo(AlgorithmIdentifier paramAlgorithmIdentifier, ASN1Encodable paramASN1Encodable, ASN1Set paramASN1Set)
  {
    this.asK = new DEROctetString(paramASN1Encodable.ez().getEncoded("DER"));
    this.agJ = paramAlgorithmIdentifier;
    this.aej = paramASN1Set;
  }
  
  public static PrivateKeyInfo ﹷ(Object paramObject)
  {
    if ((paramObject instanceof PrivateKeyInfo)) {
      return (PrivateKeyInfo)paramObject;
    }
    if (paramObject != null) {
      return new PrivateKeyInfo(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(0L));
    localASN1EncodableVector.ˊ(this.agJ);
    localASN1EncodableVector.ˊ(this.asK);
    if (this.aej != null) {
      localASN1EncodableVector.ˊ(new DERTaggedObject(false, 0, this.aej));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public AlgorithmIdentifier fW()
  {
    return this.agJ;
  }
  
  public AlgorithmIdentifier fX()
  {
    return this.agJ;
  }
  
  public ASN1Encodable fY()
  {
    return ASN1Primitive.ՙ(this.asK.eM());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.PrivateKeyInfo
 * JD-Core Version:    0.7.0.1
 */