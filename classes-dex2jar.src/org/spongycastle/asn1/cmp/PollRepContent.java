package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class PollRepContent
  extends ASN1Object
{
  private ASN1Integer[] adS;
  private ASN1Integer[] adT;
  private PKIFreeText[] adU;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    int i = 0;
    while (i != this.adS.length)
    {
      ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
      localASN1EncodableVector2.ˊ(this.adS[i]);
      localASN1EncodableVector2.ˊ(this.adT[i]);
      if (this.adU[i] != null) {
        localASN1EncodableVector2.ˊ(this.adU[i]);
      }
      localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
      i += 1;
    }
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cmp.PollRepContent
 * JD-Core Version:    0.7.0.1
 */