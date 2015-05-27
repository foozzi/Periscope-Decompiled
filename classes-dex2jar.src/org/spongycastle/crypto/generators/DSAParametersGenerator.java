package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.params.DSAParameterGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAValidationParameters;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.encoders.Hex;

public class DSAParametersGenerator
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private static final BigInteger ZERO = BigInteger.valueOf(0L);
  private static final BigInteger aKc = BigInteger.valueOf(2L);
  private Digest aFH;
  private SecureRandom aFa;
  private int aMG;
  private int aMI;
  private int aMJ;
  private boolean aMK;
  private int aML;
  
  public DSAParametersGenerator()
  {
    this(new SHA1Digest());
  }
  
  public DSAParametersGenerator(Digest paramDigest)
  {
    this.aFH = paramDigest;
  }
  
  private DSAParameters jQ()
  {
    byte[] arrayOfByte1 = new byte[20];
    byte[] arrayOfByte2 = new byte[20];
    byte[] arrayOfByte3 = new byte[20];
    byte[] arrayOfByte4 = new byte[20];
    int k = (this.aMI - 1) / 160;
    byte[] arrayOfByte5 = new byte[this.aMI / 8];
    if (!(this.aFH instanceof SHA1Digest)) {
      throw new IllegalStateException("can only use SHA-1 for generating FIPS 186-2 parameters");
    }
    for (;;)
    {
      this.aFa.nextBytes(arrayOfByte1);
      ˊ(this.aFH, arrayOfByte1, arrayOfByte2);
      System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, arrayOfByte1.length);
      יִ(arrayOfByte3);
      ˊ(this.aFH, arrayOfByte3, arrayOfByte3);
      int i = 0;
      while (i != arrayOfByte4.length)
      {
        arrayOfByte4[i] = ((byte)(arrayOfByte2[i] ^ arrayOfByte3[i]));
        i += 1;
      }
      arrayOfByte4[0] = ((byte)(arrayOfByte4[0] | 0xFFFFFF80));
      arrayOfByte4[19] = ((byte)(arrayOfByte4[19] | 0x1));
      BigInteger localBigInteger1 = new BigInteger(1, arrayOfByte4);
      if (localBigInteger1.isProbablePrime(this.aMG))
      {
        byte[] arrayOfByte6 = Arrays.І(arrayOfByte1);
        יִ(arrayOfByte6);
        i = 0;
        while (i < 4096)
        {
          int j = 0;
          while (j < k)
          {
            יִ(arrayOfByte6);
            ˊ(this.aFH, arrayOfByte6, arrayOfByte2);
            System.arraycopy(arrayOfByte2, 0, arrayOfByte5, arrayOfByte5.length - (j + 1) * arrayOfByte2.length, arrayOfByte2.length);
            j += 1;
          }
          יִ(arrayOfByte6);
          ˊ(this.aFH, arrayOfByte6, arrayOfByte2);
          System.arraycopy(arrayOfByte2, arrayOfByte2.length - (arrayOfByte5.length - arrayOfByte2.length * k), arrayOfByte5, 0, arrayOfByte5.length - arrayOfByte2.length * k);
          arrayOfByte5[0] = ((byte)(arrayOfByte5[0] | 0xFFFFFF80));
          BigInteger localBigInteger2 = new BigInteger(1, arrayOfByte5);
          localBigInteger2 = localBigInteger2.subtract(localBigInteger2.mod(localBigInteger1.shiftLeft(1)).subtract(ONE));
          if ((localBigInteger2.bitLength() == this.aMI) && (localBigInteger2.isProbablePrime(this.aMG))) {
            return new DSAParameters(localBigInteger2, localBigInteger1, ˋ(localBigInteger2, localBigInteger1, this.aFa), new DSAValidationParameters(arrayOfByte1, i));
          }
          i += 1;
        }
      }
    }
  }
  
  private DSAParameters jR()
  {
    Digest localDigest = this.aFH;
    int m = localDigest.iJ() * 8;
    byte[] arrayOfByte1 = new byte[this.aMJ / 8];
    int n = (this.aMI - 1) / m;
    int i1 = this.aMI;
    byte[] arrayOfByte2 = new byte[localDigest.iJ()];
    for (;;)
    {
      this.aFa.nextBytes(arrayOfByte1);
      ˊ(localDigest, arrayOfByte1, arrayOfByte2);
      BigInteger localBigInteger1 = new BigInteger(1, arrayOfByte2).mod(ONE.shiftLeft(this.aMJ - 1));
      BigInteger localBigInteger4 = ONE.shiftLeft(this.aMJ - 1).add(localBigInteger1).add(ONE).subtract(localBigInteger1.mod(aKc));
      if (localBigInteger4.isProbablePrime(this.aMG))
      {
        byte[] arrayOfByte3 = Arrays.І(arrayOfByte1);
        int i2 = this.aMI;
        int i = 0;
        while (i < i2 * 4)
        {
          localBigInteger1 = ZERO;
          int k = 0;
          int j = 0;
          BigInteger localBigInteger2;
          while (k <= n)
          {
            יִ(arrayOfByte3);
            ˊ(localDigest, arrayOfByte3, arrayOfByte2);
            BigInteger localBigInteger3 = new BigInteger(1, arrayOfByte2);
            localBigInteger2 = localBigInteger3;
            if (k == n) {
              localBigInteger2 = localBigInteger3.mod(ONE.shiftLeft((i1 - 1) % m));
            }
            localBigInteger1 = localBigInteger1.add(localBigInteger2.shiftLeft(j));
            k += 1;
            j += m;
          }
          localBigInteger1 = localBigInteger1.add(ONE.shiftLeft(this.aMI - 1));
          localBigInteger1 = localBigInteger1.subtract(localBigInteger1.mod(localBigInteger4.shiftLeft(1)).subtract(ONE));
          if ((localBigInteger1.bitLength() == this.aMI) && (localBigInteger1.isProbablePrime(this.aMG)))
          {
            if (this.aML >= 0)
            {
              localBigInteger2 = ˊ(localDigest, localBigInteger1, localBigInteger4, arrayOfByte1, this.aML);
              if (localBigInteger2 != null) {
                return new DSAParameters(localBigInteger1, localBigInteger4, localBigInteger2, new DSAValidationParameters(arrayOfByte1, i, this.aML));
              }
            }
            return new DSAParameters(localBigInteger1, localBigInteger4, ˎ(localBigInteger1, localBigInteger4, this.aFa), new DSAValidationParameters(arrayOfByte1, i));
          }
          i += 1;
        }
      }
    }
  }
  
  private static int ɻ(int paramInt)
  {
    if (paramInt > 1024) {
      return 256;
    }
    return 160;
  }
  
  private static BigInteger ˊ(Digest paramDigest, BigInteger paramBigInteger1, BigInteger paramBigInteger2, byte[] paramArrayOfByte, int paramInt)
  {
    paramBigInteger2 = paramBigInteger1.subtract(ONE).divide(paramBigInteger2);
    Object localObject = Hex.ᵥ("6767656E");
    byte[] arrayOfByte = new byte[paramArrayOfByte.length + localObject.length + 1 + 2];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    System.arraycopy(localObject, 0, arrayOfByte, paramArrayOfByte.length, localObject.length);
    arrayOfByte[(arrayOfByte.length - 3)] = ((byte)paramInt);
    paramArrayOfByte = new byte[paramDigest.iJ()];
    paramInt = 1;
    while (paramInt < 65536)
    {
      יִ(arrayOfByte);
      ˊ(paramDigest, arrayOfByte, paramArrayOfByte);
      localObject = new BigInteger(1, paramArrayOfByte).modPow(paramBigInteger2, paramBigInteger1);
      if (((BigInteger)localObject).compareTo(aKc) >= 0) {
        return localObject;
      }
      paramInt += 1;
    }
    return null;
  }
  
  private static void ˊ(Digest paramDigest, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramDigest.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
    paramDigest.doFinal(paramArrayOfByte2, 0);
  }
  
  private static BigInteger ˋ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, SecureRandom paramSecureRandom)
  {
    paramBigInteger2 = paramBigInteger1.subtract(ONE).divide(paramBigInteger2);
    BigInteger localBigInteger1 = paramBigInteger1.subtract(aKc);
    for (;;)
    {
      BigInteger localBigInteger2 = BigIntegers.ˏ(aKc, localBigInteger1, paramSecureRandom).modPow(paramBigInteger2, paramBigInteger1);
      if (localBigInteger2.bitLength() > 1) {
        return localBigInteger2;
      }
    }
  }
  
  private static BigInteger ˎ(BigInteger paramBigInteger1, BigInteger paramBigInteger2, SecureRandom paramSecureRandom)
  {
    return ˋ(paramBigInteger1, paramBigInteger2, paramSecureRandom);
  }
  
  private static void יִ(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length - 1;
    while (j >= 0)
    {
      int i = (byte)(paramArrayOfByte[j] + 1 & 0xFF);
      paramArrayOfByte[j] = i;
      if (i != 0) {
        return;
      }
      j -= 1;
    }
  }
  
  public DSAParameters jP()
  {
    if (this.aMK) {
      return jR();
    }
    return jQ();
  }
  
  public void ˊ(int paramInt1, int paramInt2, SecureRandom paramSecureRandom)
  {
    this.aMK = false;
    this.aMI = paramInt1;
    this.aMJ = ɻ(paramInt1);
    this.aMG = paramInt2;
    this.aFa = paramSecureRandom;
  }
  
  public void ˊ(DSAParameterGenerationParameters paramDSAParameterGenerationParameters)
  {
    this.aMK = true;
    this.aMI = paramDSAParameterGenerationParameters.getL();
    this.aMJ = paramDSAParameterGenerationParameters.kC();
    this.aMG = paramDSAParameterGenerationParameters.kD();
    this.aFa = paramDSAParameterGenerationParameters.iN();
    this.aML = paramDSAParameterGenerationParameters.kE();
    if ((this.aMI < 1024) || (this.aMI > 3072) || (this.aMI % 1024 != 0)) {
      throw new IllegalArgumentException("L values must be between 1024 and 3072 and a multiple of 1024");
    }
    if ((this.aMI == 1024) && (this.aMJ != 160)) {
      throw new IllegalArgumentException("N must be 160 for L = 1024");
    }
    if ((this.aMI == 2048) && (this.aMJ != 224) && (this.aMJ != 256)) {
      throw new IllegalArgumentException("N must be 224 or 256 for L = 2048");
    }
    if ((this.aMI == 3072) && (this.aMJ != 256)) {
      throw new IllegalArgumentException("N must be 256 for L = 3072");
    }
    if (this.aFH.iJ() * 8 < this.aMJ) {
      throw new IllegalStateException("Digest output size too small for value of N");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.generators.DSAParametersGenerator
 * JD-Core Version:    0.7.0.1
 */