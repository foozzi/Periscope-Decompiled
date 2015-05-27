package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

public class SecP256R1Curve
  extends ECCurve.AbstractFp
{
  public static final BigInteger aFA = new BigInteger(1, Hex.ᵥ("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"));
  protected SecP256R1Point bdo = new SecP256R1Point(this, null, null);
  
  public SecP256R1Curve()
  {
    super(aFA);
    this.bck = ι(new BigInteger(1, Hex.ᵥ("FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC")));
    this.bcl = ι(new BigInteger(1, Hex.ᵥ("5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B")));
    this.bcm = new BigInteger(1, Hex.ᵥ("FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"));
    this.bcn = BigInteger.valueOf(1L);
    this.bco = 2;
  }
  
  public int getFieldSize()
  {
    return aFA.bitLength();
  }
  
  protected ECCurve pg()
  {
    return new SecP256R1Curve();
  }
  
  public ECPoint pi()
  {
    return this.bdo;
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
  {
    return new SecP256R1Point(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    return new SecP256R1Point(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
  }
  
  public ECFieldElement ι(BigInteger paramBigInteger)
  {
    return new SecP256R1FieldElement(paramBigInteger);
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
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP256R1Curve
 * JD-Core Version:    0.7.0.1
 */