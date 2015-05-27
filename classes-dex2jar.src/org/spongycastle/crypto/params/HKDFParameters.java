package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.util.Arrays;

public class HKDFParameters
  implements DerivationParameters
{
  private final byte[] aMT;
  private final byte[] aQl;
  private final boolean aQm;
  private final byte[] aqg;
  
  public byte[] getSalt()
  {
    return Arrays.І(this.aqg);
  }
  
  public byte[] kK()
  {
    return Arrays.І(this.aQl);
  }
  
  public boolean kL()
  {
    return this.aQm;
  }
  
  public byte[] kM()
  {
    return Arrays.І(this.aMT);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.HKDFParameters
 * JD-Core Version:    0.7.0.1
 */