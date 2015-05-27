package org.spongycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.InputStream;
import org.spongycastle.crypto.Mac;

public class MacInputStream
  extends FilterInputStream
{
  protected Mac aKx;
  
  public MacInputStream(InputStream paramInputStream, Mac paramMac)
  {
    super(paramInputStream);
    this.aKx = paramMac;
  }
  
  public int read()
  {
    int i = this.in.read();
    if (i >= 0) {
      this.aKx.update((byte)i);
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 >= 0) {
      this.aKx.update(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.io.MacInputStream
 * JD-Core Version:    0.7.0.1
 */