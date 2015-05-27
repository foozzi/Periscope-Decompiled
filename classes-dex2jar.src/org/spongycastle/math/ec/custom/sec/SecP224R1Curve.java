package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

public class SecP224R1Curve
  extends ECCurve.AbstractFp
{
  public static final BigInteger aFA = new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000001"));
  protected SecP224R1Point bdm = new SecP224R1Point(this, null, null);
  
  public SecP224R1Curve()
  {
    super(aFA);
    this.bck = ι(new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFE")));
    this.bcl = ι(new BigInteger(1, Hex.ᵥ("B4050A850C04B3ABF54132565044B0B7D7BFD8BA270B39432355FFB4")));
    this.bcm = new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFF16A2E0B8F03E13DD29455C5C2A3D"));
    this.bcn = BigInteger.valueOf(1L);
    this.bco = 2;
  }
  
  public int getFieldSize()
  {
    return aFA.bitLength();
  }
  
  protected ECCurve pg()
  {
    return new SecP224R1Curve();
  }
  
  public ECPoint pi()
  {
    return this.bdm;
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
  {
    return new SecP224R1Point(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    return new SecP224R1Point(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
  }
  
  public ECFieldElement ι(BigInteger paramBigInteger)
  {
    return new SecP224R1FieldElement(paramBigInteger);
  }
  
  public boolean ﭨ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 2: 
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP224R1Curve
 * JD-Core Version:    0.7.0.1
 */