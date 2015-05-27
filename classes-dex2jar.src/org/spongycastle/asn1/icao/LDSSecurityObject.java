package org.spongycastle.asn1.icao;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class LDSSecurityObject
  extends ASN1Object
  implements ICAOObjectIdentifiers
{
  private ASN1Integer aek;
  private AlgorithmIdentifier amf;
  private DataGroupHash[] amg;
  private LDSVersionInfo amh;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    localASN1EncodableVector1.ˊ(this.aek);
    localASN1EncodableVector1.ˊ(this.amf);
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    int i = 0;
    while (i < this.amg.length)
    {
      localASN1EncodableVector2.ˊ(this.amg[i]);
      i += 1;
    }
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    if (this.amh != null) {
      localASN1EncodableVector1.ˊ(this.amh);
    }
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.icao.LDSSecurityObject
 * JD-Core Version:    0.7.0.1
 */