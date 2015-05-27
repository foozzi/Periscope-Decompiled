package o;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

public class ﻪ
  extends InputStream
{
  private static final Queue<ﻪ> nc = ﾕ.ᵘ(0);
  private InputStream nd;
  private IOException ne;
  
  public static ﻪ ᐝ(InputStream paramInputStream)
  {
    ﻪ localﻪ;
    synchronized (nc)
    {
      localﻪ = (ﻪ)nc.poll();
    }
    ??? = localﻪ;
    if (localﻪ == null) {
      ??? = new ﻪ();
    }
    ((ﻪ)???).setInputStream(paramInputStream);
    return ???;
  }
  
  public int available()
  {
    return this.nd.available();
  }
  
  public void close()
  {
    this.nd.close();
  }
  
  public void mark(int paramInt)
  {
    this.nd.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return this.nd.markSupported();
  }
  
  public int read()
  {
    try
    {
      int i = this.nd.read();
      return i;
    }
    catch (IOException localIOException)
    {
      this.ne = localIOException;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i = this.nd.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      this.ne = paramArrayOfByte;
    }
    return -1;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = this.nd.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      this.ne = paramArrayOfByte;
    }
    return -1;
  }
  
  public void release()
  {
    this.ne = null;
    this.nd = null;
    synchronized (nc)
    {
      nc.offer(this);
      return;
    }
  }
  
  public void reset()
  {
    try
    {
      this.nd.reset();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  void setInputStream(InputStream paramInputStream)
  {
    this.nd = paramInputStream;
  }
  
  public long skip(long paramLong)
  {
    try
    {
      paramLong = this.nd.skip(paramLong);
      return paramLong;
    }
    catch (IOException localIOException)
    {
      this.ne = localIOException;
    }
    return 0L;
  }
  
  public IOException ℐ()
  {
    return this.ne;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï»ª
 * JD-Core Version:    0.7.0.1
 */