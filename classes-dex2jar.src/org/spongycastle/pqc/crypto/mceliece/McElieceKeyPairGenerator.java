package org.spongycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.KeyGenerationParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.GoppaCode;
import org.spongycastle.pqc.math.linearalgebra.GoppaCode.MaMaPe;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2m;

public class McElieceKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private SecureRandom aFa;
  private int aQb;
  private int avL;
  private int bdK;
  private int bfW;
  private McElieceKeyGenerationParameters bgf;
  private boolean initialized = false;
  
  private AsymmetricCipherKeyPair qJ()
  {
    if (!this.initialized) {
      qK();
    }
    GF2mField localGF2mField = new GF2mField(this.avL, this.bfW);
    PolynomialGF2mSmallM localPolynomialGF2mSmallM = new PolynomialGF2mSmallM(localGF2mField, this.bdK, 'I', this.aFa);
    PolynomialGF2mSmallM[] arrayOfPolynomialGF2mSmallM = new PolynomialRingGF2m(localGF2mField, localPolynomialGF2mSmallM).sH();
    GF2Matrix localGF2Matrix1 = GoppaCode.ˊ(localGF2mField, localPolynomialGF2mSmallM);
    Object localObject1 = GoppaCode.ˊ(localGF2Matrix1, this.aFa);
    GF2Matrix localGF2Matrix2 = ((GoppaCode.MaMaPe)localObject1).sB();
    localObject1 = ((GoppaCode.MaMaPe)localObject1).sC();
    Object localObject2 = (GF2Matrix)localGF2Matrix2.se();
    localGF2Matrix2 = ((GF2Matrix)localObject2).sc();
    int i = ((GF2Matrix)localObject2).getNumRows();
    localObject2 = GF2Matrix.ˏ(i, this.aFa);
    Permutation localPermutation = new Permutation(this.aQb, this.aFa);
    localGF2Matrix2 = (GF2Matrix)((GF2Matrix)localObject2[0].ˊ(localGF2Matrix2)).ˊ(localPermutation);
    return new AsymmetricCipherKeyPair(new McEliecePublicKeyParameters("1.3.6.1.4.1.8301.3.1.3.4.1", this.aQb, this.bdK, localGF2Matrix2, this.bgf.rr()), new McEliecePrivateKeyParameters("1.3.6.1.4.1.8301.3.1.3.4.1", this.aQb, i, localGF2mField, localPolynomialGF2mSmallM, localObject2[1], (Permutation)localObject1, localPermutation, localGF2Matrix1, arrayOfPolynomialGF2mSmallM, this.bgf.rr()));
  }
  
  private void qK()
  {
    ˋ(new McElieceKeyGenerationParameters(new SecureRandom(), new McElieceParameters()));
  }
  
  private void ˋ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.bgf = ((McElieceKeyGenerationParameters)paramKeyGenerationParameters);
    this.aFa = new SecureRandom();
    this.avL = this.bgf.rr().getM();
    this.aQb = this.bgf.rr().kC();
    this.bdK = this.bgf.rr().rj();
    this.bfW = this.bgf.rr().rs();
    this.initialized = true;
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    return qJ();
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    ˋ(paramKeyGenerationParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */