package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

public class CFBBlockCipher
  extends StreamBlockCipher
{
  private BlockCipher aEX = null;
  private boolean aIY;
  private byte[] aKF;
  private byte[] aNR;
  private byte[] aNS;
  private byte[] aNo;
  private int aOL;
  private int fU;
  
  public CFBBlockCipher(BlockCipher paramBlockCipher, int paramInt)
  {
    super(paramBlockCipher);
    this.aEX = paramBlockCipher;
    this.fU = (paramInt / 8);
    this.aKF = new byte[paramBlockCipher.getBlockSize()];
    this.aNR = new byte[paramBlockCipher.getBlockSize()];
    this.aNS = new byte[paramBlockCipher.getBlockSize()];
    this.aNo = new byte[this.fU];
  }
  
  private byte ʾ(byte paramByte)
  {
    if (this.aOL == 0) {
      this.aEX.ˊ(this.aNR, 0, this.aNS, 0);
    }
    this.aNo[this.aOL] = paramByte;
    byte[] arrayOfByte = this.aNS;
    int i = this.aOL;
    this.aOL = (i + 1);
    paramByte = (byte)(arrayOfByte[i] ^ paramByte);
    if (this.aOL == this.fU)
    {
      this.aOL = 0;
      System.arraycopy(this.aNR, this.fU, this.aNR, 0, this.aNR.length - this.fU);
      System.arraycopy(this.aNo, 0, this.aNR, this.aNR.length - this.fU, this.fU);
    }
    return paramByte;
  }
  
  private byte ι(byte paramByte)
  {
    if (this.aOL == 0) {
      this.aEX.ˊ(this.aNR, 0, this.aNS, 0);
    }
    byte b = (byte)(this.aNS[this.aOL] ^ paramByte);
    byte[] arrayOfByte = this.aNo;
    paramByte = this.aOL;
    this.aOL = (paramByte + 1);
    arrayOfByte[paramByte] = b;
    if (this.aOL == this.fU)
    {
      this.aOL = 0;
      System.arraycopy(this.aNR, this.fU, this.aNR, 0, this.aNR.length - this.fU);
      System.arraycopy(this.aNo, 0, this.aNR, this.aNR.length - this.fU, this.fU);
    }
    return b;
  }
  
  public int getBlockSize()
  {
    return this.fU;
  }
  
  public String iG()
  {
    return this.aEX.iG() + "/CFB" + this.fU * 8;
  }
  
  public byte[] kf()
  {
    return Arrays.І(this.aNR);
  }
  
  public void reset()
  {
    System.arraycopy(this.aKF, 0, this.aNR, 0, this.aKF.length);
    Arrays.fill(this.aNo, (byte)0);
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
    this.aIY = paramBoolean;
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
    if (this.aIY) {
      return ι(paramByte);
    }
    return ʾ(paramByte);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.CFBBlockCipher
 * JD-Core Version:    0.7.0.1
 */