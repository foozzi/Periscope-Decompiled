package org.spongycastle.crypto.tls;

import java.io.OutputStream;

class TlsOutputStream
  extends OutputStream
{
  private TlsProtocol aTX;
  private byte[] buf;
  
  public void close()
  {
    this.aTX.close();
  }
  
  public void flush()
  {
    this.aTX.flush();
  }
  
  public void write(int paramInt)
  {
    this.buf[0] = ((byte)paramInt);
    write(this.buf, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aTX.ˇ(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsOutputStream
 * JD-Core Version:    0.7.0.1
 */