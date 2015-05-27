package o;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;

class so
  extends sn.ˊ<sn>
{
  so(sn paramsn, Closeable paramCloseable, boolean paramBoolean, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    super(paramCloseable, paramBoolean);
  }
  
  public sn dE()
  {
    byte[] arrayOfByte = new byte[sn.ˊ(this.Yd)];
    for (;;)
    {
      int i = this.Yb.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      this.Yc.write(arrayOfByte, 0, i);
    }
    return this.Yd;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.so
 * JD-Core Version:    0.7.0.1
 */