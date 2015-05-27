package org.spongycastle.asn1.eac;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;
import org.spongycastle.util.Integers;

public class CertificateHolderAuthorization
  extends ASN1Object
{
  public static final ASN1ObjectIdentifier aiX = EACObjectIdentifiers.abR.ﾆ("3.1.2.1");
  static Hashtable aiY = new Hashtable();
  static BidirectionalMap aiZ = new BidirectionalMap();
  static Hashtable aja = new Hashtable();
  ASN1ObjectIdentifier aiV;
  DERApplicationSpecific aiW;
  
  static
  {
    aiY.put(Integers.valueOf(2), "RADG4");
    aiY.put(Integers.valueOf(1), "RADG3");
    aiZ.put(Integers.valueOf(192), "CVCA");
    aiZ.put(Integers.valueOf(128), "DV_DOMESTIC");
    aiZ.put(Integers.valueOf(64), "DV_FOREIGN");
    aiZ.put(Integers.valueOf(0), "IS");
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aiV);
    localASN1EncodableVector.ˊ(this.aiW);
    return new DERApplicationSpecific(76, localASN1EncodableVector);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.CertificateHolderAuthorization
 * JD-Core Version:    0.7.0.1
 */