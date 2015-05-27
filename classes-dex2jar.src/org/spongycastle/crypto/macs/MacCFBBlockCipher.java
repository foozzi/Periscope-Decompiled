package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.params.ParametersWithIV;

class MacCFBBlockCipher
{
  private BlockCipher aEX = null;
  private byte[] aKF;
  private byte[] aNR;
  private byte[] aNS;
  private int fU;
  
  public MacCFBBlockCipher(BlockCipher paramBlockCipher, int paramInt)
  {
    this.aEX = paramBlockCipher;
    this.fU = (paramInt / 8);
    this.aKF = new byte[paramBlockCipher.getBlockSize()];
    this.aNR = new byte[paramBlockCipher.getBlockSize()];
    this.aNS = new byte[paramBlockCipher.getBlockSize()];
  }
  
  public int getBlockSize()
  {
    return this.fU;
  }
  
  public String iG()
  {
    return this.aEX.iG() + "/CFB" + this.fU * 8;
  }
  
  public void reset()
  {
    System.arraycopy(this.aKF, 0, this.aNR, 0, this.aKF.length);
    this.aEX.reset();
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (this.fU + paramInt2 > paramArrayOfByte2.length) {
      throw new DataLengthException("output buffer too short");
    }
    this.aEX.ˊ(this.aNR, 0, this.aNS, 0);
    int i = 0;
    while (i < this.fU)
    {
      paramArrayOfByte2[(paramInt2 + i)] = ((byte)(this.aNS[i] ^ paramArrayOfByte1[(paramInt1 + i)]));
      i += 1;
    }
    System.arraycopy(this.aNR, this.fU, this.aNR, 0, this.aNR.length - this.fU);
    System.arraycopy(paramArrayOfByte2, paramInt2, this.aNR, this.aNR.length - this.fU, this.fU);
    return this.fU;
  }
  
  public void ˊ(CipherParameters paramCipherParameters)
  {
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      paramCipherParameters = (ParametersWithIV)paramCipherParameters;
      byte[] arrayOfByte = paramCipherParameters.getIV();
      if (arrayOfByte.length < this.aKF.length) {
        System.arraycopy(arrayOfByte, 0, this.aKF, this.aKF.length - arrayOfByte.length, arrayOfByte.length);
      } else {
        System.arraycopy(arrayOfByte, 0, this.aKF, 0, this.aKF.length);
      }
      reset();
      this.aEX.ˊ(true, paramCipherParameters.lh());
      return;
    }
    reset();
    this.aEX.ˊ(true, paramCipherParameters);
  }
  
  void ᒽ(byte[] paramArrayOfByte)
  {
    this.aEX.ˊ(this.aNR, 0, paramArrayOfByte, 0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.macs.MacCFBBlockCipher
 * JD-Core Version:    0.7.0.1
 */