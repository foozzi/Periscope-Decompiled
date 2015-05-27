package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;

public class DigestInfo
  extends ASN1Object
{
  private AlgorithmIdentifier agJ;
  private byte[] ayB;
  
  public DigestInfo(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    this.agJ = AlgorithmIdentifier.ᓪ(paramASN1Sequence.nextElement());
    this.ayB = ASN1OctetString.ﹸ(paramASN1Sequence.nextElement()).eM();
  }
  
  public DigestInfo(AlgorithmIdentifier paramAlgorithmIdentifier, byte[] paramArrayOfByte)
  {
    this.ayB = paramArrayOfByte;
    this.agJ = paramAlgorithmIdentifier;
  }
  
  public static DigestInfo ﯦ(Object paramObject)
  {
    if ((paramObject instanceof DigestInfo)) {
      return (DigestInfo)paramObject;
    }
    if (paramObject != null) {
      return new DigestInfo(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.agJ);
    localASN1EncodableVector.ˊ(new DEROctetString(this.ayB));
    return new DERSequence(localASN1EncodableVector);
  }
  
  public AlgorithmIdentifier fX()
  {
    return this.agJ;
  }
  
  public byte[] hs()
  {
    return this.ayB;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.DigestInfo
 * JD-Core Version:    0.7.0.1
 */