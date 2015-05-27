package org.spongycastle.pqc.crypto.ntru;

import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial;
import org.spongycastle.pqc.math.ntru.util.Util;

public class NTRUEncryptionKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private NTRUEncryptionKeyGenerationParameters bgZ;
  
  public AsymmetricCipherKeyPair iF()
  {
    int i = this.bgZ.aMJ;
    int j = this.bgZ.bgC;
    int k = this.bgZ.bgD;
    int m = this.bgZ.bgE;
    int n = this.bgZ.bgF;
    int i1 = this.bgZ.bgG;
    int i2 = this.bgZ.bgL;
    boolean bool1 = this.bgZ.bgX;
    boolean bool2 = this.bgZ.bgW;
    Object localObject1 = null;
    Object localObject2;
    Object localObject3;
    do
    {
      for (;;)
      {
        if (bool1)
        {
          if (this.bgZ.bgY == 0) {
            localObject2 = Util.ˊ(i, k, k, bool2, this.bgZ.iN());
          } else {
            localObject2 = ProductFormPolynomial.ˊ(i, m, n, i1, i1, this.bgZ.iN());
          }
          localIntegerPolynomial = ((Polynomial)localObject2).ta();
          localIntegerPolynomial.ᵚ(3);
          localObject3 = localIntegerPolynomial.bjG;
          localObject3[0] += 1;
          break;
        }
        if (this.bgZ.bgY == 0) {
          localObject1 = Util.ˊ(i, k, k - 1, bool2, this.bgZ.iN());
        } else {
          localObject1 = ProductFormPolynomial.ˊ(i, m, n, i1, i1 - 1, this.bgZ.iN());
        }
        localIntegerPolynomial = ((Polynomial)localObject1).ta();
        localObject3 = localIntegerPolynomial.sS();
        localObject2 = localObject1;
        localObject1 = localObject3;
        if (localObject3 != null) {
          break;
        }
        localObject1 = localObject3;
      }
      localObject3 = localIntegerPolynomial.ᴼ(j);
    } while (localObject3 == null);
    if (bool1)
    {
      localObject1 = new IntegerPolynomial(i);
      ((IntegerPolynomial)localObject1).bjG[0] = 1;
    }
    DenseTernaryPolynomial localDenseTernaryPolynomial;
    do
    {
      localDenseTernaryPolynomial = DenseTernaryPolynomial.ˊ(i, i2, i2 - 1, this.bgZ.iN());
    } while (localDenseTernaryPolynomial.ᴼ(j) == null);
    IntegerPolynomial localIntegerPolynomial = localDenseTernaryPolynomial.ˊ((IntegerPolynomial)localObject3, j);
    localIntegerPolynomial.ᵦ(j);
    localIntegerPolynomial.〵(j);
    localDenseTernaryPolynomial.clear();
    ((IntegerPolynomial)localObject3).clear();
    localObject1 = new NTRUEncryptionPrivateKeyParameters(localIntegerPolynomial, (Polynomial)localObject2, (IntegerPolynomial)localObject1, this.bgZ.rx());
    return new AsymmetricCipherKeyPair(new NTRUEncryptionPublicKeyParameters(localIntegerPolynomial, this.bgZ.rx()), (AsymmetricKeyParameter)localObject1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUEncryptionKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */