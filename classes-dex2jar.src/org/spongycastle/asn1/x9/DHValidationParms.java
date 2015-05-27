package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

public class DHValidationParms
  extends ASN1Object
{
  private DERBitString aCR;
  private ASN1Integer aCS;
  
  private DHValidationParms(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() != 2) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    this.aCR = DERBitString.ʸ(paramASN1Sequence.ϲ(0));
    this.aCS = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(1));
  }
  
  public static DHValidationParms ᵏ(Object paramObject)
  {
    if ((paramObject instanceof DHValidationParms)) {
      return (DHValidationParms)paramObject;
    }
    if (paramObject != null) {
      return new DHValidationParms(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aCR);
    localASN1EncodableVector.ˊ(this.aCS);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public DERBitString iq()
  {
    return this.aCR;
  }
  
  public ASN1Integer ir()
  {
    return this.aCS;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.DHValidationParms
 * JD-Core Version:    0.7.0.1
 */