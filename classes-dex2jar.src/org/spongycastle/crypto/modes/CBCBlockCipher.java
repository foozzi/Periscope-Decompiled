package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;

public class CBCBlockCipher
  implements BlockCipher
{
  private BlockCipher aEX = null;
  private boolean aIY;
  private byte[] aKF;
  private byte[] aOD;
  private byte[] aOE;
  private int fU;
  
  public CBCBlockCipher(BlockCipher paramBlockCipher)
  {
    this.aEX = paramBlockCipher;
    this.fU = paramBlockCipher.getBlockSize();
    this.aKF = new byte[this.fU];
    this.aOD = new byte[this.fU];
    this.aOE = new byte[this.fU];
  }
  
  private int ˏ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    int i = 0;
    while (i < this.fU)
    {
      byte[] arrayOfByte = this.aOD;
      arrayOfByte[i] = ((byte)(arrayOfByte[i] ^ paramArrayOfByte1[(paramInt1 + i)]));
      i += 1;
    }
    paramInt1 = this.aEX.ˊ(this.aOD, 0, paramArrayOfByte2, paramInt2);
    System.arraycopy(paramArrayOfByte2, paramInt2, this.aOD, 0, this.aOD.length);
    return paramInt1;
  }
  
  private int ᐝ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.fU + paramInt1 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    System.arraycopy(paramArrayOfByte1, paramInt1, this.aOE, 0, this.fU);
    int i = this.aEX.ˊ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    paramInt1 = 0;
    while (paramInt1 < this.fU)
    {
      int j = paramInt2 + paramInt1;
      paramArrayOfByte2[j] = ((byte)(paramArrayOfByte2[j] ^ this.aOD[paramInt1]));
      paramInt1 += 1;
    }
    paramArrayOfByte1 = this.aOD;
    this.aOD = this.aOE;
    this.aOE = paramArrayOfByte1;
    return i;
  }
  
  public int getBlockSize()
  {
    return this.aEX.getBlockSize();
  }
  
  public String iG()
  {
    return this.aEX.iG() + "/CBC";
  }
  
  public BlockCipher iH()
  {
    return this.aEX;
  }
  
  public void reset()
  {
    System.arraycopy(this.aKF, 0, this.aOD, 0, this.aKF.length);
    Arrays.fill(this.aOE, (byte)0);
    this.aEX.reset();
  }
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aIY) {
      return ˏ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
    }
    return ᐝ(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    boolean bool = this.aIY;
    this.aIY = paramBoolean;
    if ((paramCipherParameters instanceof ParametersWithIV))
    {
      paramCipherParameters = (ParametersWithIV)paramCipherParameters;
      byte[] arrayOfByte = paramCipherParameters.getIV();
      if (arrayOfByte.length != this.fU) {
        throw new IllegalArgumentException("initialisation vector must be the same length as block size");
      }
      System.arraycopy(arrayOfByte, 0, this.aKF, 0, arrayOfByte.length);
      reset();
      if (paramCipherParameters.lh() != null) {
        this.aEX.ˊ(paramBoolean, paramCipherParameters.lh());
      } else if (bool != paramBoolean) {
        throw new IllegalArgumentException("cannot change encrypting state without providing key.");
      }
      return;
    }
    reset();
    if (paramCipherParameters != null)
    {
      this.aEX.ˊ(paramBoolean, paramCipherParameters);
      return;
    }
    if (bool != paramBoolean) {
      throw new IllegalArgumentException("cannot change encrypting state without providing key.");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.modes.CBCBlockCipher
 * JD-Core Version:    0.7.0.1
 */