package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

public class DHParameter
  extends ASN1Object
{
  ASN1Integer ahx;
  ASN1Integer apD;
  ASN1Integer aqb;
  
  public DHParameter(BigInteger paramBigInteger1, BigInteger paramBigInteger2, int paramInt)
  {
    this.ahx = new ASN1Integer(paramBigInteger1);
    this.apD = new ASN1Integer(paramBigInteger2);
    if (paramInt != 0)
    {
      this.aqb = new ASN1Integer(paramInt);
      return;
    }
    this.aqb = null;
  }
  
  private DHParameter(ASN1Sequence paramASN1Sequence)
  {
    paramASN1Sequence = paramASN1Sequence.eT();
    this.ahx = ASN1Integer.ﯨ(paramASN1Sequence.nextElement());
    this.apD = ASN1Integer.ﯨ(paramASN1Sequence.nextElement());
    if (paramASN1Sequence.hasMoreElements())
    {
      this.aqb = ((ASN1Integer)paramASN1Sequence.nextElement());
      return;
    }
    this.aqb = null;
  }
  
  public static DHParameter ᕁ(Object paramObject)
  {
    if ((paramObject instanceof DHParameter)) {
      return (DHParameter)paramObject;
    }
    if (paramObject != null) {
      return new DHParameter(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(this.ahx);
    localASN1EncodableVector.ˊ(this.apD);
    if (fH() != null) {
      localASN1EncodableVector.ˊ(this.aqb);
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger fH()
  {
    if (this.aqb == null) {
      return null;
    }
    return this.aqb.eI();
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
 * Qualified Name:     org.spongycastle.asn1.pkcs.DHParameter
 * JD-Core Version:    0.7.0.1
 */