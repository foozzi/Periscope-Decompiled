package o;

import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class 〳
  extends FilterInputStream
{
  private volatile byte[] buf;
  private int count;
  private int marklimit;
  private int markpos = -1;
  private int pos;
  
  public 〳(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    super(paramInputStream);
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0)) {
      throw new IllegalArgumentException("buffer is null or empty");
    }
    this.buf = paramArrayOfByte;
  }
  
  private static IOException Ŀ()
  {
    throw new IOException("BufferedInputStream is closed");
  }
  
  private int ˊ(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    int i;
    if ((this.markpos == -1) || (this.pos - this.markpos >= this.marklimit))
    {
      i = paramInputStream.read(paramArrayOfByte);
      if (i > 0)
      {
        this.markpos = -1;
        this.pos = 0;
        this.count = i;
      }
      return i;
    }
    byte[] arrayOfByte;
    if ((this.markpos == 0) && (this.marklimit > paramArrayOfByte.length) && (this.count == paramArrayOfByte.length))
    {
      j = paramArrayOfByte.length * 2;
      i = j;
      if (j > this.marklimit) {
        i = this.marklimit;
      }
      if (Log.isLoggable("BufferedIs", 3)) {
        Log.d("BufferedIs", "allocate buffer of length: " + i);
      }
      arrayOfByte = new byte[i];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
      this.buf = arrayOfByte;
    }
    else
    {
      arrayOfByte = paramArrayOfByte;
      if (this.markpos > 0)
      {
        System.arraycopy(paramArrayOfByte, this.markpos, paramArrayOfByte, 0, paramArrayOfByte.length - this.markpos);
        arrayOfByte = paramArrayOfByte;
      }
    }
    this.pos -= this.markpos;
    this.markpos = 0;
    this.count = 0;
    int j = paramInputStream.read(arrayOfByte, this.pos, arrayOfByte.length - this.pos);
    if (j <= 0) {
      i = this.pos;
    } else {
      i = this.pos + j;
    }
    this.count = i;
    return j;
  }
  
  public int available()
  {
    try
    {
      InputStream localInputStream = this.in;
      if ((this.buf == null) || (localInputStream == null)) {
        throw Ŀ();
      }
      int i = this.count;
      int j = this.pos;
      int k = localInputStream.available();
      return i - j + k;
    }
    finally {}
  }
  
  public void close()
  {
    this.buf = null;
    InputStream localInputStream = this.in;
    this.in = null;
    if (localInputStream != null) {
      localInputStream.close();
    }
  }
  
  public void mark(int paramInt)
  {
    try
    {
      this.marklimit = Math.max(this.marklimit, paramInt);
      this.markpos = this.pos;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    try
    {
      byte[] arrayOfByte = this.buf;
      Object localObject1 = this.in;
      if ((arrayOfByte == null) || (localObject1 == null)) {
        throw Ŀ();
      }
      if ((this.pos >= this.count) && (ˊ((InputStream)localObject1, arrayOfByte) == -1)) {
        return -1;
      }
      localObject1 = arrayOfByte;
      if (arrayOfByte != this.buf)
      {
        arrayOfByte = this.buf;
        localObject1 = arrayOfByte;
        if (arrayOfByte == null) {
          throw Ŀ();
        }
      }
      if (this.count - this.pos > 0)
      {
        int i = this.pos;
        this.pos = (i + 1);
        i = localObject1[i];
        return i & 0xFF;
      }
      return -1;
    }
    finally {}
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Object localObject2;
    InputStream localInputStream;
    int i;
    int k;
    Object localObject1;
    int j;
    label176:
    try
    {
      localObject2 = this.buf;
      if (localObject2 == null) {
        throw Ŀ();
      }
      if (paramInt2 == 0) {
        return 0;
      }
      localInputStream = this.in;
      if (localInputStream == null) {
        throw Ŀ();
      }
      if (this.pos >= this.count) {
        break label361;
      }
      if (this.count - this.pos >= paramInt2) {
        i = paramInt2;
      } else {
        i = this.count - this.pos;
      }
      System.arraycopy(localObject2, this.pos, paramArrayOfByte, paramInt1, i);
      this.pos += i;
      if ((i != paramInt2) && (localInputStream.available() != 0)) {
        break label347;
      }
      return i;
    }
    finally {}
    if ((this.markpos == -1) && (i >= localObject2.length))
    {
      k = localInputStream.read(paramArrayOfByte, paramInt1, i);
      localObject1 = localObject2;
      j = k;
      if (k == -1)
      {
        if (i != paramInt2) {
          break label367;
        }
        paramInt1 = -1;
        return paramInt1;
      }
    }
    else if (ˊ(localInputStream, (byte[])localObject2) == -1)
    {
      if (i != paramInt2) {
        break label375;
      }
      paramInt1 = -1;
    }
    for (;;)
    {
      return paramInt1;
      localObject1 = localObject2;
      if (localObject2 != this.buf)
      {
        localObject2 = this.buf;
        localObject1 = localObject2;
        if (localObject2 == null) {
          throw Ŀ();
        }
      }
      if (this.count - this.pos >= i) {
        j = i;
      } else {
        j = this.count - this.pos;
      }
      System.arraycopy(localObject1, this.pos, paramArrayOfByte, paramInt1, j);
      this.pos += j;
      i -= j;
      if (i == 0) {
        return paramInt2;
      }
      k = localInputStream.available();
      if (k == 0) {
        return paramInt2 - i;
      }
      paramInt1 += j;
      localObject2 = localObject1;
      break;
      label347:
      paramInt1 += i;
      i = paramInt2 - i;
      break;
      label361:
      i = paramInt2;
      break;
      label367:
      paramInt1 = paramInt2 - i;
      break label176;
      label375:
      paramInt1 = paramInt2 - i;
    }
  }
  
  public void reset()
  {
    try
    {
      if (this.buf == null) {
        throw new IOException("Stream is closed");
      }
      if (-1 == this.markpos) {
        throw new 〳.if("Mark has been invalidated");
      }
      this.pos = this.markpos;
      return;
    }
    finally {}
  }
  
  public long skip(long paramLong)
  {
    try
    {
      byte[] arrayOfByte = this.buf;
      InputStream localInputStream = this.in;
      if (arrayOfByte == null) {
        throw Ŀ();
      }
      if (paramLong < 1L) {
        return 0L;
      }
      if (localInputStream == null) {
        throw Ŀ();
      }
      if (this.count - this.pos >= paramLong)
      {
        this.pos = ((int)(this.pos + paramLong));
        return paramLong;
      }
      long l1 = this.count - this.pos;
      this.pos = this.count;
      if ((this.markpos != -1) && (paramLong <= this.marklimit))
      {
        if (ˊ(localInputStream, arrayOfByte) == -1) {
          return l1;
        }
        if (this.count - this.pos >= paramLong - l1)
        {
          this.pos = ((int)(this.pos + (paramLong - l1)));
          return paramLong;
        }
        paramLong = this.count;
        long l2 = this.pos;
        this.pos = this.count;
        return paramLong + l1 - l2;
      }
      paramLong = localInputStream.skip(paramLong - l1);
      return paramLong + l1;
    }
    finally {}
  }
  
  public void ř()
  {
    try
    {
      this.marklimit = this.buf.length;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã³
 * JD-Core Version:    0.7.0.1
 */