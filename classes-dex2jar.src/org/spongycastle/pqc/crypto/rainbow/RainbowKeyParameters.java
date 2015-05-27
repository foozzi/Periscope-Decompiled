package org.spongycastle.pqc.crypto.rainbow;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public class RainbowKeyParameters
  extends AsymmetricKeyParameter
{
  private int bid;
  
  public RainbowKeyParameters(boolean paramBoolean, int paramInt)
  {
    super(paramBoolean);
    this.bid = paramInt;
  }
  
  public int qD()
  {
    return this.bid;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.RainbowKeyParameters
 * JD-Core Version:    0.7.0.1
 */