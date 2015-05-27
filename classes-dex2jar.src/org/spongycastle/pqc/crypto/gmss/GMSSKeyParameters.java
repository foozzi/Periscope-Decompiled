package org.spongycastle.pqc.crypto.gmss;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;

public class GMSSKeyParameters
  extends AsymmetricKeyParameter
{
  private GMSSParameters bet;
  
  public GMSSKeyParameters(boolean paramBoolean, GMSSParameters paramGMSSParameters)
  {
    super(paramBoolean);
    this.bet = paramGMSSParameters;
  }
  
  public GMSSParameters qI()
  {
    return this.bet;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSKeyParameters
 * JD-Core Version:    0.7.0.1
 */