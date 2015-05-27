package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;

public class RFC5649WrapEngine
  implements Wrapper
{
  private KeyParameter aJW;
  private boolean aJY;
  private BlockCipher aLg;
  private byte[] aLh = { -90, 89, 89, -90 };
  private byte[] aLi = this.aLh;
  private byte[] aLj = null;
  
  public RFC5649WrapEngine(BlockCipher paramBlockCipher)
  {
    this.aLg = paramBlockCipher;
  }
  
  private byte[] ᐣ(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    int j = (8 - i % 8) % 8;
    byte[] arrayOfByte = new byte[i + j];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, i);
    if (j != 0) {
      System.arraycopy(new byte[j], 0, arrayOfByte, i, j);
    }
    return arrayOfByte;
  }
  
  private byte[] ᴵ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte1 = new byte[8];
    byte[] arrayOfByte2 = new byte[paramInt2 - arrayOfByte1.length];
    byte[] arrayOfByte3 = new byte[arrayOfByte1.length];
    byte[] arrayOfByte4 = new byte[arrayOfByte1.length + 8];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte3, 0, arrayOfByte1.length);
    System.arraycopy(paramArrayOfByte, arrayOfByte1.length + paramInt1, arrayOfByte2, 0, paramInt2 - arrayOfByte1.length);
    this.aLg.ˊ(false, this.aJW);
    int k = paramInt2 / 8 - 1;
    paramInt1 = 5;
    while (paramInt1 >= 0)
    {
      paramInt2 = k;
      while (paramInt2 >= 1)
      {
        System.arraycopy(arrayOfByte3, 0, arrayOfByte4, 0, arrayOfByte1.length);
        System.arraycopy(arrayOfByte2, (paramInt2 - 1) * 8, arrayOfByte4, arrayOfByte1.length, 8);
        int j = k * paramInt1 + paramInt2;
        int i = 1;
        while (j != 0)
        {
          int m = (byte)j;
          int n = arrayOfByte1.length - i;
          arrayOfByte4[n] = ((byte)(arrayOfByte4[n] ^ m));
          j >>>= 8;
          i += 1;
        }
        this.aLg.ˊ(arrayOfByte4, 0, arrayOfByte4, 0);
        System.arraycopy(arrayOfByte4, 0, arrayOfByte3, 0, 8);
        System.arraycopy(arrayOfByte4, 8, arrayOfByte2, (paramInt2 - 1) * 8, 8);
        paramInt2 -= 1;
      }
      paramInt1 -= 1;
    }
    this.aLj = arrayOfByte3;
    return arrayOfByte2;
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
      this.aLi = ((ParametersWithIV)localCipherParameters).getIV();
      this.aJW = ((KeyParameter)((ParametersWithIV)localCipherParameters).lh());
      if (this.aLi.length != 4) {
        throw new IllegalArgumentException("IV length not equal to 4");
      }
    }
  }
  
  public byte[] ᐨ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.aJY) {
      throw new IllegalStateException("not set for wrapping");
    }
    byte[] arrayOfByte = new byte[8];
    Object localObject = Pack.ﮃ(paramInt2);
    System.arraycopy(this.aLi, 0, arrayOfByte, 0, this.aLi.length);
    System.arraycopy(localObject, 0, arrayOfByte, this.aLi.length, localObject.length);
    localObject = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, localObject, 0, paramInt2);
    paramArrayOfByte = ᐣ((byte[])localObject);
    if (paramArrayOfByte.length == 8)
    {
      localObject = new byte[paramArrayOfByte.length + arrayOfByte.length];
      System.arraycopy(arrayOfByte, 0, localObject, 0, arrayOfByte.length);
      System.arraycopy(paramArrayOfByte, 0, localObject, arrayOfByte.length, paramArrayOfByte.length);
      this.aLg.ˊ(true, this.aJW);
      paramInt1 = 0;
      while (paramInt1 < localObject.length)
      {
        this.aLg.ˊ((byte[])localObject, paramInt1, (byte[])localObject, paramInt1);
        paramInt1 += this.aLg.getBlockSize();
      }
      return localObject;
    }
    localObject = new RFC3394WrapEngine(this.aLg);
    ((Wrapper)localObject).ˊ(true, new ParametersWithIV(this.aJW, arrayOfByte));
    return ((Wrapper)localObject).ᐨ(paramArrayOfByte, paramInt1, paramArrayOfByte.length);
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
    if (i == 1) {
      throw new InvalidCipherTextException("unwrap data must be at least 16 bytes");
    }
    byte[] arrayOfByte2 = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte2, 0, paramInt2);
    byte[] arrayOfByte1 = new byte[paramInt2];
    if (i == 2)
    {
      this.aLg.ˊ(false, this.aJW);
      paramInt1 = 0;
      while (paramInt1 < arrayOfByte2.length)
      {
        this.aLg.ˊ(arrayOfByte2, paramInt1, arrayOfByte1, paramInt1);
        paramInt1 += this.aLg.getBlockSize();
      }
      this.aLj = new byte[8];
      System.arraycopy(arrayOfByte1, 0, this.aLj, 0, this.aLj.length);
      paramArrayOfByte = new byte[arrayOfByte1.length - this.aLj.length];
      System.arraycopy(arrayOfByte1, this.aLj.length, paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    else
    {
      paramArrayOfByte = ᴵ(paramArrayOfByte, paramInt1, paramInt2);
    }
    arrayOfByte1 = new byte[4];
    arrayOfByte2 = new byte[4];
    System.arraycopy(this.aLj, 0, arrayOfByte1, 0, arrayOfByte1.length);
    System.arraycopy(this.aLj, arrayOfByte1.length, arrayOfByte2, 0, arrayOfByte2.length);
    paramInt2 = Pack.יִ(arrayOfByte2, 0);
    paramInt1 = 1;
    if (!Arrays.ｰ(arrayOfByte1, this.aLi)) {
      paramInt1 = 0;
    }
    i = paramArrayOfByte.length;
    if (paramInt2 <= i - 8) {
      paramInt1 = 0;
    }
    if (paramInt2 > i) {
      paramInt1 = 0;
    }
    i -= paramInt2;
    arrayOfByte1 = new byte[i];
    arrayOfByte2 = new byte[i];
    System.arraycopy(paramArrayOfByte, paramArrayOfByte.length - i, arrayOfByte2, 0, i);
    if (!Arrays.ｰ(arrayOfByte2, arrayOfByte1)) {
      paramInt1 = 0;
    }
    arrayOfByte1 = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 0, arrayOfByte1.length);
    if (paramInt1 == 0) {
      throw new InvalidCipherTextException("checksum failed");
    }
    return arrayOfByte1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.RFC5649WrapEngine
 * JD-Core Version:    0.7.0.1
 */