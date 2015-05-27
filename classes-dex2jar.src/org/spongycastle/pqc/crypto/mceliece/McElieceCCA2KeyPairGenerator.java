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

public class McElieceCCA2KeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private SecureRandom aFa;
  private int aQb;
  private int avL;
  private int bdK;
  private McElieceCCA2KeyGenerationParameters bfV;
  private int bfW;
  private boolean initialized = false;
  
  private void qK()
  {
    ˊ(new McElieceCCA2KeyGenerationParameters(new SecureRandom(), new McElieceCCA2Parameters()));
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    if (!this.initialized) {
      qK();
    }
    GF2mField localGF2mField = new GF2mField(this.avL, this.bfW);
    PolynomialGF2mSmallM localPolynomialGF2mSmallM = new PolynomialGF2mSmallM(localGF2mField, this.bdK, 'I', this.aFa);
    PolynomialGF2mSmallM[] arrayOfPolynomialGF2mSmallM = new PolynomialRingGF2m(localGF2mField, localPolynomialGF2mSmallM).sH();
    GF2Matrix localGF2Matrix1 = GoppaCode.ˊ(localGF2mField, localPolynomialGF2mSmallM);
    Object localObject = GoppaCode.ˊ(localGF2Matrix1, this.aFa);
    GF2Matrix localGF2Matrix2 = ((GoppaCode.MaMaPe)localObject).sB();
    localObject = ((GoppaCode.MaMaPe)localObject).sC();
    localGF2Matrix2 = (GF2Matrix)localGF2Matrix2.se();
    int i = localGF2Matrix2.getNumRows();
    return new AsymmetricCipherKeyPair(new McElieceCCA2PublicKeyParameters("1.3.6.1.4.1.8301.3.1.3.4.2", this.aQb, this.bdK, localGF2Matrix2, this.bfV.rg()), new McElieceCCA2PrivateKeyParameters("1.3.6.1.4.1.8301.3.1.3.4.2", this.aQb, i, localGF2mField, localPolynomialGF2mSmallM, (Permutation)localObject, localGF2Matrix1, arrayOfPolynomialGF2mSmallM, this.bfV.rg()));
  }
  
  public void ˊ(KeyGenerationParameters paramKeyGenerationParameters)
  {
    this.bfV = ((McElieceCCA2KeyGenerationParameters)paramKeyGenerationParameters);
    this.aFa = new SecureRandom();
    this.avL = this.bfV.rg().getM();
    this.aQb = this.bfV.rg().kC();
    this.bdK = this.bfV.rg().rj();
    this.bfW = this.bfV.rg().rs();
    this.initialized = true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceCCA2KeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */