package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;

public class ISO18033KDFParameters
  implements DerivationParameters
{
  byte[] aDx;
  
  public byte[] getSeed()
  {
    return this.aDx;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.ISO18033KDFParameters
 * JD-Core Version:    0.7.0.1
 */