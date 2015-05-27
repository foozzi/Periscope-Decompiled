package org.spongycastle.asn1.cryptopro;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class ECGOST3410ParamSetParameters
  extends ASN1Object
{
  ASN1Integer ahA;
  ASN1Integer ahB;
  ASN1Integer ahC;
  ASN1Integer ahx;
  ASN1Integer ahy;
  ASN1Integer ahz;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahz);
    localASN1EncodableVector.ˊ(this.ahA);
    localASN1EncodableVector.ˊ(this.ahx);
    localASN1EncodableVector.ˊ(this.ahy);
    localASN1EncodableVector.ˊ(this.ahB);
    localASN1EncodableVector.ˊ(this.ahC);
    return new DERSequence(localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cryptopro.ECGOST3410ParamSetParameters
 * JD-Core Version:    0.7.0.1
 */