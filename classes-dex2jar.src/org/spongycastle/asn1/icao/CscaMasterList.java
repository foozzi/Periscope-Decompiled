package org.spongycastle.asn1.icao;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.x509.Certificate;

public class CscaMasterList
  extends ASN1Object
{
  private ASN1Integer aek;
  private Certificate[] alS;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    localASN1EncodableVector1.ˊ(this.aek);
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    int i = 0;
    while (i < this.alS.length)
    {
      localASN1EncodableVector2.ˊ(this.alS[i]);
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSet(localASN1EncodableVector2));
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.icao.CscaMasterList
 * JD-Core Version:    0.7.0.1
 */