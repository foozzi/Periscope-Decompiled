package org.spongycastle.asn1.cryptopro;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class GOST3410PublicKeyAlgParameters
  extends ASN1Object
{
  private ASN1ObjectIdentifier ahJ;
  private ASN1ObjectIdentifier ahK;
  private ASN1ObjectIdentifier ahL;
  
  public GOST3410PublicKeyAlgParameters(ASN1ObjectIdentifier paramASN1ObjectIdentifier1, ASN1ObjectIdentifier paramASN1ObjectIdentifier2)
  {
    this.ahJ = paramASN1ObjectIdentifier1;
    this.ahK = paramASN1ObjectIdentifier2;
    this.ahL = null;
  }
  
  public GOST3410PublicKeyAlgParameters(ASN1ObjectIdentifier paramASN1ObjectIdentifier1, ASN1ObjectIdentifier paramASN1ObjectIdentifier2, ASN1ObjectIdentifier paramASN1ObjectIdentifier3)
  {
    this.ahJ = paramASN1ObjectIdentifier1;
    this.ahK = paramASN1ObjectIdentifier2;
    this.ahL = paramASN1ObjectIdentifier3;
  }
  
  public GOST3410PublicKeyAlgParameters(ASN1Sequence paramASN1Sequence)
  {
    this.ahJ = ((ASN1ObjectIdentifier)paramASN1Sequence.ϲ(0));
    this.ahK = ((ASN1ObjectIdentifier)paramASN1Sequence.ϲ(1));
    if (paramASN1Sequence.size() > 2) {
      this.ahL = ((ASN1ObjectIdentifier)paramASN1Sequence.ϲ(2));
    }
  }
  
  public static GOST3410PublicKeyAlgParameters ˤ(Object paramObject)
  {
    if ((paramObject instanceof GOST3410PublicKeyAlgParameters)) {
      return (GOST3410PublicKeyAlgParameters)paramObject;
    }
    if (paramObject != null) {
      return new GOST3410PublicKeyAlgParameters(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahJ);
    localASN1EncodableVector.ˊ(this.ahK);
    if (this.ahL != null) {
      localASN1EncodableVector.ˊ(this.ahL);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier fp()
  {
    return this.ahL;
  }
  
  public ASN1ObjectIdentifier fq()
  {
    return this.ahJ;
  }
  
  public ASN1ObjectIdentifier fr()
  {
    return this.ahK;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters
 * JD-Core Version:    0.7.0.1
 */