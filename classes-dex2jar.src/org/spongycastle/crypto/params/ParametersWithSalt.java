package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class ParametersWithSalt
  implements CipherParameters
{
  private CipherParameters aQD;
  private byte[] aqg;
  
  public byte[] getSalt()
  {
    return this.aqg;
  }
  
  public CipherParameters lh()
  {
    return this.aQD;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ParametersWithSalt
 * JD-Core Version:    0.7.0.1
 */