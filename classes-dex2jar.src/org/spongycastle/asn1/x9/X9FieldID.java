package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class X9FieldID
  extends ASN1Object
  implements X9ObjectIdentifiers
{
  private ASN1Primitive aDH;
  private ASN1ObjectIdentifier ayt;
  
  public X9FieldID(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, 0, 0);
  }
  
  public X9FieldID(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ayt = aDL;
    ASN1EncodableVector localASN1EncodableVector1 = new ASN1EncodableVector();
    localASN1EncodableVector1.ˊ(new ASN1Integer(paramInt1));
    if (paramInt3 == 0)
    {
      if (paramInt4 != 0) {
        throw new IllegalArgumentException("inconsistent k values");
      }
      localASN1EncodableVector1.ˊ(aDN);
      localASN1EncodableVector1.ˊ(new ASN1Integer(paramInt2));
    }
    else
    {
      if ((paramInt3 <= paramInt2) || (paramInt4 <= paramInt3)) {
        throw new IllegalArgumentException("inconsistent k values");
      }
      localASN1EncodableVector1.ˊ(aDO);
      ASN1EncodableVector localASN1EncodableVector2 = new ASN1EncodableVector();
      localASN1EncodableVector2.ˊ(new ASN1Integer(paramInt2));
      localASN1EncodableVector2.ˊ(new ASN1Integer(paramInt3));
      localASN1EncodableVector2.ˊ(new ASN1Integer(paramInt4));
      localASN1EncodableVector1.ˊ(new DERSequence(localASN1EncodableVector2));
    }
    this.aDH = new DERSequence(localASN1EncodableVector1);
  }
  
  public X9FieldID(BigInteger paramBigInteger)
  {
    this.ayt = aDK;
    this.aDH = new ASN1Integer(paramBigInteger);
  }
  
  private X9FieldID(ASN1Sequence paramASN1Sequence)
  {
    this.ayt = ASN1ObjectIdentifier.ﹴ(paramASN1Sequence.ϲ(0));
    this.aDH = paramASN1Sequence.ϲ(1).ez();
  }
  
  public static X9FieldID ﺒ(Object paramObject)
  {
    if ((paramObject instanceof X9FieldID)) {
      return (X9FieldID)paramObject;
    }
    if (paramObject != null) {
      return new X9FieldID(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ayt);
    localASN1EncodableVector.ˊ(this.aDH);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public ASN1ObjectIdentifier iA()
  {
    return this.ayt;
  }
  
  public ASN1Primitive it()
  {
    return this.aDH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X9FieldID
 * JD-Core Version:    0.7.0.1
 */