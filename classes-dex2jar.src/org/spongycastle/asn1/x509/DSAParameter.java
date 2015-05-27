package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class DSAParameter
  extends ASN1Object
{
  ASN1Integer ahx;
  ASN1Integer ahy;
  ASN1Integer apD;
  
  public DSAParameter(BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    this.ahx = new ASN1Integer(paramBigInteger1);
    this.ahy = new ASN1Integer(paramBigInteger2);
    this.apD = new ASN1Integer(paramBigInteger3);
  }
  
  private DSAParameter(ASN1Sequence paramASN1Sequence)
  {
    if (paramASN1Sequence.size() != 3) {
      throw new IllegalArgumentException("Bad sequence size: " + paramASN1Sequence.size());
    }
    paramASN1Sequence = paramASN1Sequence.eT();
    this.ahx = ASN1Integer.ﯨ(paramASN1Sequence.nextElement());
    this.ahy = ASN1Integer.ﯨ(paramASN1Sequence.nextElement());
    this.apD = ASN1Integer.ﯨ(paramASN1Sequence.nextElement());
  }
  
  public static DSAParameter ﭠ(Object paramObject)
  {
    if ((paramObject instanceof DSAParameter)) {
      return (DSAParameter)paramObject;
    }
    if (paramObject != null) {
      return new DSAParameter(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahx);
    localASN1EncodableVector.ˊ(this.ahy);
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
  
  public BigInteger getQ()
  {
    return this.ahy.eI();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.DSAParameter
 * JD-Core Version:    0.7.0.1
 */