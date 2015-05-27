package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class KeyParameter
  implements CipherParameters
{
  private byte[] key;
  
  public KeyParameter(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public KeyParameter(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.key = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, this.key, 0, paramInt2);
  }
  
  public byte[] getKey()
  {
    return this.key;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.KeyParameter
 * JD-Core Version:    0.7.0.1
 */