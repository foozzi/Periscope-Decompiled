package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.paddings.ISO7816d4Padding;
import org.spongycastle.crypto.params.KeyParameter;

public class CMac
  implements Mac
{
  private int aEU;
  private BlockCipher aEX;
  private byte[] aFS;
  private byte[] aNC;
  private byte[] aND;
  private byte[] aNE;
  private byte[] aNy;
  private int aNz;
  private byte[] buf;
  
  public CMac(BlockCipher paramBlockCipher)
  {
    this(paramBlockCipher, paramBlockCipher.getBlockSize() * 8);
  }
  
  public CMac(BlockCipher paramBlockCipher, int paramInt)
  {
    if (paramInt % 8 != 0) {
      throw new IllegalArgumentException("MAC size must be multiple of 8");
    }
    if (paramInt > paramBlockCipher.getBlockSize() * 8) {
      throw new IllegalArgumentException("MAC size must be less or equal to " + paramBlockCipher.getBlockSize() * 8);
    }
    if ((paramBlockCipher.getBlockSize() != 8) && (paramBlockCipher.getBlockSize() != 16)) {
      throw new IllegalArgumentException("Block size must be either 64 or 128 bits");
    }
    this.aEX = new CBCBlockCipher(paramBlockCipher);
    this.aNz = (paramInt / 8);
    this.aNy = new byte[paramBlockCipher.getBlockSize()];
    this.buf = new byte[paramBlockCipher.getBlockSize()];
    this.aNC = new byte[paramBlockCipher.getBlockSize()];
    this.aEU = 0;
  }
  
  private static int ʽ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = paramArrayOfByte1.length;
    int k;
    for (int i = 0;; i = k >>> 7 & 0x1)
    {
      j -= 1;
      if (j < 0) {
        break;
      }
      k = paramArrayOfByte1[j] & 0xFF;
      paramArrayOfByte2[j] = ((byte)(k << 1 | i));
    }
    return i;
  }
  
  private static byte[] ᐡ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    int j = ʽ(paramArrayOfByte, arrayOfByte);
    int i;
    if (paramArrayOfByte.length == 16) {
      i = -121;
    } else {
      i = 27;
    }
    int k = paramArrayOfByte.length - 1;
    arrayOfByte[k] = ((byte)(arrayOfByte[k] ^ (i & 0xFF) >>> (1 - j << 3)));
    return arrayOfByte;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    int i = this.aEX.getBlockSize();
    byte[] arrayOfByte1;
    if (this.aEU == i)
    {
      arrayOfByte1 = this.aND;
    }
    else
    {
      new ISO7816d4Padding().ᵢ(this.buf, this.aEU);
      arrayOfByte1 = this.aNE;
    }
    i = 0;
    while (i < this.aNy.length)
    {
      byte[] arrayOfByte2 = this.buf;
      arrayOfByte2[i] = ((byte)(arrayOfByte2[i] ^ arrayOfByte1[i]));
      i += 1;
    }
    this.aEX.ˊ(this.buf, 0, this.aNy, 0);
    System.arraycopy(this.aNy, 0, paramArrayOfByte, paramInt, this.aNz);
    reset();
    return this.aNz;
  }
  
  public String iG()
  {
    return this.aEX.iG();
  }
  
  public int iO()
  {
    return this.aNz;
  }
  
  public void reset()
  {
    int i = 0;
    while (i < this.buf.length)
    {
      this.buf[i] = 0;
      i += 1;
    }
    this.aEU = 0;
    this.aEX.reset();
  }
  
  public void update(byte paramByte)
  {
    if (this.aEU == this.buf.length)
    {
      this.aEX.ˊ(this.buf, 0, this.aNy, 0);
      this.aEU = 0;
    }
    byte[] arrayOfByte = this.buf;
    int i = this.aEU;
    this.aEU = (i + 1);
    arrayOfByte[i] = paramByte;
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0) {
      throw new IllegalArgumentException("Can't have a negative input length!");
    }
    int k = this.aEX.getBlockSize();
    int m = k - this.aEU;
    int i = paramInt1;
    int j = paramInt2;
    if (paramInt2 > m)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, m);
      this.aEX.ˊ(this.buf, 0, this.aNy, 0);
      this.aEU = 0;
      paramInt2 -= m;
      paramInt1 += m;
      for (;;)
      {
        i = paramInt1;
        j = paramInt2;
        if (paramInt2 <= k) {
          break;
        }
        this.aEX.ˊ(paramArrayOfByte, paramInt1, this.aNy, 0);
        paramInt2 -= k;
        paramInt1 += k;
      }
    }
    System.arraycopy(paramArrayOfByte, i, this.buf, this.aEU, j);
    this.aEU += j;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    ˏ(paramCipherParameters);
    this.aEX.ˊ(true, paramCipherParameters);
    this.aFS = new byte[this.aNC.length];
    this.aEX.ˊ(this.aNC, 0, this.aFS, 0);
    this.aND = ᐡ(this.aFS);
    this.aNE = ᐡ(this.aND);
    reset();
  }
  
  void ˏ(CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters != null) && (!(paramCipherParameters instanceof KeyParameter))) {
      throw new IllegalArgumentException("CMac mode only permits key to be set.");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.CMac
 * JD-Core Version:    0.7.0.1
 */