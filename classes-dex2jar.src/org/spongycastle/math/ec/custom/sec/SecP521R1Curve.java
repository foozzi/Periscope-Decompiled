package org.spongycastle.math.ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.util.encoders.Hex;

public class SecP521R1Curve
  extends ECCurve.AbstractFp
{
  public static final BigInteger aFA = new BigInteger(1, Hex.ᵥ("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"));
  protected SecP521R1Point bdq = new SecP521R1Point(this, null, null);
  
  public SecP521R1Curve()
  {
    super(aFA);
    this.bck = ι(new BigInteger(1, Hex.ᵥ("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC")));
    this.bcl = ι(new BigInteger(1, Hex.ᵥ("0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00")));
    this.bcm = new BigInteger(1, Hex.ᵥ("01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"));
    this.bcn = BigInteger.valueOf(1L);
    this.bco = 2;
  }
  
  public int getFieldSize()
  {
    return aFA.bitLength();
  }
  
  protected ECCurve pg()
  {
    return new SecP521R1Curve();
  }
  
  public ECPoint pi()
  {
    return this.bdq;
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
  {
    return new SecP521R1Point(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    return new SecP521R1Point(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
  }
  
  public ECFieldElement ι(BigInteger paramBigInteger)
  {
    return new SecP521R1FieldElement(paramBigInteger);
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
 * Qualified Name:     org.spongycastle.math.ec.custom.sec.SecP521R1Curve
 * JD-Core Version:    0.7.0.1
 */