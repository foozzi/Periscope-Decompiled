package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

public class SubjectPublicKeyInfo
  extends ASN1Object
{
  private DERBitString aAA;
  private AlgorithmIdentifier agJ;
  
  public SubjectPublicKeyInfo(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() != 2) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    paramASN1Sequence = paramASN1Sequence.eT();
    this.agJ = AlgorithmIdentifier.ᓪ(paramASN1Sequence.nextElement());
    this.aAA = DERBitString.ʸ(paramASN1Sequence.nextElement());
  }
  
  public SubjectPublicKeyInfo(AlgorithmIdentifier paramAlgorithmIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.aAA = new DERBitString(paramASN1Encodable);
    this.agJ = paramAlgorithmIdentifier;
  }
  
  public SubjectPublicKeyInfo(AlgorithmIdentifier paramAlgorithmIdentifier, byte[] paramArrayOfByte)
  {
    this.aAA = new DERBitString(paramArrayOfByte);
    this.agJ = paramAlgorithmIdentifier;
  }
  
  public static SubjectPublicKeyInfo ן(Object paramObject)
  {
    if ((paramObject instanceof SubjectPublicKeyInfo)) {
      return (SubjectPublicKeyInfo)paramObject;
    }
    if (paramObject != null) {
      return new SubjectPublicKeyInfo(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.agJ);
    localASN1EncodableVector.ˊ(this.aAA);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public AlgorithmIdentifier fX()
  {
    return this.agJ;
  }
  
  public AlgorithmIdentifier hU()
  {
    return this.agJ;
  }
  
  public ASN1Primitive hV()
  {
    return new ASN1InputStream(this.aAA.getBytes()).eH();
  }
  
  public DERBitString hW()
  {
    return this.aAA;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.SubjectPublicKeyInfo
 * JD-Core Version:    0.7.0.1
 */