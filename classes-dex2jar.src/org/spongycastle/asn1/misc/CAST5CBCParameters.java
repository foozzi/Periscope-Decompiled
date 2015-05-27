package org.spongycastle.asn1.misc;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;

public class CAST5CBCParameters
  extends ASN1Object
{
  ASN1OctetString ahD;
  ASN1Integer anH;
  
  public CAST5CBCParameters(ASN1Sequence paramASN1Sequence)
  {
    this.ahD = ((ASN1OctetString)paramASN1Sequence.ϲ(0));
    this.anH = ((ASN1Integer)paramASN1Sequence.ϲ(1));
  }
  
  public CAST5CBCParameters(byte[] paramArrayOfByte, int paramInt)
  {
    this.ahD = new DEROctetString(paramArrayOfByte);
    this.anH = new ASN1Integer(paramInt);
  }
  
  public static CAST5CBCParameters ι(Object paramObject)
  {
    if ((paramObject instanceof CAST5CBCParameters)) {
      return (CAST5CBCParameters)paramObject;
    }
    if (paramObject != null) {
      return new CAST5CBCParameters(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahD);
    localASN1EncodableVector.ˊ(this.anH);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public byte[] getIV()
  {
    return this.ahD.eM();
  }
  
  public int getKeyLength()
  {
    return this.anH.eA().intValue();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.misc.CAST5CBCParameters
 * JD-Core Version:    0.7.0.1
 */