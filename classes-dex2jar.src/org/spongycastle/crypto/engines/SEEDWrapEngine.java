package org.spongycastle.crypto.engines;

public class SEEDWrapEngine
  extends RFC3394WrapEngine
{
  public SEEDWrapEngine()
  {
    super(new SEEDEngine());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.SEEDWrapEngine
 * JD-Core Version:    0.7.0.1
 */