package org.spongycastle.crypto.tls;

public abstract class AbstractTlsServer
  extends AbstractTlsPeer
  implements TlsServer
{
  protected TlsCipherFactory aSC;
  
  public AbstractTlsServer()
  {
    this(new DefaultTlsCipherFactory());
  }
  
  public AbstractTlsServer(TlsCipherFactory paramTlsCipherFactory)
  {
    this.aSC = paramTlsCipherFactory;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsServer
 * JD-Core Version:    0.7.0.1
 */