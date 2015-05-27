package org.spongycastle.crypto.tls;

import java.io.OutputStream;

public class TlsNullCompression
  implements TlsCompression
{
  public OutputStream ʻ(OutputStream paramOutputStream)
  {
    return paramOutputStream;
  }
  
  public OutputStream ʼ(OutputStream paramOutputStream)
  {
    return paramOutputStream;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsNullCompression
 * JD-Core Version:    0.7.0.1
 */