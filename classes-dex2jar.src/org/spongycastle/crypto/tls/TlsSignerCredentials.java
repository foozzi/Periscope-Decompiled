package org.spongycastle.crypto.tls;

public abstract interface TlsSignerCredentials
  extends TlsCredentials
{
  public abstract SignatureAndHashAlgorithm lO();
  
  public abstract byte[] ﯨ(byte[] paramArrayOfByte);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsSignerCredentials
 * JD-Core Version:    0.7.0.1
 */