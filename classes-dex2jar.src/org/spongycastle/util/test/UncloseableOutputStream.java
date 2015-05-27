package org.spongycastle.util.test;

import java.io.FilterOutputStream;
import java.io.OutputStream;

public class UncloseableOutputStream
  extends FilterOutputStream
{
  public void close()
  {
    throw new RuntimeException("close() called on UncloseableOutputStream");
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.out.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.test.UncloseableOutputStream
 * JD-Core Version:    0.7.0.1
 */