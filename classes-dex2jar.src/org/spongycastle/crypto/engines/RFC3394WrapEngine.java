package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;

public class RFC3394WrapEngine
  implements Wrapper
{
  private KeyParameter aJW;
  private boolean aJY;
  private BlockCipher aLg;
  private byte[] iv = { -90, -90, -90, -90, -90, -90, -90, -90 };
  
  public RFC3394WrapEngine(BlockCipher paramBlockCipher)
  {
    this.aLg = paramBlockCipher;
  }
  
  public String iG()
  {
    return this.aLg.iG();
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aJY = paramBoolean;
    CipherParameters localCipherParameters = paramCipherParameters;
    if ((paramCipherParameters instanceof ParametersWithRandom)) {
      localCipherParameters = ((ParametersWithRandom)paramCipherParameters).lh();
    }
    if ((localCipherParameters instanceof KeyParameter))
    {
      this.aJW = ((KeyParameter)localCipherParameters);
      return;
    }
    if ((localCipherParameters instanceof ParametersWithIV))
    {
      this.iv = ((ParametersWithIV)localCipherParameters).getIV();
      this.aJW = ((KeyParameter)((ParametersWithIV)localCipherParameters).lh());
      if (this.iv.length != 8) {
        throw new IllegalArgumentException("IV not equal to 8");
      }
    }
  }
  
  public byte[] ᐨ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.aJY) {
      throw new IllegalStateException("not set for wrapping");
    }
    int k = paramInt2 / 8;
    if (k * 8 != paramInt2) {
      throw new DataLengthException("wrap data must be a multiple of 8 bytes");
    }
    byte[] arrayOfByte1 = new byte[this.iv.length + paramInt2];
    byte[] arrayOfByte2 = new byte[this.iv.length + 8];
    System.arraycopy(this.iv, 0, arrayOfByte1, 0, this.iv.length);
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte1, this.iv.length, paramInt2);
    this.aLg.ˊ(true, this.aJW);
    paramInt1 = 0;
    while (paramInt1 != 6)
    {
      paramInt2 = 1;
      while (paramInt2 <= k)
      {
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, this.iv.length);
        System.arraycopy(arrayOfByte1, paramInt2 * 8, arrayOfByte2, this.iv.length, 8);
        this.aLg.ˊ(arrayOfByte2, 0, arrayOfByte2, 0);
        int j = k * paramInt1 + paramInt2;
        int i = 1;
        while (j != 0)
        {
          int m = (byte)j;
          int n = this.iv.length - i;
          arrayOfByte2[n] = ((byte)(arrayOfByte2[n] ^ m));
          j >>>= 8;
          i += 1;
        }
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, 8);
        System.arraycopy(arrayOfByte2, 8, arrayOfByte1, paramInt2 * 8, 8);
        paramInt2 += 1;
      }
      paramInt1 += 1;
    }
    return arrayOfByte1;
  }
  
  public byte[] ﹳ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aJY) {
      throw new IllegalStateException("not set for unwrapping");
    }
    int i = paramInt2 / 8;
    if (i * 8 != paramInt2) {
      throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
    }
    byte[] arrayOfByte1 = new byte[paramInt2 - this.iv.length];
    byte[] arrayOfByte2 = new byte[this.iv.length];
    byte[] arrayOfByte3 = new byte[this.iv.length + 8];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte2, 0, this.iv.length);
    System.arraycopy(paramArrayOfByte, this.iv.length + paramInt1, arrayOfByte1, 0, paramInt2 - this.iv.length);
    this.aLg.ˊ(false, this.aJW);
    int k = i - 1;
    paramInt1 = 5;
    while (paramInt1 >= 0)
    {
      paramInt2 = k;
      while (paramInt2 >= 1)
      {
        System.arraycopy(arrayOfByte2, 0, arrayOfByte3, 0, this.iv.length);
        System.arraycopy(arrayOfByte1, (paramInt2 - 1) * 8, arrayOfByte3, this.iv.length, 8);
        int j = k * paramInt1 + paramInt2;
        i = 1;
        while (j != 0)
        {
          int m = (byte)j;
          int n = this.iv.length - i;
          arrayOfByte3[n] = ((byte)(arrayOfByte3[n] ^ m));
          j >>>= 8;
          i += 1;
        }
        this.aLg.ˊ(arrayOfByte3, 0, arrayOfByte3, 0);
        System.arraycopy(arrayOfByte3, 0, arrayOfByte2, 0, 8);
        System.arraycopy(arrayOfByte3, 8, arrayOfByte1, (paramInt2 - 1) * 8, 8);
        paramInt2 -= 1;
      }
      paramInt1 -= 1;
    }
    if (!Arrays.ｰ(arrayOfByte2, this.iv)) {
      throw new InvalidCipherTextException("checksum failed");
    }
    return arrayOfByte1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RFC3394WrapEngine
 * JD-Core Version:    0.7.0.1
 */