package org.spongycastle.crypto.tls;

public abstract interface TlsSession
{
  public abstract void invalidate();
  
  public abstract byte[] nt();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsSession
 * JD-Core Version:    0.7.0.1
 */