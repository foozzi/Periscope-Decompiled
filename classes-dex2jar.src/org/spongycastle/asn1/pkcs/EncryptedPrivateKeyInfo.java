package org.spongycastle.asn1.pkcs;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class EncryptedPrivateKeyInfo
  extends ASN1Object
{
  private AlgorithmIdentifier agJ;
  private ASN1OctetString aqd;
  
  private EncryptedPrivateKeyInfo(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    this.agJ = AlgorithmIdentifier.ᓪ(paramASN1Sequence.nextElement());
    this.aqd = ASN1OctetString.ﹸ(paramASN1Sequence.nextElement());
  }
  
  public EncryptedPrivateKeyInfo(AlgorithmIdentifier paramAlgorithmIdentifier, byte[] paramArrayOfByte)
  {
    this.agJ = paramAlgorithmIdentifier;
    this.aqd = new DEROctetString(paramArrayOfByte);
  }
  
  public static EncryptedPrivateKeyInfo ᕽ(Object paramObject)
  {
    if ((paramObject instanceof EncryptedPrivateKeyInfo)) {
      return (EncryptedPrivateKeyInfo)paramObject;
    }
    if (paramObject != null) {
      return new EncryptedPrivateKeyInfo(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.agJ);
    localASN1EncodableVector.ˊ(this.aqd);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public AlgorithmIdentifier fI()
  {
    return this.agJ;
  }
  
  public byte[] getEncryptedData()
  {
    return this.aqd.eM();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.pkcs.EncryptedPrivateKeyInfo
 * JD-Core Version:    0.7.0.1
 */