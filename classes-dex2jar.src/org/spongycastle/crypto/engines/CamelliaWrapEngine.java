package org.spongycastle.crypto.engines;

public class CamelliaWrapEngine
  extends RFC3394WrapEngine
{
  public CamelliaWrapEngine()
  {
    super(new CamelliaEngine());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.CamelliaWrapEngine
 * JD-Core Version:    0.7.0.1
 */