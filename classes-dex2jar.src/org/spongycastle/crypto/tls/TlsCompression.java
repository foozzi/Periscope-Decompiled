package org.spongycastle.crypto.tls;

import java.io.OutputStream;

public abstract interface TlsCompression
{
  public abstract OutputStream ʻ(OutputStream paramOutputStream);
  
  public abstract OutputStream ʼ(OutputStream paramOutputStream);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsCompression
 * JD-Core Version:    0.7.0.1
 */