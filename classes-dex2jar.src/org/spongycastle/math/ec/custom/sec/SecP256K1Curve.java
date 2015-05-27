package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

public class SecP256K1Curve
  extends ECCurve.AbstractFp
{
  public static final BigInteger aFA = new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"));
  protected SecP256K1Point bdn = new SecP256K1Point(this, null, null);
  
  public SecP256K1Curve()
  {
    super(aFA);
    this.bck = ι(ECConstants.ZERO);
    this.bcl = ι(BigInteger.valueOf(7L));
    this.bcm = new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"));
    this.bcn = BigInteger.valueOf(1L);
    this.bco = 2;
  }
  
  public int getFieldSize()
  {
    return aFA.bitLength();
  }
  
  protected ECCurve pg()
  {
    return new SecP256K1Curve();
  }
  
  public ECPoint pi()
  {
    return this.bdn;
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
  {
    return new SecP256K1Point(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    return new SecP256K1Point(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
  }
  
  public ECFieldElement ι(BigInteger paramBigInteger)
  {
    return new SecP256K1FieldElement(paramBigInteger);
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
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP256K1Curve
 * JD-Core Version:    0.7.0.1
 */