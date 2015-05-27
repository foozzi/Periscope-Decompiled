package org.spongycastle.asn1.eac;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;
import org.spongycastle.asn1.DEROctetString;

public class CVCertificateRequest
  extends ASN1Object
{
  private static int aiI = 1;
  private static int aiJ = 2;
  public static byte[] aiM = { 0 };
  private CertificateBody aiF;
  private byte[] aiL;
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aiF);
    try
    {
      localASN1EncodableVector.ˊ(new DERApplicationSpecific(false, 55, new DEROctetString(this.aiL)));
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("unable to convert signature!");
    }
    return new DERApplicationSpecific(33, localIOException);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.CVCertificateRequest
 * JD-Core Version:    0.7.0.1
 */