package org.spongycastle.crypto.params;

import org.spongycastle.crypto.CipherParameters;

public class AsymmetricKeyParameter
  implements CipherParameters
{
  boolean aPJ;
  
  public AsymmetricKeyParameter(boolean paramBoolean)
  {
    this.aPJ = paramBoolean;
  }
  
  public boolean isPrivate()
  {
    return this.aPJ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.AsymmetricKeyParameter
 * JD-Core Version:    0.7.0.1
 */