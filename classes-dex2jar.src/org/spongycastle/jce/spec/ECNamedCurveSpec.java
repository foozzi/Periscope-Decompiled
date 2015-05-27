package org.spongycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.EllipticCurve;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.field.FiniteField;

public class ECNamedCurveSpec
  extends ECParameterSpec
{
  private String name;
  
  public ECNamedCurveSpec(String paramString, EllipticCurve paramEllipticCurve, java.security.spec.ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    super(paramEllipticCurve, paramECPoint, paramBigInteger1, paramBigInteger2.intValue());
    this.name = paramString;
  }
  
  public ECNamedCurveSpec(String paramString, ECCurve paramECCurve, org.spongycastle.math.ec.ECPoint paramECPoint, BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte)
  {
    super(ˎ(paramECCurve, paramArrayOfByte), ˋ(paramECPoint), paramBigInteger1, paramBigInteger2.intValue());
    this.name = paramString;
  }
  
  private static java.security.spec.ECPoint ˋ(org.spongycastle.math.ec.ECPoint paramECPoint)
  {
    paramECPoint = paramECPoint.pQ();
    return new java.security.spec.ECPoint(paramECPoint.pH().toBigInteger(), paramECPoint.pI().toBigInteger());
  }
  
  private static EllipticCurve ˎ(ECCurve paramECCurve, byte[] paramArrayOfByte)
  {
    if (ECAlgorithms.ʻ(paramECCurve)) {
      return new EllipticCurve(new ECFieldFp(paramECCurve.pj().qq()), paramECCurve.pk().toBigInteger(), paramECCurve.pl().toBigInteger(), paramArrayOfByte);
    }
    ECCurve.F2m localF2m = (ECCurve.F2m)paramECCurve;
    if (localF2m.pu())
    {
      i = localF2m.gt();
      return new EllipticCurve(new ECFieldF2m(localF2m.getM(), new int[] { i }), paramECCurve.pk().toBigInteger(), paramECCurve.pl().toBigInteger(), paramArrayOfByte);
    }
    int i = localF2m.gv();
    int j = localF2m.gu();
    int k = localF2m.gt();
    return new EllipticCurve(new ECFieldF2m(localF2m.getM(), new int[] { i, j, k }), paramECCurve.pk().toBigInteger(), paramECCurve.pl().toBigInteger(), paramArrayOfByte);
  }
  
  public String getName()
  {
    return this.name;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.ECNamedCurveSpec
 * JD-Core Version:    0.7.0.1
 */