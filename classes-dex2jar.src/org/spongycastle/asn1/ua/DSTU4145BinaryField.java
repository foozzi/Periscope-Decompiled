package org.spongycastle.asn1.ua;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class DSTU4145BinaryField
  extends ASN1Object
{
  private int avL;
  private int avM;
  private int avN;
  private int avO;
  
  private DSTU4145BinaryField(ASN1Sequence paramASN1Sequence)
  {
    this.avL = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0)).eI().intValue();
    if ((paramASN1Sequence.ϲ(1) instanceof ASN1Integer))
    {
      this.avM = ((ASN1Integer)paramASN1Sequence.ϲ(1)).eI().intValue();
      return;
    }
    if ((paramASN1Sequence.ϲ(1) instanceof ASN1Sequence))
    {
      paramASN1Sequence = ASN1Sequence.ﹾ(paramASN1Sequence.ϲ(1));
      this.avM = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(0)).eI().intValue();
      this.avN = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(1)).eI().intValue();
      this.avO = ASN1Integer.ﯨ(paramASN1Sequence.ϲ(2)).eI().intValue();
      return;
    }
    throw new IllegalArgumentException("object parse error");
  }
  
  public static DSTU4145BinaryField ї(Object paramObject)
  {
    if ((paramObject instanceof DSTU4145BinaryField)) {
      return (DSTU4145BinaryField)paramObject;
    }
    if (paramObject != null) {
      return new DSTU4145BinaryField(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    localASN1EncodableVector1.ˊ(new ASN1Integer(this.avL));
    if (this.avN == 0)
    {
      localASN1EncodableVector1.ˊ(new ASN1Integer(this.avM));
    }
    else
    {
      ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
      localASN1EncodableVector2.ˊ(new ASN1Integer(this.avM));
      localASN1EncodableVector2.ˊ(new ASN1Integer(this.avN));
      localASN1EncodableVector2.ˊ(new ASN1Integer(this.avO));
      localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    }
    return new DERSequence(localASN1EncodableVector1);
  }
  
  public int getM()
  {
    return this.avL;
  }
  
  public int gt()
  {
    return this.avM;
  }
  
  public int gu()
  {
    return this.avN;
  }
  
  public int gv()
  {
    return this.avO;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ua.DSTU4145BinaryField
 * JD-Core Version:    0.7.0.1
 */