package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class AEADParameters
  implements CipherParameters
{
  private int aNz;
  private KeyParameter aOS;
  private byte[] aPI;
  private byte[] aeu;
  
  public AEADParameters(KeyParameter paramKeyParameter, int paramInt, byte[] paramArrayOfByte)
  {
    this(paramKeyParameter, paramInt, paramArrayOfByte, null);
  }
  
  public AEADParameters(KeyParameter paramKeyParameter, int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aOS = paramKeyParameter;
    this.aeu = paramArrayOfByte1;
    this.aNz = paramInt;
    this.aPI = paramArrayOfByte2;
  }
  
  public byte[] fn()
  {
    return this.aeu;
  }
  
  public int iO()
  {
    return this.aNz;
  }
  
  public KeyParameter ko()
  {
    return this.aOS;
  }
  
  public byte[] kp()
  {
    return this.aPI;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.AEADParameters
 * JD-Core Version:    0.7.0.1
 */