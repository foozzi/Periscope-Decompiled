package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class ParametersWithSBox
  implements CipherParameters
{
  private byte[] aFY;
  private CipherParameters aQD;
  
  public ParametersWithSBox(CipherParameters paramCipherParameters, byte[] paramArrayOfByte)
  {
    this.aQD = paramCipherParameters;
    this.aFY = paramArrayOfByte;
  }
  
  public CipherParameters lh()
  {
    return this.aQD;
  }
  
  public byte[] li()
  {
    return this.aFY;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ParametersWithSBox
 * JD-Core Version:    0.7.0.1
 */