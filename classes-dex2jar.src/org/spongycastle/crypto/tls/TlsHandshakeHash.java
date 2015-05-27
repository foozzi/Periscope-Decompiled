package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Digest;

public abstract interface TlsHandshakeHash
  extends Digest
{
  public abstract TlsHandshakeHash lT();
  
  public abstract void lU();
  
  public abstract TlsHandshakeHash lV();
  
  public abstract Digest lW();
  
  public abstract void ˎ(short paramShort);
  
  public abstract byte[] ˏ(short paramShort);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsHandshakeHash
 * JD-Core Version:    0.7.0.1
 */