package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;

public class GOFBBlockCipher
  extends StreamBlockCipher
{
  private final BlockCipher aEX;
  private byte[] aKF;
  boolean aNH = true;
  private int aOL;
  private byte[] aPf;
  private byte[] aPg;
  int aPh;
  int aPi;
  private final int fU;
  
  public GOFBBlockCipher(BlockCipher paramBlockCipher)
  {
    super(paramBlockCipher);
    this.aEX = paramBlockCipher;
    this.fU = paramBlockCipher.getBlockSize();
    if (this.fU != 8) {
      throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
    }
    this.aKF = new byte[paramBlockCipher.getBlockSize()];
    this.aPf = new byte[paramBlockCipher.getBlockSize()];
    this.aPg = new byte[paramBlockCipher.getBlockSize()];
  }
  
  private void ˏ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >>> 24));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[paramInt2] = ((byte)paramInt1);
  }
  
  private int ـ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[(paramInt + 3)] << 24 & 0xFF000000) + (paramArrayOfByte[(paramInt + 2)] << 16 & 0xFF0000) + (paramArrayOfByte[(paramInt + 1)] << 8 & 0xFF00) + (paramArrayOfByte[paramInt] & 0xFF);
  }
  
  public int getBlockSize()
  {
    return this.fU;
  }
  
  public String iG()
  {
    return this.aEX.iG() + "/GCTR";
  }
  
  public void reset()
  {
    this.aNH = true;
    this.aPh = 0;
    this.aPi = 0;
    System.arraycopy(this.aKF, 0, this.aPf, 0, this.aKF.length);
    this.aOL = 0;
    this.aEX.reset();
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    ˋ(paramArrayOfByte1, paramInt1, this.fU, paramArrayOfByte2, paramInt2);
    return this.fU;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    this.aNH = true;
    this.aPh = 0;
    this.aPi = 0;
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
      if (paramCipherParameters.lh() != null) {
        this.aEX.ˊ(true, paramCipherParameters.lh());
      }
      return;
    }
    reset();
    if (paramCipherParameters != null) {
      this.aEX.ˊ(true, paramCipherParameters);
    }
  }
  
  protected byte ͺ(byte paramByte)
  {
    if (this.aOL == 0)
    {
      if (this.aNH)
      {
        this.aNH = false;
        this.aEX.ˊ(this.aPf, 0, this.aPg, 0);
        this.aPh = ـ(this.aPg, 0);
        this.aPi = ـ(this.aPg, 4);
      }
      this.aPh += 16843009;
      this.aPi += 16843012;
      ˏ(this.aPh, this.aPf, 0);
      ˏ(this.aPi, this.aPf, 4);
      this.aEX.ˊ(this.aPf, 0, this.aPg, 0);
    }
    byte[] arrayOfByte = this.aPg;
    int i = this.aOL;
    this.aOL = (i + 1);
    byte b = (byte)(arrayOfByte[i] ^ paramByte);
    if (this.aOL == this.fU)
    {
      this.aOL = 0;
      System.arraycopy(this.aPf, this.fU, this.aPf, 0, this.aPf.length - this.fU);
      System.arraycopy(this.aPg, 0, this.aPf, this.aPf.length - this.fU, this.fU);
    }
    return b;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.GOFBBlockCipher
 * JD-Core Version:    0.7.0.1
 */