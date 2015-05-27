package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.ECFieldElement;

public class X9Curve
  extends ASN1Object
  implements X9ObjectIdentifiers
{
  private ECCurve aDw;
  private byte[] aDx;
  private ASN1ObjectIdentifier aDy = null;
  
  public X9Curve(X9FieldID paramX9FieldID, ASN1Sequence paramASN1Sequence)
  {
    this.aDy = paramX9FieldID.iA();
    Object localObject;
    if (this.aDy.equals(aDK))
    {
      paramX9FieldID = ((ASN1Integer)paramX9FieldID.it()).eA();
      localObject = new X9FieldElement(paramX9FieldID, (ASN1OctetString)paramASN1Sequence.ϲ(0));
      X9FieldElement localX9FieldElement = new X9FieldElement(paramX9FieldID, (ASN1OctetString)paramASN1Sequence.ϲ(1));
      this.aDw = new ECCurve.Fp(paramX9FieldID, ((X9FieldElement)localObject).iz().toBigInteger(), localX9FieldElement.iz().toBigInteger());
    }
    else if (this.aDy.equals(aDL))
    {
      paramX9FieldID = ASN1Sequence.ﹾ(paramX9FieldID.it());
      int m = ((ASN1Integer)paramX9FieldID.ϲ(0)).eA().intValue();
      localObject = (ASN1ObjectIdentifier)paramX9FieldID.ϲ(1);
      int j = 0;
      int k = 0;
      int i;
      if (((ASN1ObjectIdentifier)localObject).equals(aDN))
      {
        i = ASN1Integer.ﯨ(paramX9FieldID.ϲ(2)).eA().intValue();
      }
      else if (((ASN1ObjectIdentifier)localObject).equals(aDO))
      {
        paramX9FieldID = ASN1Sequence.ﹾ(paramX9FieldID.ϲ(2));
        i = ASN1Integer.ﯨ(paramX9FieldID.ϲ(0)).eA().intValue();
        j = ASN1Integer.ﯨ(paramX9FieldID.ϲ(1)).eA().intValue();
        k = ASN1Integer.ﯨ(paramX9FieldID.ϲ(2)).eA().intValue();
      }
      else
      {
        throw new IllegalArgumentException("This type of EC basis is not implemented");
      }
      paramX9FieldID = new X9FieldElement(m, i, j, k, (ASN1OctetString)paramASN1Sequence.ϲ(0));
      localObject = new X9FieldElement(m, i, j, k, (ASN1OctetString)paramASN1Sequence.ϲ(1));
      this.aDw = new ECCurve.F2m(m, i, j, k, paramX9FieldID.iz().toBigInteger(), ((X9FieldElement)localObject).iz().toBigInteger());
    }
    else
    {
      throw new IllegalArgumentException("This type of ECCurve is not implemented");
    }
    if (paramASN1Sequence.size() == 3) {
      this.aDx = ((DERBitString)paramASN1Sequence.ϲ(2)).getBytes();
    }
  }
  
  public X9Curve(ECCurve paramECCurve, byte[] paramArrayOfByte)
  {
    this.aDw = paramECCurve;
    this.aDx = paramArrayOfByte;
    iu();
  }
  
  private void iu()
  {
    if (ECAlgorithms.ʻ(this.aDw))
    {
      this.aDy = aDK;
      return;
    }
    if (ECAlgorithms.ᐝ(this.aDw))
    {
      this.aDy = aDL;
      return;
    }
    throw new IllegalArgumentException("This type of ECCurve is not implemented");
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    if (this.aDy.equals(aDK))
    {
      localASN1EncodableVector.ˊ(new X9FieldElement(this.aDw.pk()).ez());
      localASN1EncodableVector.ˊ(new X9FieldElement(this.aDw.pl()).ez());
    }
    else if (this.aDy.equals(aDL))
    {
      localASN1EncodableVector.ˊ(new X9FieldElement(this.aDw.pk()).ez());
      localASN1EncodableVector.ˊ(new X9FieldElement(this.aDw.pl()).ez());
    }
    if (this.aDx != null) {
      localASN1EncodableVector.ˊ(new DERBitString(this.aDx));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public byte[] getSeed()
  {
    return this.aDx;
  }
  
  public ECCurve iv()
  {
    return this.aDw;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X9Curve
 * JD-Core Version:    0.7.0.1
 */