package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class XTEAEngine
  implements BlockCipher
{
  private boolean aKV = false;
  private boolean aKW;
  private int[] aLc = new int[4];
  private int[] aMv = new int[32];
  private int[] aMw = new int[32];
  
  private void ʼ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 24));
    paramInt2 = i + 1;
    paramArrayOfByte[i] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)paramInt1);
  }
  
  private void ˇ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 16) {
      throw new IllegalArgumentException("Key size must be 128 bits.");
    }
    int i = 0;
    int j = 0;
    while (j < 4)
    {
      this.aLc[j] = ՙ(paramArrayOfByte, i);
      j += 1;
      i += 4;
    }
    j = 0;
    i = 0;
    while (i < 32)
    {
      this.aMv[i] = (this.aLc[(j & 0x3)] + j);
      j -= 1640531527;
      this.aMw[i] = (this.aLc[(j >>> 11 & 0x3)] + j);
      i += 1;
    }
  }
  
  private int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int j = ՙ(paramArrayOfByte1, paramInt1);
    int i = ՙ(paramArrayOfByte1, paramInt1 + 4);
    paramInt1 = 0;
    while (paramInt1 < 32)
    {
      j += ((i << 4 ^ i >>> 5) + i ^ this.aMv[paramInt1]);
      i += ((j << 4 ^ j >>> 5) + j ^ this.aMw[paramInt1]);
      paramInt1 += 1;
    }
    ʼ(j, paramArrayOfByte2, paramInt2);
    ʼ(i, paramArrayOfByte2, paramInt2 + 4);
    return 8;
  }
  
  private int ՙ(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramInt = paramArrayOfByte[paramInt];
    int j = i + 1;
    return paramInt << 24 | (paramArrayOfByte[i] & 0xFF) << 16 | (paramArrayOfByte[j] & 0xFF) << 8 | paramArrayOfByte[(j + 1)] & 0xFF;
  }
  
  private int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = ՙ(paramArrayOfByte1, paramInt1);
    int j = ՙ(paramArrayOfByte1, paramInt1 + 4);
    paramInt1 = 31;
    while (paramInt1 >= 0)
    {
      j -= ((i << 4 ^ i >>> 5) + i ^ this.aMw[paramInt1]);
      i -= ((j << 4 ^ j >>> 5) + j ^ this.aMv[paramInt1]);
      paramInt1 -= 1;
    }
    ʼ(i, paramArrayOfByte2, paramInt2);
    ʼ(j, paramArrayOfByte2, paramInt2 + 4);
    return 8;
  }
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "XTEA";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (!this.aKV) {
      throw new IllegalStateException(iG() + " not initialised");
    }
    if (paramInt1 + 8 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 8 > paramArrayOfByte2.length) {
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
      throw new IllegalArgumentException("invalid parameter passed to TEA init - " + paramCipherParameters.getClass().getName());
    }
    this.aKW = paramBoolean;
    this.aKV = true;
    ˇ(((KeyParameter)paramCipherParameters).getKey());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.XTEAEngine
 * JD-Core Version:    0.7.0.1
 */