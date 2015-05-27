package org.spongycastle.crypto.params;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;

public class ParametersWithRandom
  implements CipherParameters
{
  private SecureRandom aFa;
  private CipherParameters aQD;
  
  public ParametersWithRandom(CipherParameters paramCipherParameters, SecureRandom paramSecureRandom)
  {
    this.aFa = paramSecureRandom;
    this.aQD = paramCipherParameters;
  }
  
  public SecureRandom iN()
  {
    return this.aFa;
  }
  
  public CipherParameters lh()
  {
    return this.aQD;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ParametersWithRandom
 * JD-Core Version:    0.7.0.1
 */