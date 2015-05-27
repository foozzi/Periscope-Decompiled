package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.params.ParametersWithIV;

public class PGPCFBBlockCipher
  implements BlockCipher
{
  private boolean aEW;
  private BlockCipher aEX;
  private byte[] aKF;
  private byte[] aPA;
  private byte[] aPB;
  private byte[] aPC;
  private boolean aPD;
  private int count;
  private int fU;
  
  public PGPCFBBlockCipher(BlockCipher paramBlockCipher, boolean paramBoolean)
  {
    this.aEX = paramBlockCipher;
    this.aPD = paramBoolean;
    this.fU = paramBlockCipher.getBlockSize();
    this.aKF = new byte[this.fU];
    this.aPA = new byte[this.fU];
    this.aPB = new byte[this.fU];
    this.aPC = new byte[this.fU];
  }
  
  private int ʽ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    int i;
    if (this.count == 0)
    {
      if (this.fU * 2 + paramInt2 + 2 > paramArrayOfByte2.length) {
        throw new DataLengthException("output buffer too short");
      }
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      i = 0;
      while (i < this.fU)
      {
        paramArrayOfByte2[(paramInt2 + i)] = ˋ(this.aKF[i], i);
        i += 1;
      }
      System.arraycopy(paramArrayOfByte2, paramInt2, this.aPA, 0, this.fU);
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      paramArrayOfByte2[(this.fU + paramInt2)] = ˋ(this.aKF[(this.fU - 2)], 0);
      paramArrayOfByte2[(this.fU + paramInt2 + 1)] = ˋ(this.aKF[(this.fU - 1)], 1);
      System.arraycopy(paramArrayOfByte2, paramInt2 + 2, this.aPA, 0, this.fU);
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      i = 0;
      while (i < this.fU)
      {
        paramArrayOfByte2[(this.fU + paramInt2 + 2 + i)] = ˋ(paramArrayOfByte1[(paramInt1 + i)], i);
        i += 1;
      }
      System.arraycopy(paramArrayOfByte2, this.fU + paramInt2 + 2, this.aPA, 0, this.fU);
      this.count += this.fU * 2 + 2;
      return this.fU * 2 + 2;
    }
    if (this.count >= this.fU + 2)
    {
      if (this.fU + paramInt2 > paramArrayOfByte2.length) {
        throw new DataLengthException("output buffer too short");
      }
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      i = 0;
      while (i < this.fU)
      {
        paramArrayOfByte2[(paramInt2 + i)] = ˋ(paramArrayOfByte1[(paramInt1 + i)], i);
        i += 1;
      }
      System.arraycopy(paramArrayOfByte2, paramInt2, this.aPA, 0, this.fU);
    }
    return this.fU;
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
    this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
    int i = 0;
    while (i < this.fU)
    {
      paramArrayOfByte2[(paramInt2 + i)] = ˋ(paramArrayOfByte1[(paramInt1 + i)], i);
      i += 1;
    }
    paramInt1 = 0;
    while (paramInt1 < this.fU)
    {
      this.aPA[paramInt1] = paramArrayOfByte2[(paramInt2 + paramInt1)];
      paramInt1 += 1;
    }
    return this.fU;
  }
  
  private int ͺ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (this.fU + paramInt2 > paramArrayOfByte2.length) {
      throw new DataLengthException("output buffer too short");
    }
    if (this.count == 0)
    {
      paramInt2 = 0;
      while (paramInt2 < this.fU)
      {
        this.aPA[paramInt2] = paramArrayOfByte1[(paramInt1 + paramInt2)];
        paramInt2 += 1;
      }
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      this.count += this.fU;
      return 0;
    }
    if (this.count == this.fU)
    {
      System.arraycopy(paramArrayOfByte1, paramInt1, this.aPC, 0, this.fU);
      System.arraycopy(this.aPA, 2, this.aPA, 0, this.fU - 2);
      this.aPA[(this.fU - 2)] = this.aPC[0];
      this.aPA[(this.fU - 1)] = this.aPC[1];
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      paramInt1 = 0;
      while (paramInt1 < this.fU - 2)
      {
        paramArrayOfByte2[(paramInt2 + paramInt1)] = ˋ(this.aPC[(paramInt1 + 2)], paramInt1);
        paramInt1 += 1;
      }
      System.arraycopy(this.aPC, 2, this.aPA, 0, this.fU - 2);
      this.count += 2;
      return this.fU - 2;
    }
    if (this.count >= this.fU + 2)
    {
      System.arraycopy(paramArrayOfByte1, paramInt1, this.aPC, 0, this.fU);
      paramArrayOfByte2[(paramInt2 + 0)] = ˋ(this.aPC[0], this.fU - 2);
      paramArrayOfByte2[(paramInt2 + 1)] = ˋ(this.aPC[1], this.fU - 1);
      System.arraycopy(this.aPC, 0, this.aPA, this.fU - 2, 2);
      this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
      paramInt1 = 0;
      while (paramInt1 < this.fU - 2)
      {
        paramArrayOfByte2[(paramInt2 + paramInt1 + 2)] = ˋ(this.aPC[(paramInt1 + 2)], paramInt1);
        paramInt1 += 1;
      }
      System.arraycopy(this.aPC, 2, this.aPA, 0, this.fU - 2);
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
    this.aEX.ˊ(this.aPA, 0, this.aPB, 0);
    int i = 0;
    while (i < this.fU)
    {
      paramArrayOfByte2[(paramInt2 + i)] = ˋ(paramArrayOfByte1[(paramInt1 + i)], i);
      i += 1;
    }
    paramInt2 = 0;
    while (paramInt2 < this.fU)
    {
      this.aPA[paramInt2] = paramArrayOfByte1[(paramInt1 + paramInt2)];
      paramInt2 += 1;
    }
    return this.fU;
  }
  
  public int getBlockSize()
  {
    return this.aEX.getBlockSize();
  }
  
  public String iG()
  {
    if (this.aPD) {
      return this.aEX.iG() + "/PGPCFBwithIV";
    }
    return this.aEX.iG() + "/PGPCFB";
  }
  
  public void reset()
  {
    this.count = 0;
    int i = 0;
    while (i != this.aPA.length)
    {
      if (this.aPD) {
        this.aPA[i] = 0;
      } else {
        this.aPA[i] = this.aKF[i];
      }
      i += 1;
    }
    this.aEX.reset();
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aPD)
    {
      if (this.aEW) {
        return ʽ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
      }
      return ͺ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    if (this.aEW) {
      return ˏ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return ᐝ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aEW = paramBoolean;
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      paramCipherParameters = (ParametersWithIV)paramCipherParameters;
      byte[] arrayOfByte = paramCipherParameters.getIV();
      if (arrayOfByte.length < this.aKF.length)
      {
        System.arraycopy(arrayOfByte, 0, this.aKF, this.aKF.length - arrayOfByte.length, arrayOfByte.length);
        int i = 0;
        while (i < this.aKF.length - arrayOfByte.length)
        {
          this.aKF[i] = 0;
          i += 1;
        }
      }
      else
      {
        System.arraycopy(arrayOfByte, 0, this.aKF, 0, this.aKF.length);
      }
      reset();
      this.aEX.ˊ(true, paramCipherParameters.lh());
      return;
    }
    reset();
    this.aEX.ˊ(true, paramCipherParameters);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.PGPCFBBlockCipher
 * JD-Core Version:    0.7.0.1
 */