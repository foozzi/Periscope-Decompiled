package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.SkippingStreamCipher;
import org.spongycastle.crypto.StreamBlockCipher;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Pack;

public class SICBlockCipher
  extends StreamBlockCipher
  implements SkippingStreamCipher
{
  private final BlockCipher aEX;
  private byte[] aKF;
  private int aOL;
  private byte[] aOZ;
  private byte[] aPE;
  private final int fU;
  
  public SICBlockCipher(BlockCipher paramBlockCipher)
  {
    super(paramBlockCipher);
    this.aEX = paramBlockCipher;
    this.fU = this.aEX.getBlockSize();
    this.aKF = new byte[this.fU];
    this.aOZ = new byte[this.fU];
    this.aPE = new byte[this.fU];
    this.aOL = 0;
  }
  
  private void kk()
  {
    int j = this.aOZ.length - 1;
    while (j >= 0)
    {
      byte[] arrayOfByte = this.aOZ;
      int i = (byte)(arrayOfByte[j] + 1);
      arrayOfByte[j] = i;
      if (i != 0) {
        break;
      }
      j -= 1;
    }
  }
  
  private void kl()
  {
    if (this.aOZ[0] == 0)
    {
      int k = 0;
      j = this.aOZ.length - 1;
      while (j > 0)
      {
        if (this.aOZ[j] != 0) {
          k = 1;
        }
        j -= 1;
      }
      if (k == 0) {
        throw new IllegalStateException("attempt to reduce counter past zero.");
      }
    }
    int j = this.aOZ.length - 1;
    while (j >= 0)
    {
      byte[] arrayOfByte = this.aOZ;
      int i = (byte)(arrayOfByte[j] - 1);
      arrayOfByte[j] = i;
      if (i != -1) {
        break;
      }
      j -= 1;
    }
  }
  
  private void ᵛ(long paramLong)
  {
    if (paramLong >= 0L)
    {
      l2 = (this.aOL + paramLong) / this.fU;
      for (l1 = 0L; l1 != l2; l1 += 1L) {
        kk();
      }
      this.aOL = ((int)(this.aOL + paramLong - this.fU * l2));
      return;
    }
    long l2 = (-paramLong - this.aOL) / this.fU;
    for (long l1 = 0L; l1 != l2; l1 += 1L) {
      kl();
    }
    int i = (int)(this.aOL + paramLong + this.fU * l2);
    if (i >= 0)
    {
      this.aOL = 0;
      return;
    }
    kl();
    this.aOL = (this.fU + i);
  }
  
  public int getBlockSize()
  {
    return this.aEX.getBlockSize();
  }
  
  public long getPosition()
  {
    byte[] arrayOfByte = new byte[this.aKF.length];
    System.arraycopy(this.aOZ, 0, arrayOfByte, 0, arrayOfByte.length);
    int i = arrayOfByte.length - 1;
    while (i >= 1)
    {
      int k = arrayOfByte[i] - this.aKF[i];
      int j = k;
      if (k < 0)
      {
        j = i - 1;
        arrayOfByte[j] = ((byte)(arrayOfByte[j] - 1));
        j = k + 256;
      }
      arrayOfByte[i] = ((byte)j);
      i -= 1;
    }
    return Pack.יּ(arrayOfByte, arrayOfByte.length - 8) * this.fU + this.aOL;
  }
  
  public String iG()
  {
    return this.aEX.iG() + "/SIC";
  }
  
  public void reset()
  {
    System.arraycopy(this.aKF, 0, this.aOZ, 0, this.aOZ.length);
    this.aEX.reset();
    this.aOL = 0;
  }
  
  public long skip(long paramLong)
  {
    ᵛ(paramLong);
    this.aEX.ˊ(this.aOZ, 0, this.aPE, 0);
    return paramLong;
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
      System.arraycopy(paramCipherParameters.getIV(), 0, this.aKF, 0, this.aKF.length);
      if (paramCipherParameters.lh() != null) {
        this.aEX.ˊ(true, paramCipherParameters.lh());
      }
      reset();
      return;
    }
    throw new IllegalArgumentException("SIC mode requires ParametersWithIV");
  }
  
  protected byte ͺ(byte paramByte)
  {
    if (this.aOL == 0)
    {
      this.aEX.ˊ(this.aOZ, 0, this.aPE, 0);
      arrayOfByte = this.aPE;
      i = this.aOL;
      this.aOL = (i + 1);
      return (byte)(arrayOfByte[i] ^ paramByte);
    }
    byte[] arrayOfByte = this.aPE;
    int i = this.aOL;
    this.aOL = (i + 1);
    byte b = (byte)(arrayOfByte[i] ^ paramByte);
    if (this.aOL == this.aOZ.length)
    {
      this.aOL = 0;
      kk();
    }
    return b;
  }
  
  public long ו(long paramLong)
  {
    reset();
    return skip(paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.SICBlockCipher
 * JD-Core Version:    0.7.0.1
 */