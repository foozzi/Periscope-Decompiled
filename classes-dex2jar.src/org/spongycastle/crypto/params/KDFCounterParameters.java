package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.util.Arrays;

public final class KDFCounterParameters
  implements DerivationParameters
{
  private byte[] aQr;
  private byte[] aQs;
  private byte[] aQt;
  private int aQu;
  
  public byte[] kR()
  {
    return this.aQr;
  }
  
  public byte[] kS()
  {
    return Arrays.І(this.aQs);
  }
  
  public byte[] kT()
  {
    return Arrays.І(this.aQt);
  }
  
  public int kU()
  {
    return this.aQu;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.KDFCounterParameters
 * JD-Core Version:    0.7.0.1
 */