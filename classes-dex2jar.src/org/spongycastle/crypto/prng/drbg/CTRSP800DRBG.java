package org.spongycastle.crypto.prng.drbg;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.prng.EntropySource;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.encoders.Hex;

public class CTRSP800DRBG
  implements SP80090DRBG
{
  private static final byte[] aRu = Hex.ᵥ("000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F");
  private EntropySource aRm;
  private BlockCipher aRn;
  private int aRo;
  private int aRp;
  private byte[] aRq;
  private byte[] aRr;
  private long aRs = 0L;
  private boolean aRt = false;
  
  public CTRSP800DRBG(BlockCipher paramBlockCipher, int paramInt1, int paramInt2, EntropySource paramEntropySource, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aRm = paramEntropySource;
    this.aRn = paramBlockCipher;
    this.aRo = paramInt1;
    this.aRp = (paramBlockCipher.getBlockSize() * 8 + paramInt1);
    this.aRt = ˊ(paramBlockCipher);
    if (paramInt2 > 256) {
      throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
    }
    if (ˊ(paramBlockCipher, paramInt1) < paramInt2) {
      throw new IllegalArgumentException("Requested security strength is not supported by block cipher and key size");
    }
    if (paramEntropySource.ls() < paramInt2) {
      throw new IllegalArgumentException("Not enough entropy for security strength required");
    }
    ˋ(paramEntropySource.lr(), paramArrayOfByte2, paramArrayOfByte1);
  }
  
  private int ˊ(BlockCipher paramBlockCipher, int paramInt)
  {
    if ((ˊ(paramBlockCipher)) && (paramInt == 168)) {
      return 112;
    }
    if (paramBlockCipher.iG().equals("AES")) {
      return paramInt;
    }
    return -1;
  }
  
  private void ˊ(EntropySource paramEntropySource, byte[] paramArrayOfByte)
  {
    ˎ(ﹶ(Arrays.ﹶ(paramEntropySource.lr(), paramArrayOfByte), this.aRp), this.aRq, this.aRr);
    this.aRs = 1L;
  }
  
  private void ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, int paramInt)
  {
    int i = 0;
    while (i < paramArrayOfByte1.length)
    {
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte2[i] ^ paramArrayOfByte3[(i + paramInt)]));
      i += 1;
    }
  }
  
  private void ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    int j = this.aRn.getBlockSize();
    byte[] arrayOfByte1 = new byte[j];
    int k = paramArrayOfByte4.length / j;
    byte[] arrayOfByte2 = new byte[j];
    this.aRn.ˊ(true, new KeyParameter(เ(paramArrayOfByte2)));
    this.aRn.ˊ(paramArrayOfByte3, 0, arrayOfByte1, 0);
    int i = 0;
    while (i < k)
    {
      ˊ(arrayOfByte2, arrayOfByte1, paramArrayOfByte4, i * j);
      this.aRn.ˊ(arrayOfByte2, 0, arrayOfByte1, 0);
      i += 1;
    }
    System.arraycopy(arrayOfByte1, 0, paramArrayOfByte1, 0, paramArrayOfByte1.length);
  }
  
  private boolean ˊ(BlockCipher paramBlockCipher)
  {
    return (paramBlockCipher.iG().equals("DESede")) || (paramBlockCipher.iG().equals("TDEA"));
  }
  
  private void ˋ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    paramArrayOfByte1 = ﹶ(Arrays.ˏ(paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3), this.aRp);
    int i = this.aRn.getBlockSize();
    this.aRq = new byte[(this.aRo + 7) / 8];
    this.aRr = new byte[i];
    ˎ(paramArrayOfByte1, this.aRq, this.aRr);
    this.aRs = 1L;
  }
  
  private void ˎ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    byte[] arrayOfByte1 = new byte[paramArrayOfByte1.length];
    byte[] arrayOfByte2 = new byte[this.aRn.getBlockSize()];
    int i = 0;
    int k = this.aRn.getBlockSize();
    this.aRn.ˊ(true, new KeyParameter(เ(paramArrayOfByte2)));
    while (i * k < paramArrayOfByte1.length)
    {
      ו(paramArrayOfByte3);
      this.aRn.ˊ(paramArrayOfByte3, 0, arrayOfByte2, 0);
      int j;
      if (arrayOfByte1.length - i * k > k) {
        j = k;
      } else {
        j = arrayOfByte1.length - i * k;
      }
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, i * k, j);
      i += 1;
    }
    ˊ(arrayOfByte1, paramArrayOfByte1, arrayOfByte1, 0);
    System.arraycopy(arrayOfByte1, 0, paramArrayOfByte2, 0, paramArrayOfByte2.length);
    System.arraycopy(arrayOfByte1, paramArrayOfByte2.length, paramArrayOfByte3, 0, paramArrayOfByte3.length);
  }
  
  private void ו(byte[] paramArrayOfByte)
  {
    int i = 1;
    int j = 1;
    while (j <= paramArrayOfByte.length)
    {
      int k = (paramArrayOfByte[(paramArrayOfByte.length - j)] & 0xFF) + i;
      if (k > 255) {
        i = 1;
      } else {
        i = 0;
      }
      paramArrayOfByte[(paramArrayOfByte.length - j)] = ((byte)k);
      j += 1;
    }
  }
  
  private void ι(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    paramArrayOfByte2[(paramInt2 + 0)] = ((byte)(paramArrayOfByte1[(paramInt1 + 0)] & 0xFE));
    paramArrayOfByte2[(paramInt2 + 1)] = ((byte)(paramArrayOfByte1[(paramInt1 + 0)] << 7 | (paramArrayOfByte1[(paramInt1 + 1)] & 0xFC) >>> 1));
    paramArrayOfByte2[(paramInt2 + 2)] = ((byte)(paramArrayOfByte1[(paramInt1 + 1)] << 6 | (paramArrayOfByte1[(paramInt1 + 2)] & 0xF8) >>> 2));
    paramArrayOfByte2[(paramInt2 + 3)] = ((byte)(paramArrayOfByte1[(paramInt1 + 2)] << 5 | (paramArrayOfByte1[(paramInt1 + 3)] & 0xF0) >>> 3));
    paramArrayOfByte2[(paramInt2 + 4)] = ((byte)(paramArrayOfByte1[(paramInt1 + 3)] << 4 | (paramArrayOfByte1[(paramInt1 + 4)] & 0xE0) >>> 4));
    paramArrayOfByte2[(paramInt2 + 5)] = ((byte)(paramArrayOfByte1[(paramInt1 + 4)] << 3 | (paramArrayOfByte1[(paramInt1 + 5)] & 0xC0) >>> 5));
    paramArrayOfByte2[(paramInt2 + 6)] = ((byte)(paramArrayOfByte1[(paramInt1 + 5)] << 2 | (paramArrayOfByte1[(paramInt1 + 6)] & 0x80) >>> 6));
    paramArrayOfByte2[(paramInt2 + 7)] = ((byte)(paramArrayOfByte1[(paramInt1 + 6)] << 1));
    paramInt1 = paramInt2;
    while (paramInt1 <= paramInt2 + 7)
    {
      int i = paramArrayOfByte2[paramInt1];
      paramArrayOfByte2[paramInt1] = ((byte)(i & 0xFE | (i >> 1 ^ i >> 2 ^ i >> 3 ^ i >> 4 ^ i >> 5 ^ i >> 6 ^ i >> 7 ^ 0x1) & 0x1));
      paramInt1 += 1;
    }
  }
  
  private byte[] ﹶ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.aRn.getBlockSize();
    int j = paramArrayOfByte.length;
    int k = paramInt / 8;
    byte[] arrayOfByte1 = new byte[(j + 8 + 1 + i - 1) / i * i];
    ﹺ(arrayOfByte1, j, 0);
    ﹺ(arrayOfByte1, k, 4);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 8, j);
    arrayOfByte1[(j + 8)] = -128;
    byte[] arrayOfByte2 = new byte[this.aRo / 8 + i];
    byte[] arrayOfByte3 = new byte[i];
    byte[] arrayOfByte4 = new byte[i];
    j = 0;
    paramArrayOfByte = new byte[this.aRo / 8];
    System.arraycopy(aRu, 0, paramArrayOfByte, 0, paramArrayOfByte.length);
    while (j * i * 8 < this.aRo + i * 8)
    {
      ﹺ(arrayOfByte4, j, 0);
      ˊ(arrayOfByte3, paramArrayOfByte, arrayOfByte4, arrayOfByte1);
      if (arrayOfByte2.length - j * i > i) {
        k = i;
      } else {
        k = arrayOfByte2.length - j * i;
      }
      System.arraycopy(arrayOfByte3, 0, arrayOfByte2, j * i, k);
      j += 1;
    }
    arrayOfByte1 = new byte[i];
    System.arraycopy(arrayOfByte2, 0, paramArrayOfByte, 0, paramArrayOfByte.length);
    System.arraycopy(arrayOfByte2, paramArrayOfByte.length, arrayOfByte1, 0, arrayOfByte1.length);
    arrayOfByte2 = new byte[paramInt / 2];
    paramInt = 0;
    this.aRn.ˊ(true, new KeyParameter(เ(paramArrayOfByte)));
    while (paramInt * i < arrayOfByte2.length)
    {
      this.aRn.ˊ(arrayOfByte1, 0, arrayOfByte1, 0);
      if (arrayOfByte2.length - paramInt * i > i) {
        j = i;
      } else {
        j = arrayOfByte2.length - paramInt * i;
      }
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, paramInt * i, j);
      paramInt += 1;
    }
    return arrayOfByte2;
  }
  
  private void ﹺ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[(paramInt2 + 0)] = ((byte)(paramInt1 >> 24));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >> 16));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >> 8));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)paramInt1);
  }
  
  public int ˊ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, boolean paramBoolean)
  {
    if (this.aRt)
    {
      if (this.aRs > 2147483648L) {
        return -1;
      }
      if (Utils.ʳ(paramArrayOfByte1, 512)) {
        throw new IllegalArgumentException("Number of bits per request limited to 4096");
      }
    }
    else
    {
      if (this.aRs > 140737488355328L) {
        return -1;
      }
      if (Utils.ʳ(paramArrayOfByte1, 32768)) {
        throw new IllegalArgumentException("Number of bits per request limited to 262144");
      }
    }
    byte[] arrayOfByte = paramArrayOfByte2;
    if (paramBoolean)
    {
      ˊ(this.aRm, paramArrayOfByte2);
      arrayOfByte = null;
    }
    if (arrayOfByte != null)
    {
      paramArrayOfByte2 = ﹶ(arrayOfByte, this.aRp);
      ˎ(paramArrayOfByte2, this.aRq, this.aRr);
    }
    else
    {
      paramArrayOfByte2 = new byte[this.aRp];
    }
    arrayOfByte = new byte[this.aRr.length];
    this.aRn.ˊ(true, new KeyParameter(เ(this.aRq)));
    int i = 0;
    while (i < paramArrayOfByte1.length / arrayOfByte.length)
    {
      ו(this.aRr);
      this.aRn.ˊ(this.aRr, 0, arrayOfByte, 0);
      int j;
      if (paramArrayOfByte1.length - arrayOfByte.length * i > arrayOfByte.length) {
        j = arrayOfByte.length;
      } else {
        j = paramArrayOfByte1.length - this.aRr.length * i;
      }
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte1, arrayOfByte.length * i, j);
      i += 1;
    }
    ˎ(paramArrayOfByte2, this.aRq, this.aRr);
    this.aRs += 1L;
    return paramArrayOfByte1.length * 8;
  }
  
  public void ۦ(byte[] paramArrayOfByte)
  {
    ˊ(this.aRm, paramArrayOfByte);
  }
  
  byte[] เ(byte[] paramArrayOfByte)
  {
    if (this.aRt)
    {
      byte[] arrayOfByte = new byte[24];
      ι(paramArrayOfByte, 0, arrayOfByte, 0);
      ι(paramArrayOfByte, 7, arrayOfByte, 8);
      ι(paramArrayOfByte, 14, arrayOfByte, 16);
      return arrayOfByte;
    }
    return paramArrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.prng.drbg.CTRSP800DRBG
 * JD-Core Version:    0.7.0.1
 */