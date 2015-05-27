package org.spongycastle.crypto.encodings;

import java.math.BigInteger;
import org.spongycastle.crypto.AsymmetricBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;

public class ISO9796d1Encoding
  implements AsymmetricBlockCipher
{
  private static final BigInteger aIq = BigInteger.valueOf(16L);
  private static final BigInteger aIr = BigInteger.valueOf(6L);
  private static byte[] aIs = { 14, 3, 5, 8, 9, 4, 2, 15, 0, 13, 11, 6, 7, 10, 12, 1 };
  private static byte[] aIt = { 8, 15, 6, 1, 5, 2, 11, 12, 3, 4, 13, 10, 14, 9, 0, 7 };
  private boolean aEW;
  private AsymmetricBlockCipher aIu;
  private int aIv;
  private int abc = 0;
  private BigInteger ajI;
  
  public ISO9796d1Encoding(AsymmetricBlockCipher paramAsymmetricBlockCipher)
  {
    this.aIu = paramAsymmetricBlockCipher;
  }
  
  private byte[] ʹ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte = this.aIu.ˑ(paramArrayOfByte, paramInt1, paramInt2);
    int i = 1;
    int m = (this.aIv + 13) / 16;
    paramArrayOfByte = new BigInteger(1, paramArrayOfByte);
    if (!paramArrayOfByte.mod(aIq).equals(aIr)) {
      if (this.ajI.subtract(paramArrayOfByte).mod(aIq).equals(aIr)) {
        paramArrayOfByte = this.ajI.subtract(paramArrayOfByte);
      } else {
        throw new InvalidCipherTextException("resulting integer iS or (modulus - iS) is not congruent to 6 mod 16");
      }
    }
    paramArrayOfByte = ˋ(paramArrayOfByte);
    if ((paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0xF) != 6) {
      throw new InvalidCipherTextException("invalid forcing byte in block");
    }
    paramArrayOfByte[(paramArrayOfByte.length - 1)] = ((byte)((paramArrayOfByte[(paramArrayOfByte.length - 1)] & 0xFF) >>> 4 | aIt[((paramArrayOfByte[(paramArrayOfByte.length - 2)] & 0xFF) >> 4)] << 4));
    paramArrayOfByte[0] = ((byte)(aIs[((paramArrayOfByte[1] & 0xFF) >>> 4)] << 4 | aIs[(paramArrayOfByte[1] & 0xF)]));
    int j = 0;
    paramInt2 = 0;
    paramInt1 = paramArrayOfByte.length - 1;
    while (paramInt1 >= paramArrayOfByte.length - m * 2)
    {
      int n = aIs[((paramArrayOfByte[paramInt1] & 0xFF) >>> 4)] << 4 | aIs[(paramArrayOfByte[paramInt1] & 0xF)];
      int k = j;
      if (((paramArrayOfByte[(paramInt1 - 1)] ^ n) & 0xFF) != 0) {
        if (j == 0)
        {
          k = 1;
          i = (paramArrayOfByte[(paramInt1 - 1)] ^ n) & 0xFF;
          paramInt2 = paramInt1 - 1;
        }
        else
        {
          throw new InvalidCipherTextException("invalid tsums in block");
        }
      }
      paramInt1 -= 2;
      j = k;
    }
    paramArrayOfByte[paramInt2] = 0;
    byte[] arrayOfByte = new byte[(paramArrayOfByte.length - paramInt2) / 2];
    paramInt1 = 0;
    while (paramInt1 < arrayOfByte.length)
    {
      arrayOfByte[paramInt1] = paramArrayOfByte[(paramInt1 * 2 + paramInt2 + 1)];
      paramInt1 += 1;
    }
    this.abc = (i - 1);
    return arrayOfByte;
  }
  
  private static byte[] ˋ(BigInteger paramBigInteger)
  {
    paramBigInteger = paramBigInteger.toByteArray();
    if (paramBigInteger[0] == 0)
    {
      byte[] arrayOfByte = new byte[paramBigInteger.length - 1];
      System.arraycopy(paramBigInteger, 1, arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    return paramBigInteger;
  }
  
  private byte[] ﾞ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[(this.aIv + 7) / 8];
    int k = this.abc;
    int m = (this.aIv + 13) / 16;
    int j = 0;
    while (j < m)
    {
      if (j > m - paramInt2) {
        System.arraycopy(paramArrayOfByte, paramInt1 + paramInt2 - (m - j), arrayOfByte, arrayOfByte.length - m, m - j);
      } else {
        System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, arrayOfByte.length - (j + paramInt2), paramInt2);
      }
      j += paramInt2;
    }
    paramInt1 = arrayOfByte.length - m * 2;
    while (paramInt1 != arrayOfByte.length)
    {
      int i = arrayOfByte[(arrayOfByte.length - m + paramInt1 / 2)];
      arrayOfByte[paramInt1] = ((byte)(aIs[((i & 0xFF) >>> 4)] << 4 | aIs[(i & 0xF)]));
      arrayOfByte[(paramInt1 + 1)] = i;
      paramInt1 += 2;
    }
    paramInt1 = arrayOfByte.length - paramInt2 * 2;
    arrayOfByte[paramInt1] = ((byte)(arrayOfByte[paramInt1] ^ k + 1));
    arrayOfByte[(arrayOfByte.length - 1)] = ((byte)(arrayOfByte[(arrayOfByte.length - 1)] << 4 | 0x6));
    paramInt2 = 8 - (this.aIv - 1) % 8;
    paramInt1 = 0;
    if (paramInt2 != 8)
    {
      arrayOfByte[0] = ((byte)(arrayOfByte[0] & 255 >>> paramInt2));
      arrayOfByte[0] = ((byte)(arrayOfByte[0] | 128 >>> paramInt2));
    }
    else
    {
      arrayOfByte[0] = 0;
      arrayOfByte[1] = ((byte)(arrayOfByte[1] | 0x80));
      paramInt1 = 1;
    }
    return this.aIu.ˑ(arrayOfByte, paramInt1, arrayOfByte.length - paramInt1);
  }
  
  public int iB()
  {
    int i = this.aIu.iB();
    if (this.aEW) {
      return (i + 1) / 2;
    }
    return i;
  }
  
  public int iC()
  {
    int i = this.aIu.iC();
    if (this.aEW) {
      return i;
    }
    return (i + 1) / 2;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    RSAKeyParameters localRSAKeyParameters;
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      localRSAKeyParameters = (RSAKeyParameters)((ParametersWithRandom)paramCipherParameters).lh();
    } else {
      localRSAKeyParameters = (RSAKeyParameters)paramCipherParameters;
    }
    this.aIu.ˊ(paramBoolean, paramCipherParameters);
    this.ajI = localRSAKeyParameters.getModulus();
    this.aIv = this.ajI.bitLength();
    this.aEW = paramBoolean;
  }
  
  public byte[] ˑ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aEW) {
      return ﾞ(paramArrayOfByte, paramInt1, paramInt2);
    }
    return ʹ(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.encodings.ISO9796d1Encoding
 * JD-Core Version:    0.7.0.1
 */