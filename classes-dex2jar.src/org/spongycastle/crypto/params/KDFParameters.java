package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;

public class KDFParameters
  implements DerivationParameters
{
  byte[] aMC;
  byte[] iv;
  
  public KDFParameters(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.aMC = paramArrayOfByte1;
    this.iv = paramArrayOfByte2;
  }
  
  public byte[] getIV()
  {
    return this.iv;
  }
  
  public byte[] kX()
  {
    return this.aMC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.KDFParameters
 * JD-Core Version:    0.7.0.1
 */