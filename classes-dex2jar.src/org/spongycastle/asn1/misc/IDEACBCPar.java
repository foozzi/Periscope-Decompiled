package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;

public class IDEACBCPar
  extends ASN1Object
{
  ASN1OctetString ahD;
  
  public IDEACBCPar(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() == 1)
    {
      this.ahD = ((ASN1OctetString)paramASN1Sequence.ϲ(0));
      return;
    }
    this.ahD = null;
  }
  
  public IDEACBCPar(byte[] paramArrayOfByte)
  {
    this.ahD = new DEROctetString(paramArrayOfByte);
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.ahD != null) {
      localASN1EncodableVector.ˊ(this.ahD);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public byte[] getIV()
  {
    if (this.ahD != null) {
      return this.ahD.eM();
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.misc.IDEACBCPar
 * JD-Core Version:    0.7.0.1
 */