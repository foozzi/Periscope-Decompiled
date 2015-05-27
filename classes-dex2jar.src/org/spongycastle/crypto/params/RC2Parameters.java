package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class RC2Parameters
  implements CipherParameters
{
  private int aQE;
  private byte[] key;
  
  public RC2Parameters(byte[] paramArrayOfByte, int paramInt)
  {
    this.key = new byte[paramArrayOfByte.length];
    this.aQE = paramInt;
    System.arraycopy(paramArrayOfByte, 0, this.key, 0, paramArrayOfByte.length);
  }
  
  public int getEffectiveKeyBits()
  {
    return this.aQE;
  }
  
  public byte[] getKey()
  {
    return this.key;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.RC2Parameters
 * JD-Core Version:    0.7.0.1
 */