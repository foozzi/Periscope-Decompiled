package org.spongycastle.asn1.eac;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;
import org.spongycastle.asn1.DEROctetString;

public class CVCertificate
  extends ASN1Object
{
  private static int aiI = 1;
  private static int aiJ = 2;
  public static String aiK = "ISO-8859-1";
  private CertificateBody aiF;
  private byte[] aiG;
  private int aiH;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aiH != (aiJ | aiI)) {
      return null;
    }
    localASN1EncodableVector.ˊ(this.aiF);
    try
    {
      localASN1EncodableVector.ˊ(new DERApplicationSpecific(false, 55, new DEROctetString(this.aiG)));
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("unable to convert signature!");
    }
    return new DERApplicationSpecific(33, localIOException);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.CVCertificate
 * JD-Core Version:    0.7.0.1
 */