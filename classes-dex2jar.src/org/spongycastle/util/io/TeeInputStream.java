package org.spongycastle.util.io;

import java.io.InputStream;
import java.io.OutputStream;

public class TeeInputStream
  extends InputStream
{
  private final InputStream aTY;
  private final OutputStream nx;
  
  public TeeInputStream(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    this.aTY = paramInputStream;
    this.nx = paramOutputStream;
  }
  
  public void close()
  {
    this.aTY.close();
    this.nx.close();
  }
  
  public int read()
  {
    int i = this.aTY.read();
    if (i >= 0) {
      this.nx.write(i);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = this.aTY.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 > 0) {
      this.nx.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.io.TeeInputStream
 * JD-Core Version:    0.7.0.1
 */