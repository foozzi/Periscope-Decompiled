package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;

public class OFBBlockCipher
  extends StreamBlockCipher
{
  private final BlockCipher aEX;
  private byte[] aKF;
  private int aOL;
  private byte[] aPf;
  private byte[] aPg;
  private final int fU;
  
  public OFBBlockCipher(BlockCipher paramBlockCipher, int paramInt)
  {
    super(paramBlockCipher);
    this.aEX = paramBlockCipher;
    this.fU = (paramInt / 8);
    this.aKF = new byte[paramBlockCipher.getBlockSize()];
    this.aPf = new byte[paramBlockCipher.getBlockSize()];
    this.aPg = new byte[paramBlockCipher.getBlockSize()];
  }
  
  public int getBlockSize()
  {
    return this.fU;
  }
  
  public String iG()
  {
    return this.aEX.iG() + "/OFB" + this.fU * 8;
  }
  
  public void reset()
  {
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
    if (this.aOL == 0) {
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
 * Qualified Name:     org.spongycastle.crypto.modes.OFBBlockCipher
 * JD-Core Version:    0.7.0.1
 */