package org.spongycastle.crypto.tls;

import java.io.IOException;

public class TlsFatalAlert
  extends IOException
{
  private short aVq;
  
  public TlsFatalAlert(short paramShort)
  {
    this.aVq = paramShort;
  }
  
  public short mT()
  {
    return this.aVq;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsFatalAlert
 * JD-Core Version:    0.7.0.1
 */