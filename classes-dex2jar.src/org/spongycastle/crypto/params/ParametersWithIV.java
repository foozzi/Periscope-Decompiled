package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class ParametersWithIV
  implements CipherParameters
{
  private CipherParameters aQD;
  private byte[] iv;
  
  public ParametersWithIV(CipherParameters paramCipherParameters, byte[] paramArrayOfByte)
  {
    this(paramCipherParameters, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public ParametersWithIV(CipherParameters paramCipherParameters, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.iv = new byte[paramInt2];
    this.aQD = paramCipherParameters;
    System.arraycopy(paramArrayOfByte, paramInt1, this.iv, 0, paramInt2);
  }
  
  public byte[] getIV()
  {
    return this.iv;
  }
  
  public CipherParameters lh()
  {
    return this.aQD;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ParametersWithIV
 * JD-Core Version:    0.7.0.1
 */