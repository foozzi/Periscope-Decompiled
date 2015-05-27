package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;

public class OpenPGPCFBBlockCipher
  implements BlockCipher
{
  private boolean aEW;
  private BlockCipher aEX;
  private byte[] aKF;
  private byte[] aPA;
  private byte[] aPB;
  private int count;
  private int fU;
  
  public OpenPGPCFBBlockCipher(BlockCipher paramBlockCipher)
  {
    this.aEX = paramBlockCipher;
    this.fU = paramBlockCipher.getBlockSize();
    this.aKF = new byte[this.fU];
    this.aPA = new byte[this.fU];
    this.aPB = new byte[this.fU];
  }
  
  private byte ˋ(byte paramByte, int paramInt)
  {
    return (byte)(this.aPB[paramInt] ^ paramByte);
  }
  
  private int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (this.fU + paramInt2 > paramArrayOfByte2.length) {
      throw new DataLengthException("output buffer too short");
    }
    byte[] arrayOfByte;
    int j;
    int i;
    if (this.count > this.fU)
    {
      arrayOfByte = this.aPA;
      j = this.fU;
      i = ˋ(paramArrayOfByte1[paramInt1], this.fU - 2);
      paramArrayOfByte2[paramInt2] = i;
      arrayOfByte[(j - 2)] = i;
      arrayOfByte = this.aPA;
      j = this.fU;
      i = ˋ(paramArrayOfByte1[(paramInt1 + 1)], this.fU - 1);
      paramArrayOfByte2[(paramInt2 + 1)] = i;
      arrayOfByte[(j - 1)] = i;
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      j = 2;
      while (j < this.fU)
      {
        arrayOfByte = this.aPA;
        i = ˋ(paramArrayOfByte1[(paramInt1 + j)], j - 2);
        paramArrayOfByte2[(paramInt2 + j)] = i;
        arrayOfByte[(j - 2)] = i;
        j += 1;
      }
    }
    else if (this.count == 0)
    {
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      j = 0;
      while (j < this.fU)
      {
        arrayOfByte = this.aPA;
        i = ˋ(paramArrayOfByte1[(paramInt1 + j)], j);
        paramArrayOfByte2[(paramInt2 + j)] = i;
        arrayOfByte[j] = i;
        j += 1;
      }
      this.count += this.fU;
    }
    else if (this.count == this.fU)
    {
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      paramArrayOfByte2[paramInt2] = ˋ(paramArrayOfByte1[paramInt1], 0);
      paramArrayOfByte2[(paramInt2 + 1)] = ˋ(paramArrayOfByte1[(paramInt1 + 1)], 1);
      System.arraycopy(this.aPA, 2, this.aPA, 0, this.fU - 2);
      System.arraycopy(paramArrayOfByte2, paramInt2, this.aPA, this.fU - 2, 2);
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      j = 2;
      while (j < this.fU)
      {
        arrayOfByte = this.aPA;
        i = ˋ(paramArrayOfByte1[(paramInt1 + j)], j - 2);
        paramArrayOfByte2[(paramInt2 + j)] = i;
        arrayOfByte[(j - 2)] = i;
        j += 1;
      }
      this.count += this.fU;
    }
    return this.fU;
  }
  
  private int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (this.fU + paramInt2 > paramArrayOfByte2.length) {
      throw new DataLengthException("output buffer too short");
    }
    byte b1;
    int i;
    if (this.count > this.fU)
    {
      b1 = paramArrayOfByte1[paramInt1];
      this.aPA[(this.fU - 2)] = b1;
      paramArrayOfByte2[paramInt2] = ˋ(b1, this.fU - 2);
      b1 = paramArrayOfByte1[(paramInt1 + 1)];
      this.aPA[(this.fU - 1)] = b1;
      paramArrayOfByte2[(paramInt2 + 1)] = ˋ(b1, this.fU - 1);
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      i = 2;
      while (i < this.fU)
      {
        b1 = paramArrayOfByte1[(paramInt1 + i)];
        this.aPA[(i - 2)] = b1;
        paramArrayOfByte2[(paramInt2 + i)] = ˋ(b1, i - 2);
        i += 1;
      }
    }
    else if (this.count == 0)
    {
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      paramInt2 = 0;
      while (paramInt2 < this.fU)
      {
        this.aPA[paramInt2] = paramArrayOfByte1[(paramInt1 + paramInt2)];
        paramArrayOfByte2[paramInt2] = ˋ(paramArrayOfByte1[(paramInt1 + paramInt2)], paramInt2);
        paramInt2 += 1;
      }
      this.count += this.fU;
    }
    else if (this.count == this.fU)
    {
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      b1 = paramArrayOfByte1[paramInt1];
      byte b2 = paramArrayOfByte1[(paramInt1 + 1)];
      paramArrayOfByte2[paramInt2] = ˋ(b1, 0);
      paramArrayOfByte2[(paramInt2 + 1)] = ˋ(b2, 1);
      System.arraycopy(this.aPA, 2, this.aPA, 0, this.fU - 2);
      this.aPA[(this.fU - 2)] = b1;
      this.aPA[(this.fU - 1)] = b2;
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      i = 2;
      while (i < this.fU)
      {
        b1 = paramArrayOfByte1[(paramInt1 + i)];
        this.aPA[(i - 2)] = b1;
        paramArrayOfByte2[(paramInt2 + i)] = ˋ(b1, i - 2);
        i += 1;
      }
      this.count += this.fU;
    }
    return this.fU;
  }
  
  public int getBlockSize()
  {
    return this.aEX.getBlockSize();
  }
  
  public String iG()
  {
    return this.aEX.iG() + "/OpenPGPCFB";
  }
  
  public void reset()
  {
    this.count = 0;
    System.arraycopy(this.aKF, 0, this.aPA, 0, this.aPA.length);
    this.aEX.reset();
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aEW) {
      return ˏ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return ᐝ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    reset();
    this.aEX.ˊ(true, paramCipherParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.OpenPGPCFBBlockCipher
 * JD-Core Version:    0.7.0.1
 */