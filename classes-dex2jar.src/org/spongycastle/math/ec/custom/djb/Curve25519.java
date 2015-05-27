package org.spongycastle.math.ec.custom.djb;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.AbstractFp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.encoders.Hex;

public class Curve25519
  extends ECCurve.AbstractFp
{
  public static final BigInteger aFA = Nat256.ﾞ(Curve25519Field.aIX);
  protected Curve25519Point bde = new Curve25519Point(this, null, null);
  
  public Curve25519()
  {
    super(aFA);
    this.bck = ι(new BigInteger(1, Hex.ᵥ("2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144")));
    this.bcl = ι(new BigInteger(1, Hex.ᵥ("7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864")));
    this.bcm = new BigInteger(1, Hex.ᵥ("1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"));
    this.bcn = BigInteger.valueOf(8L);
    this.bco = 4;
  }
  
  public int getFieldSize()
  {
    return aFA.bitLength();
  }
  
  protected ECCurve pg()
  {
    return new Curve25519();
  }
  
  public ECPoint pi()
  {
    return this.bde;
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, boolean paramBoolean)
  {
    return new Curve25519Point(this, paramECFieldElement1, paramECFieldElement2, paramBoolean);
  }
  
  protected ECPoint ˊ(ECFieldElement paramECFieldElement1, ECFieldElement paramECFieldElement2, ECFieldElement[] paramArrayOfECFieldElement, boolean paramBoolean)
  {
    return new Curve25519Point(this, paramECFieldElement1, paramECFieldElement2, paramArrayOfECFieldElement, paramBoolean);
  }
  
  public ECFieldElement ι(BigInteger paramBigInteger)
  {
    return new Curve25519FieldElement(paramBigInteger);
  }
  
  public boolean ﭨ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 4: 
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.custom.djb.Curve25519
 * JD-Core Version:    0.7.0.1
 */