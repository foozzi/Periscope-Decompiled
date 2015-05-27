package org.spongycastle.asn1.eac;

import java.io.IOException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;

public class CertificateBody
  extends ASN1Object
{
  private DERApplicationSpecific aiN;
  private DERApplicationSpecific aiO;
  private PublicKeyDataObject aiP;
  private DERApplicationSpecific aiQ;
  private CertificateHolderAuthorization aiR;
  private DERApplicationSpecific aiS;
  private DERApplicationSpecific aiT;
  private int aiU;
  
  private ASN1Primitive fs()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aiN);
    localASN1EncodableVector.ˊ(this.aiO);
    localASN1EncodableVector.ˊ(new DERApplicationSpecific(false, 73, this.aiP));
    localASN1EncodableVector.ˊ(this.aiQ);
    localASN1EncodableVector.ˊ(this.aiR);
    localASN1EncodableVector.ˊ(this.aiS);
    localASN1EncodableVector.ˊ(this.aiT);
    return new DERApplicationSpecific(78, localASN1EncodableVector);
  }
  
  private ASN1Primitive ft()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.aiN);
    localASN1EncodableVector.ˊ(new DERApplicationSpecific(false, 73, this.aiP));
    localASN1EncodableVector.ˊ(this.aiQ);
    return new DERApplicationSpecific(78, localASN1EncodableVector);
  }
  
  public ASN1Primitive ez()
  {
    try
    {
      ASN1Primitive localASN1Primitive;
      if (this.aiU == 127)
      {
        localASN1Primitive = fs();
        return localASN1Primitive;
      }
      if (this.aiU == 13)
      {
        localASN1Primitive = ft();
        return localASN1Primitive;
      }
    }
    catch (IOException localIOException)
    {
      return null;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.eac.CertificateBody
 * JD-Core Version:    0.7.0.1
 */