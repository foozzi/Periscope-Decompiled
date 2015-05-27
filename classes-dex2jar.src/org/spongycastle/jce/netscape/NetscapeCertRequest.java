package org.spongycastle.jce.netscape;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

public class NetscapeCertRequest
  extends ASN1Object
{
  PublicKey baA;
  AlgorithmIdentifier bax;
  byte[] bay;
  String baz;
  
  private ASN1Primitive oU()
  {
    Object localObject = new ByteArrayOutputStream();
    try
    {
      ((ByteArrayOutputStream)localObject).write(this.baA.getEncoded());
      ((ByteArrayOutputStream)localObject).close();
      localObject = new ASN1InputStream(new ByteArrayInputStream(((ByteArrayOutputStream)localObject).toByteArray())).eH();
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new InvalidKeySpecException(localIOException.getMessage());
    }
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
    try
    {
      localASN1EncodableVector2.ˊ(oU());
    }
    catch (Exception localException) {}
    localASN1EncodableVector2.ˊ(new DERIA5String(this.baz));
    localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    localASN1EncodableVector1.ˊ(this.bax);
    localASN1EncodableVector1.ˊ(new DERBitString(this.bay));
    return new DERSequence(localASN1EncodableVector1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.netscape.NetscapeCertRequest
 * JD-Core Version:    0.7.0.1
 */