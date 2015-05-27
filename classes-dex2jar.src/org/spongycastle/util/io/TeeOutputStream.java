package org.spongycastle.util.io;

import java.io.OutputStream;

public class TeeOutputStream
  extends OutputStream
{
  private OutputStream bkj;
  private OutputStream bkk;
  
  public TeeOutputStream(OutputStream paramOutputStream1, OutputStream paramOutputStream2)
  {
    this.bkj = paramOutputStream1;
    this.bkk = paramOutputStream2;
  }
  
  public void close()
  {
    this.bkj.close();
    this.bkk.close();
  }
  
  public void flush()
  {
    this.bkj.flush();
    this.bkk.flush();
  }
  
  public void write(int paramInt)
  {
    this.bkj.write(paramInt);
    this.bkk.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    this.bkj.write(paramArrayOfByte);
    this.bkk.write(paramArrayOfByte);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.bkj.write(paramArrayOfByte, paramInt1, paramInt2);
    this.bkk.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.io.TeeOutputStream
 * JD-Core Version:    0.7.0.1
 */