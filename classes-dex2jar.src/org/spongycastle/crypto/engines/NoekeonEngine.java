package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class NoekeonEngine
  implements BlockCipher
{
  private static final int[] aKR = { 0, 0, 0, 0 };
  private static final int[] aKS = { 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212 };
  private int[] aJs = new int[4];
  private int[] aKT = new int[4];
  private int[] aKU = new int[4];
  private boolean aKV = false;
  private boolean aKW;
  
  private void ʻ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 24));
    paramInt2 = i + 1;
    paramArrayOfByte[i] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)paramInt1);
  }
  
  private void ʻ(int[] paramArrayOfInt)
  {
    paramArrayOfInt[1] = ˁ(paramArrayOfInt[1], 1);
    paramArrayOfInt[2] = ˁ(paramArrayOfInt[2], 5);
    paramArrayOfInt[3] = ˁ(paramArrayOfInt[3], 2);
  }
  
  private void ʼ(int[] paramArrayOfInt)
  {
    paramArrayOfInt[1] = ˁ(paramArrayOfInt[1], 31);
    paramArrayOfInt[2] = ˁ(paramArrayOfInt[2], 27);
    paramArrayOfInt[3] = ˁ(paramArrayOfInt[3], 30);
  }
  
  private int ˁ(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> 32 - paramInt2;
  }
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    this.aKT[0] = ᐨ(paramArrayOfByte, 0);
    this.aKT[1] = ᐨ(paramArrayOfByte, 4);
    this.aKT[2] = ᐨ(paramArrayOfByte, 8);
    this.aKT[3] = ᐨ(paramArrayOfByte, 12);
  }
  
  private void ˊ(int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    int i = paramArrayOfInt1[0] ^ paramArrayOfInt1[2];
    i ^= ˁ(i, 8) ^ ˁ(i, 24);
    paramArrayOfInt1[1] ^= i;
    paramArrayOfInt1[3] ^= i;
    i = 0;
    while (i < 4)
    {
      paramArrayOfInt1[i] ^= paramArrayOfInt2[i];
      i += 1;
    }
    i = paramArrayOfInt1[1] ^ paramArrayOfInt1[3];
    i ^= ˁ(i, 8) ^ ˁ(i, 24);
    paramArrayOfInt1[0] ^= i;
    paramArrayOfInt1[2] ^= i;
  }
  
  private int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    this.aJs[0] = ᐨ(paramArrayOfByte1, paramInt1);
    this.aJs[1] = ᐨ(paramArrayOfByte1, paramInt1 + 4);
    this.aJs[2] = ᐨ(paramArrayOfByte1, paramInt1 + 8);
    this.aJs[3] = ᐨ(paramArrayOfByte1, paramInt1 + 12);
    paramInt1 = 0;
    while (paramInt1 < 16)
    {
      paramArrayOfByte1 = this.aJs;
      paramArrayOfByte1[0] ^= aKS[paramInt1];
      ˊ(this.aJs, this.aKT);
      ʻ(this.aJs);
      ᐝ(this.aJs);
      ʼ(this.aJs);
      paramInt1 += 1;
    }
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[0] ^= aKS[paramInt1];
    ˊ(this.aJs, this.aKT);
    ʻ(this.aJs[0], paramArrayOfByte2, paramInt2);
    ʻ(this.aJs[1], paramArrayOfByte2, paramInt2 + 4);
    ʻ(this.aJs[2], paramArrayOfByte2, paramInt2 + 8);
    ʻ(this.aJs[3], paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
  
  private int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    this.aJs[0] = ᐨ(paramArrayOfByte1, paramInt1);
    this.aJs[1] = ᐨ(paramArrayOfByte1, paramInt1 + 4);
    this.aJs[2] = ᐨ(paramArrayOfByte1, paramInt1 + 8);
    this.aJs[3] = ᐨ(paramArrayOfByte1, paramInt1 + 12);
    System.arraycopy(this.aKT, 0, this.aKU, 0, this.aKT.length);
    ˊ(this.aKU, aKR);
    paramInt1 = 16;
    while (paramInt1 > 0)
    {
      ˊ(this.aJs, this.aKU);
      paramArrayOfByte1 = this.aJs;
      paramArrayOfByte1[0] ^= aKS[paramInt1];
      ʻ(this.aJs);
      ᐝ(this.aJs);
      ʼ(this.aJs);
      paramInt1 -= 1;
    }
    ˊ(this.aJs, this.aKU);
    paramArrayOfByte1 = this.aJs;
    paramArrayOfByte1[0] ^= aKS[paramInt1];
    ʻ(this.aJs[0], paramArrayOfByte2, paramInt2);
    ʻ(this.aJs[1], paramArrayOfByte2, paramInt2 + 4);
    ʻ(this.aJs[2], paramArrayOfByte2, paramInt2 + 8);
    ʻ(this.aJs[3], paramArrayOfByte2, paramInt2 + 12);
    return 16;
  }
  
  private void ᐝ(int[] paramArrayOfInt)
  {
    paramArrayOfInt[1] ^= (paramArrayOfInt[3] ^ 0xFFFFFFFF) & (paramArrayOfInt[2] ^ 0xFFFFFFFF);
    paramArrayOfInt[0] ^= paramArrayOfInt[2] & paramArrayOfInt[1];
    int i = paramArrayOfInt[3];
    paramArrayOfInt[3] = paramArrayOfInt[0];
    paramArrayOfInt[0] = i;
    paramArrayOfInt[2] ^= paramArrayOfInt[0] ^ paramArrayOfInt[1] ^ paramArrayOfInt[3];
    paramArrayOfInt[1] ^= (paramArrayOfInt[3] ^ 0xFFFFFFFF) & (paramArrayOfInt[2] ^ 0xFFFFFFFF);
    paramArrayOfInt[0] ^= paramArrayOfInt[2] & paramArrayOfInt[1];
  }
  
  private int ᐨ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramInt = paramArrayOfByte[paramInt];
    int j = i + 1;
    return paramInt << 24 | (paramArrayOfByte[i] & 0xFF) << 16 | (paramArrayOfByte[j] & 0xFF) << 8 | paramArrayOfByte[(j + 1)] & 0xFF;
  }
  
  public int getBlockSize()
  {
    return 16;
  }
  
  public String iG()
  {
    return "Noekeon";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (!this.aKV) {
      throw new IllegalStateException(iG() + " not initialised");
    }
    if (paramInt1 + 16 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 16 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    if (this.aKW) {
      return ˏ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return ᐝ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("invalid parameter passed to Noekeon init - " + paramCipherParameters.getClass().getName());
    }
    this.aKW = paramBoolean;
    this.aKV = true;
    ˇ(((KeyParameter)paramCipherParameters).getKey());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.NoekeonEngine
 * JD-Core Version:    0.7.0.1
 */