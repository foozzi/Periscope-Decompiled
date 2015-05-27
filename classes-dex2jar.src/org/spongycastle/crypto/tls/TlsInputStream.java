package org.spongycastle.crypto.tls;

import java.io.InputStream;

class TlsInputStream
  extends InputStream
{
  private TlsProtocol aTX;
  private byte[] buf;
  
  public int available()
  {
    return this.aTX.nb();
  }
  
  public void close()
  {
    this.aTX.close();
  }
  
  public int read()
  {
    if (read(this.buf) < 0) {
      return -1;
    }
    return this.buf[0] & 0xFF;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.aTX.ˆ(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsInputStream
 * JD-Core Version:    0.7.0.1
 */