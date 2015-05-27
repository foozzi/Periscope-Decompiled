package org.spongycastle.pqc.crypto.ntru;

import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.math.ntru.polynomial.DenseTernaryPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.IntegerPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.Polynomial;
import org.spongycastle.pqc.math.ntru.polynomial.ProductFormPolynomial;
import org.spongycastle.pqc.math.ntru.polynomial.SparseTernaryPolynomial;
import org.spongycastle.util.Arrays;

public class NTRUEngine
  implements AsymmetricBlockCipher
{
  private boolean aEW;
  private SecureRandom aFa;
  private NTRUEncryptionParameters bha;
  private NTRUEncryptionPublicKeyParameters bhe;
  private NTRUEncryptionPrivateKeyParameters bhf;
  
  private byte[] copyOf(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    if (paramInt >= paramArrayOfByte.length) {
      paramInt = paramArrayOfByte.length;
    }
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramInt);
    return arrayOfByte;
  }
  
  private void ˊ(Digest paramDigest, int paramInt)
  {
    paramDigest.update((byte)(paramInt >> 24));
    paramDigest.update((byte)(paramInt >> 16));
    paramDigest.update((byte)(paramInt >> 8));
    paramDigest.update((byte)paramInt);
  }
  
  private byte[] ˊ(Digest paramDigest, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramDigest.iJ()];
    paramDigest.update(paramArrayOfByte, 0, paramArrayOfByte.length);
    paramDigest.doFinal(arrayOfByte, 0);
    return arrayOfByte;
  }
  
  private byte[] ˊ(byte[] paramArrayOfByte, NTRUEncryptionPrivateKeyParameters paramNTRUEncryptionPrivateKeyParameters)
  {
    Object localObject1 = paramNTRUEncryptionPrivateKeyParameters.bhb;
    Object localObject2 = paramNTRUEncryptionPrivateKeyParameters.bhc;
    paramNTRUEncryptionPrivateKeyParameters = paramNTRUEncryptionPrivateKeyParameters.bhd;
    int m = this.bha.aMJ;
    int i = this.bha.bgC;
    int i2 = this.bha.bgO;
    int j = this.bha.bgN;
    int n = this.bha.bgR;
    int k = this.bha.bgS;
    int i1 = this.bha.bgT;
    boolean bool = this.bha.bgU;
    byte[] arrayOfByte1 = this.bha.bgV;
    if (j > 255) {
      throw new DataLengthException("maxMsgLenBytes values bigger than 255 are not supported");
    }
    i2 /= 8;
    paramArrayOfByte = IntegerPolynomial.ᐠ(paramArrayOfByte, m, i);
    localObject1 = ˊ(paramArrayOfByte, (Polynomial)localObject1, (IntegerPolynomial)localObject2);
    if (((IntegerPolynomial)localObject1).冫(-1) < n) {
      throw new InvalidCipherTextException("Less than dm0 coefficients equal -1");
    }
    if (((IntegerPolynomial)localObject1).冫(0) < n) {
      throw new InvalidCipherTextException("Less than dm0 coefficients equal 0");
    }
    if (((IntegerPolynomial)localObject1).冫(1) < n) {
      throw new InvalidCipherTextException("Less than dm0 coefficients equal 1");
    }
    paramArrayOfByte = (IntegerPolynomial)paramArrayOfByte.clone();
    paramArrayOfByte.ˏ((IntegerPolynomial)localObject1);
    paramArrayOfByte.ẋ(i);
    localObject2 = (IntegerPolynomial)paramArrayOfByte.clone();
    ((IntegerPolynomial)localObject2).ẋ(4);
    ((IntegerPolynomial)localObject1).ˏ(ˋ(((IntegerPolynomial)localObject2).ᴳ(4), m, i1, bool));
    ((IntegerPolynomial)localObject1).sU();
    localObject2 = ((IntegerPolynomial)localObject1).sR();
    byte[] arrayOfByte2 = new byte[i2];
    System.arraycopy(localObject2, 0, arrayOfByte2, 0, i2);
    m = localObject2[i2] & 0xFF;
    if (m > j) {
      throw new InvalidCipherTextException("Message too long: " + m + ">" + j);
    }
    localObject1 = new byte[m];
    System.arraycopy(localObject2, i2 + 1, localObject1, 0, m);
    byte[] arrayOfByte3 = new byte[localObject2.length - (i2 + 1 + m)];
    System.arraycopy(localObject2, i2 + 1 + m, arrayOfByte3, 0, arrayOfByte3.length);
    if (!Arrays.ﹺ(arrayOfByte3, new byte[arrayOfByte3.length])) {
      throw new InvalidCipherTextException("The message is not followed by zeroes");
    }
    paramNTRUEncryptionPrivateKeyParameters = ⁱ(ˊ(arrayOfByte1, (byte[])localObject1, m, arrayOfByte2, copyOf(paramNTRUEncryptionPrivateKeyParameters.ᴳ(i), k / 8)), (byte[])localObject1).ˊ(paramNTRUEncryptionPrivateKeyParameters);
    paramNTRUEncryptionPrivateKeyParameters.ẋ(i);
    if (!paramNTRUEncryptionPrivateKeyParameters.equals(paramArrayOfByte)) {
      throw new InvalidCipherTextException("Invalid message encoding");
    }
    return localObject1;
  }
  
  private byte[] ˊ(byte[] paramArrayOfByte, NTRUEncryptionPublicKeyParameters paramNTRUEncryptionPublicKeyParameters)
  {
    paramNTRUEncryptionPublicKeyParameters = paramNTRUEncryptionPublicKeyParameters.bhd;
    int i = this.bha.aMJ;
    int j = this.bha.bgC;
    int k = this.bha.bgN;
    int m = this.bha.bgO;
    int n = this.bha.bgP;
    int i1 = this.bha.bgR;
    int i2 = this.bha.bgS;
    int i3 = this.bha.bgT;
    boolean bool = this.bha.bgU;
    byte[] arrayOfByte = this.bha.bgV;
    int i4 = paramArrayOfByte.length;
    if (k > 255) {
      throw new IllegalArgumentException("llen values bigger than 1 are not supported");
    }
    if (i4 > k) {
      throw new DataLengthException("Message too long: " + i4 + ">" + k);
    }
    Object localObject2;
    Object localObject1;
    do
    {
      localObject2 = new byte[m / 8];
      this.aFa.nextBytes((byte[])localObject2);
      localObject1 = new byte[k + 1 - i4];
      Object localObject3 = new byte[n / 8];
      System.arraycopy(localObject2, 0, localObject3, 0, localObject2.length);
      localObject3[localObject2.length] = ((byte)i4);
      System.arraycopy(paramArrayOfByte, 0, localObject3, localObject2.length + 1, paramArrayOfByte.length);
      System.arraycopy(localObject1, 0, localObject3, localObject2.length + 1 + paramArrayOfByte.length, localObject1.length);
      localObject1 = IntegerPolynomial.ᕀ((byte[])localObject3, i);
      localObject2 = ⁱ(ˊ(arrayOfByte, paramArrayOfByte, i4, (byte[])localObject2, copyOf(paramNTRUEncryptionPublicKeyParameters.ᴳ(j), i2 / 8)), (byte[])localObject3).ˊ(paramNTRUEncryptionPublicKeyParameters, j);
      localObject3 = (IntegerPolynomial)((IntegerPolynomial)localObject2).clone();
      ((IntegerPolynomial)localObject3).ẋ(4);
      ((IntegerPolynomial)localObject1).ˎ(ˋ(((IntegerPolynomial)localObject3).ᴳ(4), i, i3, bool));
      ((IntegerPolynomial)localObject1).sU();
    } while ((((IntegerPolynomial)localObject1).冫(-1) < i1) || (((IntegerPolynomial)localObject1).冫(0) < i1) || (((IntegerPolynomial)localObject1).冫(1) < i1));
    ((IntegerPolynomial)localObject2).ˎ((IntegerPolynomial)localObject1, j);
    ((IntegerPolynomial)localObject2).〵(j);
    return ((IntegerPolynomial)localObject2).ᴳ(j);
  }
  
  private byte[] ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramInt + paramArrayOfByte3.length + paramArrayOfByte4.length];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
    System.arraycopy(paramArrayOfByte3, 0, arrayOfByte, paramArrayOfByte1.length + paramArrayOfByte2.length, paramArrayOfByte3.length);
    System.arraycopy(paramArrayOfByte4, 0, arrayOfByte, paramArrayOfByte1.length + paramArrayOfByte2.length + paramArrayOfByte3.length, paramArrayOfByte4.length);
    return arrayOfByte;
  }
  
  private int[] ˊ(IndexGenerator paramIndexGenerator, int paramInt)
  {
    int[] arrayOfInt = new int[this.bha.aMJ];
    int i = -1;
    while (i <= 1)
    {
      int k;
      for (int j = 0; j < paramInt; j = k)
      {
        int m = paramIndexGenerator.nextIndex();
        k = j;
        if (arrayOfInt[m] == 0)
        {
          arrayOfInt[m] = i;
          k = j + 1;
        }
      }
      i += 2;
    }
    return arrayOfInt;
  }
  
  private IntegerPolynomial ˋ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Digest localDigest = this.bha.bgs;
    int j = localDigest.iJ();
    byte[] arrayOfByte = new byte[paramInt2 * j];
    if (paramBoolean) {
      paramArrayOfByte = ˊ(localDigest, paramArrayOfByte);
    }
    int i = 0;
    while (i < paramInt2)
    {
      localDigest.update(paramArrayOfByte, 0, paramArrayOfByte.length);
      ˊ(localDigest, i);
      System.arraycopy(ˏ(localDigest), 0, arrayOfByte, i * j, j);
      i += 1;
    }
    IntegerPolynomial localIntegerPolynomial = new IntegerPolynomial(paramInt1);
    for (;;)
    {
      paramInt2 = 0;
      j = 0;
      while (j != arrayOfByte.length)
      {
        int m = arrayOfByte[j] & 0xFF;
        if (m < 243)
        {
          int k = 0;
          while (k < 4)
          {
            int n = m % 3;
            localIntegerPolynomial.bjG[paramInt2] = (n - 1);
            paramInt2 += 1;
            if (paramInt2 == paramInt1) {
              return localIntegerPolynomial;
            }
            m = (m - n) / 3;
            k += 1;
          }
          localIntegerPolynomial.bjG[paramInt2] = (m - 1);
          k = paramInt2 + 1;
          paramInt2 = k;
          if (k == paramInt1) {
            return localIntegerPolynomial;
          }
        }
        j += 1;
      }
      if (paramInt2 >= paramInt1) {
        return localIntegerPolynomial;
      }
      localDigest.update(paramArrayOfByte, 0, paramArrayOfByte.length);
      ˊ(localDigest, i);
      arrayOfByte = ˏ(localDigest);
      i += 1;
    }
  }
  
  private byte[] ˏ(Digest paramDigest)
  {
    byte[] arrayOfByte = new byte[paramDigest.iJ()];
    paramDigest.doFinal(arrayOfByte, 0);
    return arrayOfByte;
  }
  
  private int Γ(int paramInt)
  {
    if (paramInt == 2048) {
      return 11;
    }
    throw new IllegalStateException("log2 not fully implemented");
  }
  
  private Polynomial ⁱ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1 = new IndexGenerator(paramArrayOfByte1, this.bha);
    if (this.bha.bgY == 1) {
      return new ProductFormPolynomial(new SparseTernaryPolynomial(ˊ(paramArrayOfByte1, this.bha.bgI)), new SparseTernaryPolynomial(ˊ(paramArrayOfByte1, this.bha.bgJ)), new SparseTernaryPolynomial(ˊ(paramArrayOfByte1, this.bha.bgK)));
    }
    int i = this.bha.bgH;
    boolean bool = this.bha.bgW;
    paramArrayOfByte1 = ˊ(paramArrayOfByte1, i);
    if (bool) {
      return new SparseTernaryPolynomial(paramArrayOfByte1);
    }
    return new DenseTernaryPolynomial(paramArrayOfByte1);
  }
  
  public int iB()
  {
    return this.bha.bgN;
  }
  
  public int iC()
  {
    return (this.bha.aMJ * Γ(this.bha.bgC) + 7) / 8;
  }
  
  protected IntegerPolynomial ˊ(IntegerPolynomial paramIntegerPolynomial1, Polynomial paramPolynomial, IntegerPolynomial paramIntegerPolynomial2)
  {
    if (this.bha.bgX)
    {
      paramPolynomial = paramPolynomial.ˊ(paramIntegerPolynomial1, this.bha.bgC);
      paramPolynomial.ᵚ(3);
      paramPolynomial.ˎ(paramIntegerPolynomial1);
      paramIntegerPolynomial1 = paramPolynomial;
    }
    else
    {
      paramIntegerPolynomial1 = paramPolynomial.ˊ(paramIntegerPolynomial1, this.bha.bgC);
    }
    paramIntegerPolynomial1.亠(this.bha.bgC);
    paramIntegerPolynomial1.sU();
    if (!this.bha.bgX) {
      paramIntegerPolynomial1 = new DenseTernaryPolynomial(paramIntegerPolynomial1).ˊ(paramIntegerPolynomial2, 3);
    }
    paramIntegerPolynomial1.亠(3);
    return paramIntegerPolynomial1;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    if (paramBoolean)
    {
      if ((paramCipherParameters instanceof ParametersWithRandom))
      {
        paramCipherParameters = (ParametersWithRandom)paramCipherParameters;
        this.aFa = paramCipherParameters.iN();
        this.bhe = ((NTRUEncryptionPublicKeyParameters)paramCipherParameters.lh());
      }
      else
      {
        this.aFa = new SecureRandom();
        this.bhe = ((NTRUEncryptionPublicKeyParameters)paramCipherParameters);
      }
      this.bha = this.bhe.rz();
      return;
    }
    this.bhf = ((NTRUEncryptionPrivateKeyParameters)paramCipherParameters);
    this.bha = this.bhf.rz();
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    if (this.aEW) {
      return ˊ(arrayOfByte, this.bhe);
    }
    return ˊ(arrayOfByte, this.bhf);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.ntru.NTRUEngine
 * JD-Core Version:    0.7.0.1
 */