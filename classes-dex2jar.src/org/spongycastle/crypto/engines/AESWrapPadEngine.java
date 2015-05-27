package org.spongycastle.crypto.engines;

public class AESWrapPadEngine
  extends RFC5649WrapEngine
{
  public AESWrapPadEngine()
  {
    super(new AESEngine());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.AESWrapPadEngine
 * JD-Core Version:    0.7.0.1
 */