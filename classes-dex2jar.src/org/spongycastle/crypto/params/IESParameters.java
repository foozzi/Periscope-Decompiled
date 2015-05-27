package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class IESParameters
  implements CipherParameters
{
  private byte[] aQn;
  private byte[] aQo;
  private int aQp;
  
  public IESParameters(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    this.aQn = paramArrayOfByte1;
    this.aQo = paramArrayOfByte2;
    this.aQp = paramInt;
  }
  
  public byte[] kN()
  {
    return this.aQn;
  }
  
  public byte[] kO()
  {
    return this.aQo;
  }
  
  public int kP()
  {
    return this.aQp;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.IESParameters
 * JD-Core Version:    0.7.0.1
 */