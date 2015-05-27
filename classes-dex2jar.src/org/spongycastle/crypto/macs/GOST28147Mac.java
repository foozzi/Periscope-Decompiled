package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithSBox;

public class GOST28147Mac
  implements Mac
{
  private int aEU = 0;
  private byte[] aGd = { 9, 6, 3, 2, 8, 11, 1, 7, 10, 4, 14, 15, 12, 0, 13, 5, 3, 7, 14, 9, 8, 10, 15, 0, 5, 2, 6, 12, 11, 4, 13, 1, 14, 4, 6, 2, 11, 3, 13, 8, 12, 15, 5, 10, 0, 7, 1, 9, 14, 7, 10, 12, 13, 1, 3, 9, 0, 2, 11, 4, 15, 8, 5, 6, 11, 5, 1, 9, 8, 13, 15, 0, 14, 4, 2, 3, 12, 7, 10, 6, 3, 10, 13, 12, 1, 2, 0, 11, 7, 5, 9, 4, 8, 15, 14, 6, 1, 13, 2, 9, 7, 10, 6, 0, 8, 12, 4, 5, 15, 3, 11, 14, 11, 10, 15, 5, 0, 12, 14, 8, 6, 2, 3, 9, 1, 7, 13, 4 };
  private int[] aJE = null;
  private boolean aNH = true;
  private byte[] aNy = new byte[this.fU];
  private int aNz = 4;
  private byte[] buf = new byte[this.fU];
  private int fU = 8;
  
  private byte[] ˋ(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length - paramInt];
    System.arraycopy(paramArrayOfByte1, paramInt, arrayOfByte, 0, paramArrayOfByte2.length);
    paramInt = 0;
    while (paramInt != paramArrayOfByte2.length)
    {
      arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] ^ paramArrayOfByte2[paramInt]));
      paramInt += 1;
    }
    return arrayOfByte;
  }
  
  private void ˏ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >>> 24));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
  }
  
  private void ˏ(int[] paramArrayOfInt, byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int j = ـ(paramArrayOfByte1, paramInt1);
    int k = ـ(paramArrayOfByte1, paramInt1 + 4);
    int i = 0;
    paramInt1 = j;
    while (i < 2)
    {
      j = 0;
      while (j < 8)
      {
        int m = k ^ ᒻ(paramInt1, paramArrayOfInt[j]);
        k = paramInt1;
        j += 1;
        paramInt1 = m;
      }
      i += 1;
    }
    ˏ(paramInt1, paramArrayOfByte2, paramInt2);
    ˏ(k, paramArrayOfByte2, paramInt2 + 4);
  }
  
  private int ـ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[(paramInt + 3)] << 24 & 0xFF000000) + (paramArrayOfByte[(paramInt + 2)] << 16 & 0xFF0000) + (paramArrayOfByte[(paramInt + 1)] << 8 & 0xFF00) + (paramArrayOfByte[paramInt] & 0xFF);
  }
  
  private int[] ᐪ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 32) {
      throw new IllegalArgumentException("Key length invalid. Key needs to be 32 byte - 256 bit!!!");
    }
    int[] arrayOfInt = new int[8];
    int i = 0;
    while (i != 8)
    {
      arrayOfInt[i] = ـ(paramArrayOfByte, i * 4);
      i += 1;
    }
    return arrayOfInt;
  }
  
  private int ᒻ(int paramInt1, int paramInt2)
  {
    paramInt1 = paramInt2 + paramInt1;
    paramInt1 = (this.aGd[((paramInt1 >> 0 & 0xF) + 0)] << 0) + (this.aGd[((paramInt1 >> 4 & 0xF) + 16)] << 4) + (this.aGd[((paramInt1 >> 8 & 0xF) + 32)] << 8) + (this.aGd[((paramInt1 >> 12 & 0xF) + 48)] << 12) + (this.aGd[((paramInt1 >> 16 & 0xF) + 64)] << 16) + (this.aGd[((paramInt1 >> 20 & 0xF) + 80)] << 20) + (this.aGd[((paramInt1 >> 24 & 0xF) + 96)] << 24) + (this.aGd[((paramInt1 >> 28 & 0xF) + 112)] << 28);
    return paramInt1 << 11 | paramInt1 >>> 21;
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    while (this.aEU < this.fU)
    {
      this.buf[this.aEU] = 0;
      this.aEU += 1;
    }
    byte[] arrayOfByte = new byte[this.buf.length];
    System.arraycopy(this.buf, 0, arrayOfByte, 0, this.aNy.length);
    if (this.aNH) {
      this.aNH = false;
    } else {
      arrayOfByte = ˋ(this.buf, 0, this.aNy);
    }
    ˏ(this.aJE, arrayOfByte, 0, this.aNy, 0);
    System.arraycopy(this.aNy, this.aNy.length / 2 - this.aNz, paramArrayOfByte, paramInt, this.aNz);
    reset();
    return this.aNz;
  }
  
  public String iG()
  {
    return "GOST28147Mac";
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
    this.aNH = true;
  }
  
  public void update(byte paramByte)
  {
    if (this.aEU == this.buf.length)
    {
      arrayOfByte = new byte[this.buf.length];
      System.arraycopy(this.buf, 0, arrayOfByte, 0, this.aNy.length);
      if (this.aNH) {
        this.aNH = false;
      } else {
        arrayOfByte = ˋ(this.buf, 0, this.aNy);
      }
      ˏ(this.aJE, arrayOfByte, 0, this.aNy, 0);
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
    int k = this.fU - this.aEU;
    int i = paramInt1;
    int j = paramInt2;
    if (paramInt2 > k)
    {
      System.arraycopy(paramArrayOfByte, paramInt1, this.buf, this.aEU, k);
      byte[] arrayOfByte = new byte[this.buf.length];
      System.arraycopy(this.buf, 0, arrayOfByte, 0, this.aNy.length);
      if (this.aNH) {
        this.aNH = false;
      } else {
        arrayOfByte = ˋ(this.buf, 0, this.aNy);
      }
      ˏ(this.aJE, arrayOfByte, 0, this.aNy, 0);
      this.aEU = 0;
      paramInt2 -= k;
      paramInt1 += k;
      for (;;)
      {
        i = paramInt1;
        j = paramInt2;
        if (paramInt2 <= this.fU) {
          break;
        }
        arrayOfByte = ˋ(paramArrayOfByte, paramInt1, this.aNy);
        ˏ(this.aJE, arrayOfByte, 0, this.aNy, 0);
        paramInt2 -= this.fU;
        paramInt1 += this.fU;
      }
    }
    System.arraycopy(paramArrayOfByte, i, this.buf, this.aEU, j);
    this.aEU += j;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    reset();
    this.buf = new byte[this.fU];
    if ((paramCipherParameters instanceof ParametersWithSBox))
    {
      paramCipherParameters = (ParametersWithSBox)paramCipherParameters;
      System.arraycopy(paramCipherParameters.li(), 0, this.aGd, 0, paramCipherParameters.li().length);
      if (paramCipherParameters.lh() != null) {
        this.aJE = ᐪ(((KeyParameter)paramCipherParameters.lh()).getKey());
      }
      return;
    }
    if ((paramCipherParameters instanceof KeyParameter))
    {
      this.aJE = ᐪ(((KeyParameter)paramCipherParameters).getKey());
      return;
    }
    throw new IllegalArgumentException("invalid parameter passed to GOST28147 init - " + paramCipherParameters.getClass().getName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.GOST28147Mac
 * JD-Core Version:    0.7.0.1
 */