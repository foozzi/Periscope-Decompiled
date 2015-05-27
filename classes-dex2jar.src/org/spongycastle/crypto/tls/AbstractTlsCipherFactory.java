package org.spongycastle.crypto.tls;

public class AbstractTlsCipherFactory
  implements TlsCipherFactory
{
  public TlsCipher ˊ(TlsContext paramTlsContext, int paramInt1, int paramInt2)
  {
    throw new TlsFatalAlert((short)80);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.AbstractTlsCipherFactory
 * JD-Core Version:    0.7.0.1
 */