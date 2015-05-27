package org.spongycastle.jcajce.provider.asymmetric.util;

import java.math.BigInteger;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.field.FiniteField;

public class EC5Util
{
  private static Map aXN = new HashMap();
  
  static
  {
    Enumeration localEnumeration = CustomNamedCurves.jk();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      X9ECParameters localX9ECParameters = ECNamedCurveTable.ג(str);
      if (localX9ECParameters != null) {
        aXN.put(localX9ECParameters.iv(), CustomNamedCurves.ג(str).iv());
      }
    }
  }
  
  public static java.security.spec.ECParameterSpec ˊ(EllipticCurve paramEllipticCurve, org.spongycastle.jce.spec.ECParameterSpec paramECParameterSpec)
  {
    if ((paramECParameterSpec instanceof ECNamedCurveParameterSpec)) {
      return new ECNamedCurveSpec(((ECNamedCurveParameterSpec)paramECParameterSpec).getName(), paramEllipticCurve, new java.security.spec.ECPoint(paramECParameterSpec.iw().pH().toBigInteger(), paramECParameterSpec.iw().pI().toBigInteger()), paramECParameterSpec.gy(), paramECParameterSpec.ix());
    }
    return new java.security.spec.ECParameterSpec(paramEllipticCurve, new java.security.spec.ECPoint(paramECParameterSpec.iw().pH().toBigInteger(), paramECParameterSpec.iw().pI().toBigInteger()), paramECParameterSpec.gy(), paramECParameterSpec.ix().intValue());
  }
  
  public static org.spongycastle.jce.spec.ECParameterSpec ˊ(java.security.spec.ECParameterSpec paramECParameterSpec, boolean paramBoolean)
  {
    ECCurve localECCurve = ˊ(paramECParameterSpec.getCurve());
    return new org.spongycastle.jce.spec.ECParameterSpec(localECCurve, ˊ(localECCurve, paramECParameterSpec.getGenerator(), paramBoolean), paramECParameterSpec.getOrder(), BigInteger.valueOf(paramECParameterSpec.getCofactor()), paramECParameterSpec.getCurve().getSeed());
  }
  
  public static ECCurve ˊ(EllipticCurve paramEllipticCurve)
  {
    Object localObject = paramEllipticCurve.getField();
    BigInteger localBigInteger = paramEllipticCurve.getA();
    paramEllipticCurve = paramEllipticCurve.getB();
    if ((localObject instanceof ECFieldFp))
    {
      paramEllipticCurve = new ECCurve.Fp(((ECFieldFp)localObject).getP(), localBigInteger, paramEllipticCurve);
      if (aXN.containsKey(paramEllipticCurve)) {
        return (ECCurve)aXN.get(paramEllipticCurve);
      }
      return paramEllipticCurve;
    }
    localObject = (ECFieldF2m)localObject;
    int i = ((ECFieldF2m)localObject).getM();
    localObject = ECUtil.ι(((ECFieldF2m)localObject).getMidTermsOfReductionPolynomial());
    return new ECCurve.F2m(i, localObject[0], localObject[1], localObject[2], localBigInteger, paramEllipticCurve);
  }
  
  public static org.spongycastle.math.ec.ECPoint ˊ(java.security.spec.ECParameterSpec paramECParameterSpec, java.security.spec.ECPoint paramECPoint, boolean paramBoolean)
  {
    return ˊ(ˊ(paramECParameterSpec.getCurve()), paramECPoint, paramBoolean);
  }
  
  public static org.spongycastle.math.ec.ECPoint ˊ(ECCurve paramECCurve, java.security.spec.ECPoint paramECPoint, boolean paramBoolean)
  {
    return paramECCurve.ˋ(paramECPoint.getAffineX(), paramECPoint.getAffineY(), paramBoolean);
  }
  
  public static EllipticCurve ˎ(ECCurve paramECCurve, byte[] paramArrayOfByte)
  {
    if (ECAlgorithms.ʻ(paramECCurve)) {
      return new EllipticCurve(new ECFieldFp(paramECCurve.pj().qq()), paramECCurve.pk().toBigInteger(), paramECCurve.pl().toBigInteger(), null);
    }
    paramArrayOfByte = (ECCurve.F2m)paramECCurve;
    if (paramArrayOfByte.pu())
    {
      i = paramArrayOfByte.gt();
      return new EllipticCurve(new ECFieldF2m(paramArrayOfByte.getM(), new int[] { i }), paramECCurve.pk().toBigInteger(), paramECCurve.pl().toBigInteger(), null);
    }
    int i = paramArrayOfByte.gv();
    int j = paramArrayOfByte.gu();
    int k = paramArrayOfByte.gt();
    return new EllipticCurve(new ECFieldF2m(paramArrayOfByte.getM(), new int[] { i, j, k }), paramECCurve.pk().toBigInteger(), paramECCurve.pl().toBigInteger(), null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.EC5Util
 * JD-Core Version:    0.7.0.1
 */