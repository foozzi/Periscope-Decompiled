package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class TEAEngine
  implements BlockCipher
{
  private boolean aKV = false;
  private boolean aKW;
  private int aLW;
  private int aLX;
  private int aLY;
  private int aLZ;
  
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
    this.aLW = ՙ(paramArrayOfByte, 0);
    this.aLX = ՙ(paramArrayOfByte, 4);
    this.aLY = ՙ(paramArrayOfByte, 8);
    this.aLZ = ՙ(paramArrayOfByte, 12);
  }
  
  private int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int j = ՙ(paramArrayOfByte1, paramInt1);
    int i = ՙ(paramArrayOfByte1, paramInt1 + 4);
    int k = 0;
    paramInt1 = 0;
    while (paramInt1 != 32)
    {
      k -= 1640531527;
      j += ((i << 4) + this.aLW ^ i + k ^ (i >>> 5) + this.aLX);
      i += ((j << 4) + this.aLY ^ j + k ^ (j >>> 5) + this.aLZ);
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
    int j = ՙ(paramArrayOfByte1, paramInt1);
    int k = ՙ(paramArrayOfByte1, paramInt1 + 4);
    int i = -957401312;
    paramInt1 = 0;
    while (paramInt1 != 32)
    {
      k -= ((j << 4) + this.aLY ^ j + i ^ (j >>> 5) + this.aLZ);
      j -= ((k << 4) + this.aLW ^ k + i ^ (k >>> 5) + this.aLX);
      i += 1640531527;
      paramInt1 += 1;
    }
    ʼ(j, paramArrayOfByte2, paramInt2);
    ʼ(k, paramArrayOfByte2, paramInt2 + 4);
    return 8;
  }
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "TEA";
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
 * Qualified Name:     org.spongycastle.crypto.engines.TEAEngine
 * JD-Core Version:    0.7.0.1
 */