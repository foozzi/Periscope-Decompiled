package o;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

class ᴺ
  implements Closeable
{
  private byte[] buf;
  private int end;
  private final Charset fk;
  private final InputStream in;
  private int pos;
  
  public ᴺ(InputStream paramInputStream, int paramInt, Charset paramCharset)
  {
    if ((paramInputStream == null) || (paramCharset == null)) {
      throw new NullPointerException();
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("capacity <= 0");
    }
    if (!paramCharset.equals(ᵑ.US_ASCII)) {
      throw new IllegalArgumentException("Unsupported encoding");
    }
    this.in = paramInputStream;
    this.fk = paramCharset;
    this.buf = new byte[paramInt];
  }
  
  public ᴺ(InputStream paramInputStream, Charset paramCharset)
  {
    this(paramInputStream, 8192, paramCharset);
  }
  
  private void ḻ()
  {
    int i = this.in.read(this.buf, 0, this.buf.length);
    if (i == -1) {
      throw new EOFException();
    }
    this.pos = 0;
    this.end = i;
  }
  
  public void close()
  {
    synchronized (this.in)
    {
      if (this.buf != null)
      {
        this.buf = null;
        this.in.close();
      }
      return;
    }
  }
  
  public String readLine()
  {
    for (;;)
    {
      int i;
      synchronized (this.in)
      {
        if (this.buf == null) {
          throw new IOException("LineReader is closed");
        }
        if (this.pos >= this.end) {
          ḻ();
        }
        i = this.pos;
        Object localObject1;
        if (i != this.end)
        {
          if (this.buf[i] == 10)
          {
            if ((i != this.pos) && (this.buf[(i - 1)] == 13))
            {
              j = i - 1;
              localObject1 = new String(this.buf, this.pos, j - this.pos, this.fk.name());
              this.pos = (i + 1);
              return localObject1;
            }
          }
          else {
            i += 1;
          }
        }
        else
        {
          localObject1 = new ᵈ(this, this.end - this.pos + 80);
          ((ByteArrayOutputStream)localObject1).write(this.buf, this.pos, this.end - this.pos);
          this.end = -1;
          ḻ();
          i = this.pos;
          if (i != this.end)
          {
            if (this.buf[i] == 10)
            {
              if (i != this.pos) {
                ((ByteArrayOutputStream)localObject1).write(this.buf, this.pos, i - this.pos);
              }
              this.pos = (i + 1);
              localObject1 = ((ByteArrayOutputStream)localObject1).toString();
              return localObject1;
            }
            i += 1;
            continue;
          }
        }
      }
      int j = i;
    }
  }
  
  public boolean ᵩ()
  {
    return this.end == -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´º
 * JD-Core Version:    0.7.0.1
 */