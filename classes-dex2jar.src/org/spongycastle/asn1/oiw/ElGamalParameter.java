package org.spongycastle.asn1.oiw;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class ElGamalParameter
  extends ASN1Object
{
  ASN1Integer ahx;
  ASN1Integer apD;
  
  public ElGamalParameter(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this.ahx = new ASN1Integer(paramBigInteger1);
    this.apD = new ASN1Integer(paramBigInteger2);
  }
  
  private ElGamalParameter(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    this.ahx = ((ASN1Integer)paramASN1Sequence.nextElement());
    this.apD = ((ASN1Integer)paramASN1Sequence.nextElement());
  }
  
  public static ElGamalParameter ᔅ(Object paramObject)
  {
    if ((paramObject instanceof ElGamalParameter)) {
      return (ElGamalParameter)paramObject;
    }
    if (paramObject != null) {
      return new ElGamalParameter(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahx);
    localASN1EncodableVector.ˊ(this.apD);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger getG()
  {
    return this.apD.eI();
  }
  
  public BigInteger getP()
  {
    return this.ahx.eI();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.oiw.ElGamalParameter
 * JD-Core Version:    0.7.0.1
 */