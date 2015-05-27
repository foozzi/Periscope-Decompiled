package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2Vector;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.GoppaCode;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.spongycastle.pqc.math.linearalgebra.Vector;

public final class McElieceCCA2Primitives
{
  public static GF2Vector ˊ(McElieceCCA2PublicKeyParameters paramMcElieceCCA2PublicKeyParameters, GF2Vector paramGF2Vector1, GF2Vector paramGF2Vector2)
  {
    return (GF2Vector)paramMcElieceCCA2PublicKeyParameters.rq().ˋ(paramGF2Vector1).ˏ(paramGF2Vector2);
  }
  
  public static GF2Vector[] ˊ(McElieceCCA2PrivateKeyParameters paramMcElieceCCA2PrivateKeyParameters, GF2Vector paramGF2Vector)
  {
    int i = paramMcElieceCCA2PrivateKeyParameters.ri();
    Permutation localPermutation = paramMcElieceCCA2PrivateKeyParameters.rm();
    GF2mField localGF2mField = paramMcElieceCCA2PrivateKeyParameters.rk();
    PolynomialGF2mSmallM localPolynomialGF2mSmallM = paramMcElieceCCA2PrivateKeyParameters.rl();
    GF2Matrix localGF2Matrix = paramMcElieceCCA2PrivateKeyParameters.rn();
    paramMcElieceCCA2PrivateKeyParameters = paramMcElieceCCA2PrivateKeyParameters.ro();
    paramGF2Vector = (GF2Vector)paramGF2Vector.ˋ(localPermutation.sE());
    paramMcElieceCCA2PrivateKeyParameters = GoppaCode.ˊ((GF2Vector)localGF2Matrix.ˎ(paramGF2Vector), localGF2mField, localPolynomialGF2mSmallM, paramMcElieceCCA2PrivateKeyParameters);
    paramGF2Vector = (GF2Vector)((GF2Vector)paramGF2Vector.ˏ(paramMcElieceCCA2PrivateKeyParameters)).ˋ(localPermutation);
    paramMcElieceCCA2PrivateKeyParameters = (GF2Vector)paramMcElieceCCA2PrivateKeyParameters.ˋ(localPermutation);
    return new GF2Vector[] { paramGF2Vector.ە(i), paramMcElieceCCA2PrivateKeyParameters };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceCCA2Primitives
 * JD-Core Version:    0.7.0.1
 */