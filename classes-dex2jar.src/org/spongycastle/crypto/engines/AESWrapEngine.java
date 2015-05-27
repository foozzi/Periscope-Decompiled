package org.spongycastle.crypto.engines;

public class AESWrapEngine
  extends RFC3394WrapEngine
{
  public AESWrapEngine()
  {
    super(new AESEngine());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.AESWrapEngine
 * JD-Core Version:    0.7.0.1
 */