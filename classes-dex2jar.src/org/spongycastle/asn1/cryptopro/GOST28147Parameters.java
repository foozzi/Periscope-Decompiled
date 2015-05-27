package org.spongycastle.asn1.cryptopro;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class GOST28147Parameters
  extends ASN1Object
{
  private ASN1OctetString ahD;
  private ASN1ObjectIdentifier ahE;
  
  public GOST28147Parameters(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    this.ahD = ((ASN1OctetString)paramASN1Sequence.nextElement());
    this.ahE = ((ASN1ObjectIdentifier)paramASN1Sequence.nextElement());
  }
  
  public static GOST28147Parameters ˢ(Object paramObject)
  {
    if ((paramObject instanceof GOST28147Parameters)) {
      return (GOST28147Parameters)paramObject;
    }
    if (paramObject != null) {
      return new GOST28147Parameters(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahD);
    localASN1EncodableVector.ˊ(this.ahE);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier fp()
  {
    return this.ahE;
  }
  
  public byte[] getIV()
  {
    return this.ahD.eM();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cryptopro.GOST28147Parameters
 * JD-Core Version:    0.7.0.1
 */