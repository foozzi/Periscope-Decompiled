package org.spongycastle.pqc.crypto.ntru;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.pqc.math.ntru.euclid.BigIntEuclidean;
import org.spongycastle.pqc.math.ntru.polynomial.BigDecimalPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.BigIntPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ModularResultant;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Resultant;

public class NTRUSigningKeyPairGenerator
  implements AsymmetricCipherKeyPairGenerator
{
  private NTRUSigningKeyGenerationParameters bhB;
  
  private FGBasis rD()
  {
    int k = this.bhB.aMJ;
    int m = this.bhB.bgC;
    int i = this.bhB.aOn;
    int j = this.bhB.bhm;
    int i1 = this.bhB.bhn;
    int i2 = this.bhB.bho;
    int n = this.bhB.bhy;
    int i3 = k * 2 + 1;
    boolean bool = this.bhB.bhx;
    Object localObject2;
    IntegerPolynomial localIntegerPolynomial2;
    IntegerPolynomial localIntegerPolynomial1;
    do
    {
      do
      {
        if (this.bhB.bgY == 0) {
          localObject2 = DenseTernaryPolynomial.ˊ(k, i + 1, i, new SecureRandom());
        } else {
          localObject2 = ProductFormPolynomial.ˊ(k, j, i1, i2 + 1, i2, new SecureRandom());
        }
        localIntegerPolynomial2 = ((Polynomial)localObject2).ta();
      } while ((bool) && (localIntegerPolynomial2.ᵍ(i3).bjR.equals(BigInteger.ZERO)));
      localIntegerPolynomial1 = localIntegerPolynomial2.ᴼ(m);
    } while (localIntegerPolynomial1 == null);
    Object localObject3 = localIntegerPolynomial2.sT();
    Object localObject1;
    IntegerPolynomial localIntegerPolynomial3;
    Object localObject7;
    do
    {
      do
      {
        if (this.bhB.bgY == 0) {
          localObject1 = DenseTernaryPolynomial.ˊ(k, i + 1, i, new SecureRandom());
        } else {
          localObject1 = ProductFormPolynomial.ˊ(k, j, i1, i2 + 1, i2, new SecureRandom());
        }
        localIntegerPolynomial3 = ((Polynomial)localObject1).ta();
      } while (((bool) && (localIntegerPolynomial3.ᵍ(i3).bjR.equals(BigInteger.ZERO))) || (localIntegerPolynomial3.ᴼ(m) == null));
      localObject6 = localIntegerPolynomial3.sT();
      localObject7 = BigIntEuclidean.ͺ(((Resultant)localObject3).bjR, ((Resultant)localObject6).bjR);
    } while (!((BigIntEuclidean)localObject7).bjv.equals(BigInteger.ONE));
    Object localObject4 = (BigIntPolynomial)((Resultant)localObject3).bjQ.clone();
    ((BigIntPolynomial)localObject4).י(((BigIntEuclidean)localObject7).aFO.multiply(BigInteger.valueOf(m)));
    Object localObject5 = (BigIntPolynomial)((Resultant)localObject6).bjQ.clone();
    ((BigIntPolynomial)localObject5).י(((BigIntEuclidean)localObject7).aPZ.multiply(BigInteger.valueOf(-m)));
    if (this.bhB.bhA == 0)
    {
      localObject3 = new int[k];
      localObject6 = new int[k];
      localObject3[0] = localIntegerPolynomial2.bjG[0];
      localObject6[0] = localIntegerPolynomial3.bjG[0];
      i = 1;
      while (i < k)
      {
        localObject3[i] = localIntegerPolynomial2.bjG[(k - i)];
        localObject6[i] = localIntegerPolynomial3.bjG[(k - i)];
        i += 1;
      }
      localObject3 = new IntegerPolynomial((int[])localObject3);
      localObject6 = new IntegerPolynomial((int[])localObject6);
      localObject7 = ((Polynomial)localObject2).ˊ((IntegerPolynomial)localObject3);
      ((IntegerPolynomial)localObject7).ˎ(((Polynomial)localObject1).ˊ((IntegerPolynomial)localObject6));
      localObject7 = ((IntegerPolynomial)localObject7).sT();
      localObject3 = ((IntegerPolynomial)localObject3).ˋ((BigIntPolynomial)localObject5);
      ((BigIntPolynomial)localObject3).ˏ(((IntegerPolynomial)localObject6).ˋ((BigIntPolynomial)localObject4));
      localObject3 = ((BigIntPolynomial)localObject3).ˋ(((Resultant)localObject7).bjQ);
      ((BigIntPolynomial)localObject3).ٴ(((Resultant)localObject7).bjR);
    }
    else
    {
      j = 0;
      i = 1;
      while (i < k)
      {
        j += 1;
        i *= 10;
      }
      localObject3 = ((Resultant)localObject3).bjQ.ˊ(new BigDecimal(((Resultant)localObject3).bjR), ((BigIntPolynomial)localObject5).sM() + 1 + j);
      localObject6 = ((Resultant)localObject6).bjQ.ˊ(new BigDecimal(((Resultant)localObject6).bjR), ((BigIntPolynomial)localObject4).sM() + 1 + j);
      localObject3 = ((BigDecimalPolynomial)localObject3).ˊ((BigIntPolynomial)localObject5);
      ((BigDecimalPolynomial)localObject3).ˎ(((BigDecimalPolynomial)localObject6).ˊ((BigIntPolynomial)localObject4));
      ((BigDecimalPolynomial)localObject3).sK();
      localObject3 = ((BigDecimalPolynomial)localObject3).sL();
    }
    localObject5 = (BigIntPolynomial)((BigIntPolynomial)localObject5).clone();
    ((BigIntPolynomial)localObject5).ᐝ(((Polynomial)localObject2).ˋ((BigIntPolynomial)localObject3));
    Object localObject6 = (BigIntPolynomial)((BigIntPolynomial)localObject4).clone();
    ((BigIntPolynomial)localObject6).ᐝ(((Polynomial)localObject1).ˋ((BigIntPolynomial)localObject3));
    localObject4 = new IntegerPolynomial((BigIntPolynomial)localObject5);
    localObject5 = new IntegerPolynomial((BigIntPolynomial)localObject6);
    ˊ(localIntegerPolynomial2, localIntegerPolynomial3, (IntegerPolynomial)localObject4, (IntegerPolynomial)localObject5, k);
    if (n == 0)
    {
      localObject3 = localObject4;
      localIntegerPolynomial1 = ((Polynomial)localObject1).ˊ(localIntegerPolynomial1, m);
      localObject1 = localObject3;
      localObject3 = localIntegerPolynomial1;
    }
    else
    {
      localObject3 = ((IntegerPolynomial)localObject4).ˊ(localIntegerPolynomial1, m);
    }
    ((IntegerPolynomial)localObject3).ẋ(m);
    return new FGBasis((Polynomial)localObject2, (Polynomial)localObject1, (IntegerPolynomial)localObject3, (IntegerPolynomial)localObject4, (IntegerPolynomial)localObject5, this.bhB);
  }
  
  private void ˊ(IntegerPolynomial paramIntegerPolynomial1, IntegerPolynomial paramIntegerPolynomial2, IntegerPolynomial paramIntegerPolynomial3, IntegerPolynomial paramIntegerPolynomial4, int paramInt)
  {
    int j = 0;
    int i = 0;
    while (i < paramInt)
    {
      j += paramInt * 2 * (paramIntegerPolynomial1.bjG[i] * paramIntegerPolynomial1.bjG[i] + paramIntegerPolynomial2.bjG[i] * paramIntegerPolynomial2.bjG[i]);
      i += 1;
    }
    int n = j - 4;
    IntegerPolynomial localIntegerPolynomial1 = (IntegerPolynomial)paramIntegerPolynomial1.clone();
    IntegerPolynomial localIntegerPolynomial2 = (IntegerPolynomial)paramIntegerPolynomial2.clone();
    i = 0;
    for (int k = 0; (k < paramInt) && (i < paramInt); k = j)
    {
      int m = 0;
      j = 0;
      while (j < paramInt)
      {
        m += paramInt * 4 * (paramIntegerPolynomial3.bjG[j] * paramIntegerPolynomial1.bjG[j] + paramIntegerPolynomial4.bjG[j] * paramIntegerPolynomial2.bjG[j]);
        j += 1;
      }
      m -= (paramIntegerPolynomial3.sV() + paramIntegerPolynomial4.sV()) * 4;
      if (m > n)
      {
        paramIntegerPolynomial3.ˏ(localIntegerPolynomial1);
        paramIntegerPolynomial4.ˏ(localIntegerPolynomial2);
        j = k + 1;
        i = 0;
      }
      else
      {
        j = k;
        if (m < -n)
        {
          paramIntegerPolynomial3.ˎ(localIntegerPolynomial1);
          paramIntegerPolynomial4.ˎ(localIntegerPolynomial2);
          j = k + 1;
          i = 0;
        }
      }
      i += 1;
      localIntegerPolynomial1.sZ();
      localIntegerPolynomial2.sZ();
    }
  }
  
  public AsymmetricCipherKeyPair iF()
  {
    NTRUSigningPublicKeyParameters localNTRUSigningPublicKeyParameters = null;
    Object localObject = Executors.newCachedThreadPool();
    ArrayList localArrayList = new ArrayList();
    int i = this.bhB.bhp;
    while (i >= 0)
    {
      localArrayList.add(((ExecutorService)localObject).submit(new BasisGenerationTask(null)));
      i -= 1;
    }
    ((ExecutorService)localObject).shutdown();
    localObject = new ArrayList();
    i = this.bhB.bhp;
    while (i >= 0)
    {
      Future localFuture = (Future)localArrayList.get(i);
      try
      {
        ((List)localObject).add(localFuture.get());
        if (i == this.bhB.bhp) {
          localNTRUSigningPublicKeyParameters = new NTRUSigningPublicKeyParameters(((NTRUSigningPrivateKeyParameters.Basis)localFuture.get()).bhd, this.bhB.rB());
        }
      }
      catch (Exception localException)
      {
        throw new IllegalStateException(localException);
      }
      i -= 1;
    }
    return new AsymmetricCipherKeyPair(localException, new NTRUSigningPrivateKeyParameters((List)localObject, localException));
  }
  
  public NTRUSigningPrivateKeyParameters.Basis rE()
  {
    for (;;)
    {
      FGBasis localFGBasis = rD();
      if (localFGBasis.rG()) {
        return localFGBasis;
      }
    }
  }
  
  class BasisGenerationTask
    implements Callable<NTRUSigningPrivateKeyParameters.Basis>
  {
    private BasisGenerationTask() {}
    
    public NTRUSigningPrivateKeyParameters.Basis rF()
    {
      return NTRUSigningKeyPairGenerator.this.rE();
    }
  }
  
  public class FGBasis
    extends NTRUSigningPrivateKeyParameters.Basis
  {
    public IntegerPolynomial bhD;
    public IntegerPolynomial bhE;
    
    FGBasis(Polynomial paramPolynomial1, Polynomial paramPolynomial2, IntegerPolynomial paramIntegerPolynomial1, IntegerPolynomial paramIntegerPolynomial2, IntegerPolynomial paramIntegerPolynomial3, NTRUSigningKeyGenerationParameters paramNTRUSigningKeyGenerationParameters)
    {
      super(paramPolynomial2, paramIntegerPolynomial1, paramNTRUSigningKeyGenerationParameters);
      this.bhD = paramIntegerPolynomial2;
      this.bhE = paramIntegerPolynomial3;
    }
    
    boolean rG()
    {
      double d = this.bhB.bhw;
      int i = this.bhB.bgC;
      return (this.bhD.ノ(i) < d) && (this.bhE.ノ(i) < d);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUSigningKeyPairGenerator
 * JD-Core Version:    0.7.0.1
 */