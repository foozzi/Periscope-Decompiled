package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.Polynomial;
import org.spongycastle.math.field.PolynomialExtensionField;

public class X9ECParameters
  extends ASN1Object
  implements X9ObjectIdentifiers
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private ECPoint aDA;
  private BigInteger aDB;
  private BigInteger aDC;
  private ECCurve aDw;
  private byte[] aDx;
  private X9FieldID aDz;
  
  private X9ECParameters(ASN1Sequence paramASN1Sequence)
  {
    if ((!(paramASN1Sequence.ϲ(0) instanceof ASN1Integer)) || (!((ASN1Integer)paramASN1Sequence.ϲ(0)).eA().equals(ONE))) {
      throw new IllegalArgumentException("bad version in X9ECParameters");
    }
    X9Curve localX9Curve = new X9Curve(X9FieldID.ﺒ(paramASN1Sequence.ϲ(1)), ASN1Sequence.ﹾ(paramASN1Sequence.ϲ(2)));
    this.aDw = localX9Curve.iv();
    ASN1Encodable localASN1Encodable = paramASN1Sequence.ϲ(3);
    if ((localASN1Encodable instanceof X9ECPoint)) {
      this.aDA = ((X9ECPoint)localASN1Encodable).iy();
    } else {
      this.aDA = new X9ECPoint(this.aDw, (ASN1OctetString)localASN1Encodable).iy();
    }
    this.aDB = ((ASN1Integer)paramASN1Sequence.ϲ(4)).eA();
    this.aDx = localX9Curve.getSeed();
    if (paramASN1Sequence.size() == 6) {
      this.aDC = ((ASN1Integer)paramASN1Sequence.ϲ(5)).eA();
    }
  }
  
  public X9ECParameters(ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    this(paramECCurve, paramECPoint, paramBigInteger1, paramBigInteger2, null);
  }
  
  public X9ECParameters(ECCurve paramECCurve, ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte)
  {
    this.aDw = paramECCurve;
    this.aDA = paramECPoint.pQ();
    this.aDB = paramBigInteger1;
    this.aDC = paramBigInteger2;
    this.aDx = paramArrayOfByte;
    if (ECAlgorithms.ʻ(paramECCurve))
    {
      this.aDz = new X9FieldID(paramECCurve.pj().qq());
      return;
    }
    if (ECAlgorithms.ᐝ(paramECCurve))
    {
      paramECCurve = ((PolynomialExtensionField)paramECCurve.pj()).qu().qt();
      if (paramECCurve.length == 3) {
        this.aDz = new X9FieldID(paramECCurve[2], paramECCurve[1]);
      } else if (paramECCurve.length == 5) {
        this.aDz = new X9FieldID(paramECCurve[4], paramECCurve[1], paramECCurve[2], paramECCurve[3]);
      } else {
        throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
      }
      return;
    }
    throw new IllegalArgumentException("'curve' is of an unsupported type");
  }
  
  public static X9ECParameters ﭘ(Object paramObject)
  {
    if ((paramObject instanceof X9ECParameters)) {
      return (X9ECParameters)paramObject;
    }
    if (paramObject != null) {
      return new X9ECParameters(ASN1Sequence.ﹾ(paramObject));
    }
    return null;
  }
  
  public ASN1Primitive ez()
  {
    ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
    localASN1EncodableVector.ˊ(new ASN1Integer(1L));
    localASN1EncodableVector.ˊ(this.aDz);
    localASN1EncodableVector.ˊ(new X9Curve(this.aDw, this.aDx));
    localASN1EncodableVector.ˊ(new X9ECPoint(this.aDA));
    localASN1EncodableVector.ˊ(new ASN1Integer(this.aDB));
    if (this.aDC != null) {
      localASN1EncodableVector.ˊ(new ASN1Integer(this.aDC));
    }
    return new DERSequence(localASN1EncodableVector);
  }
  
  public byte[] getSeed()
  {
    return this.aDx;
  }
  
  public BigInteger gy()
  {
    return this.aDB;
  }
  
  public ECCurve iv()
  {
    return this.aDw;
  }
  
  public ECPoint iw()
  {
    return this.aDA;
  }
  
  public BigInteger ix()
  {
    if (this.aDC == null) {
      return ONE;
    }
    return this.aDC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X9ECParameters
 * JD-Core Version:    0.7.0.1
 */