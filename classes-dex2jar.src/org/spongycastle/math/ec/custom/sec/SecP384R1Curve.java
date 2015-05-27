package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

public class SecP384R1Curve
  extends ECCurve.AbstractFp
{
  public static final BigInteger aFA = new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"));
  protected SecP384R1Point bdp = new SecP384R1Point(this, null, null);
  
  public SecP384R1Curve()
  {
    super(aFA);
    this.bck = ι(new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC")));
    this.bcl = ι(new BigInteger(1, Hex.ᵥ("B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF")));
    this.bcm = new BigInteger(1, Hex.ᵥ("FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"));
    this.bcn = BigInteger.valueOf(1L);
    this.bco = 2;
  }
  
  public int getFieldSize()
  {
    return aFA.bitLength();
  }
  
  protected ECCurve pg()
  {
    return new SecP384R1Curve();
  }
  
  public ECPoint pi()
  {
    return this.bdp;
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
  {
    return new SecP384R1Point(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    return new SecP384R1Point(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
  }
  
  public ECFieldElement ι(BigInteger paramBigInteger)
  {
    return new SecP384R1FieldElement(paramBigInteger);
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
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP384R1Curve
 * JD-Core Version:    0.7.0.1
 */