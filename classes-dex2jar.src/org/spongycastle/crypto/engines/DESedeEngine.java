package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;

public class DESedeEngine
  extends DESEngine
{
  private boolean aEW;
  private int[] aJS = null;
  private int[] aJT = null;
  private int[] aJU = null;
  
  public int getBlockSize()
  {
    return 8;
  }
  
  public String iG()
  {
    return "DESede";
  }
  
  public void reset() {}
  
  public int ˊ(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if (this.aJS == null) {
      throw new IllegalStateException("DESede engine not initialised");
    }
    if (paramInt1 + 8 > paramArrayOfByte1.length) {
      throw new DataLengthException("input buffer too short");
    }
    if (paramInt2 + 8 > paramArrayOfByte2.length) {
      throw new OutputLengthException("output buffer too short");
    }
    byte[] arrayOfByte = new byte[8];
    if (this.aEW)
    {
      ˊ(this.aJS, paramArrayOfByte1, paramInt1, arrayOfByte, 0);
      ˊ(this.aJT, arrayOfByte, 0, arrayOfByte, 0);
      ˊ(this.aJU, arrayOfByte, 0, paramArrayOfByte2, paramInt2);
    }
    else
    {
      ˊ(this.aJU, paramArrayOfByte1, paramInt1, arrayOfByte, 0);
      ˊ(this.aJT, arrayOfByte, 0, arrayOfByte, 0);
      ˊ(this.aJS, arrayOfByte, 0, paramArrayOfByte2, paramInt2);
    }
    return 8;
  }
  
  public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
  {
    if (!(paramCipherParameters instanceof KeyParameter)) {
      throw new IllegalArgumentException("invalid parameter passed to DESede init - " + paramCipherParameters.getClass().getName());
    }
    paramCipherParameters = ((KeyParameter)paramCipherParameters).getKey();
    if ((paramCipherParameters.length != 24) && (paramCipherParameters.length != 16)) {
      throw new IllegalArgumentException("key size must be 16 or 24 bytes.");
    }
    this.aEW = paramBoolean;
    byte[] arrayOfByte = new byte[8];
    System.arraycopy(paramCipherParameters, 0, arrayOfByte, 0, arrayOfByte.length);
    this.aJS = ˋ(paramBoolean, arrayOfByte);
    arrayOfByte = new byte[8];
    System.arraycopy(paramCipherParameters, 8, arrayOfByte, 0, arrayOfByte.length);
    boolean bool;
    if (!paramBoolean) {
      bool = true;
    } else {
      bool = false;
    }
    this.aJT = ˋ(bool, arrayOfByte);
    if (paramCipherParameters.length == 24)
    {
      arrayOfByte = new byte[8];
      System.arraycopy(paramCipherParameters, 16, arrayOfByte, 0, arrayOfByte.length);
      this.aJU = ˋ(paramBoolean, arrayOfByte);
      return;
    }
    this.aJU = this.aJS;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.DESedeEngine
 * JD-Core Version:    0.7.0.1
 */