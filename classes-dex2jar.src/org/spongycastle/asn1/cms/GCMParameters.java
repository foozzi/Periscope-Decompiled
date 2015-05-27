package org.spongycastle.asn1.cms;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.util.Arrays;

public class GCMParameters
  extends ASN1Object
{
  private byte[] aeu;
  private int aev;
  
  private GCMParameters(ASN1Sequence paramASN1Sequence)
  {
    this.aeu = ASN1OctetString.ﹸ(paramASN1Sequence.ϲ(0)).eM();
    if (paramASN1Sequence.size() == 2)
    {
      this.aev = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(1)).eA().intValue();
      return;
    }
    this.aev = 12;
  }
  
  public GCMParameters(byte[] paramArrayOfByte, int paramInt)
  {
    this.aeu = Arrays.І(paramArrayOfByte);
    this.aev = paramInt;
  }
  
  public static GCMParameters ˁ(Object paramObject)
  {
    if ((paramObject instanceof GCMParameters)) {
      return (GCMParameters)paramObject;
    }
    if (paramObject != null) {
      return new GCMParameters(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new DEROctetString(this.aeu));
    if (this.aev != 12) {
      localASN1EncodableVector.ˊ(new ASN1Integer(this.aev));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public byte[] fn()
  {
    return Arrays.І(this.aeu);
  }
  
  public int fo()
  {
    return this.aev;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.cms.GCMParameters
 * JD-Core Version:    0.7.0.1
 */