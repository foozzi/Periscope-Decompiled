package org.spongycastle.crypto.params;

import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.util.Arrays;

public final class KDFFeedbackParameters
  implements DerivationParameters
{
  private final byte[] aNe;
  private final boolean aNf;
  private final byte[] aQr;
  private final int aQu;
  private final byte[] iv;
  
  public byte[] getIV()
  {
    return this.iv;
  }
  
  public byte[] kR()
  {
    return this.aQr;
  }
  
  public int kU()
  {
    return this.aQu;
  }
  
  public boolean kV()
  {
    return this.aNf;
  }
  
  public byte[] kW()
  {
    return Arrays.І(this.aNe);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.KDFFeedbackParameters
 * JD-Core Version:    0.7.0.1
 */