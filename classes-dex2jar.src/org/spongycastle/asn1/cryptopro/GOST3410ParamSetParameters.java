package org.spongycastle.asn1.cryptopro;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

public class GOST3410ParamSetParameters
  extends ASN1Object
{
  int ahI;
  ASN1Integer ahx;
  ASN1Integer ahy;
  ASN1Integer ahz;
  
  public GOST3410ParamSetParameters(int paramInt, BigInteger paramBigInteger1, BigInteger paramBigInteger2, BigInteger paramBigInteger3)
  {
    this.ahI = paramInt;
    this.ahx = new ASN1Integer(paramBigInteger1);
    this.ahy = new ASN1Integer(paramBigInteger2);
    this.ahz = new ASN1Integer(paramBigInteger3);
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(this.ahI));
    localASN1EncodableVector.ˊ(this.ahx);
    localASN1EncodableVector.ˊ(this.ahy);
    localASN1EncodableVector.ˊ(this.ahz);
    return new DERSequence(localASN1EncodableVector);
  }
  
  public BigInteger getA()
  {
    return this.ahz.eI();
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
 * Qualified Name:     org.spongycastle.asn1.cryptopro.GOST3410ParamSetParameters
 * JD-Core Version:    0.7.0.1
 */