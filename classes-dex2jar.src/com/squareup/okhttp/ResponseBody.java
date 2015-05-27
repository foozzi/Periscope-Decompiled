package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import o.ue;
import o.ui;

public abstract class ResponseBody
  implements Closeable
{
  private Reader reader;
  
  private Charset charset()
  {
    MediaType localMediaType = contentType();
    if (localMediaType != null) {
      return localMediaType.charset(Util.UTF_8);
    }
    return Util.UTF_8;
  }
  
  public static ResponseBody create(MediaType paramMediaType, long paramLong, ui paramui)
  {
    if (paramui == null) {
      throw new NullPointerException("source == null");
    }
    return new ResponseBody.1(paramMediaType, paramLong, paramui);
  }
  
  public static ResponseBody create(MediaType paramMediaType, String paramString)
  {
    Object localObject = Util.UTF_8;
    MediaType localMediaType = paramMediaType;
    if (paramMediaType != null)
    {
      Charset localCharset = paramMediaType.charset();
      localObject = localCharset;
      localMediaType = paramMediaType;
      if (localCharset == null)
      {
        localObject = Util.UTF_8;
        localMediaType = MediaType.parse(paramMediaType + "; charset=utf-8");
      }
    }
    paramMediaType = new ue().ˊ(paramString, (Charset)localObject);
    return create(localMediaType, paramMediaType.size(), paramMediaType);
  }
  
  public static ResponseBody create(MediaType paramMediaType, byte[] paramArrayOfByte)
  {
    ue localue = new ue().ـ(paramArrayOfByte);
    return create(paramMediaType, paramArrayOfByte.length, localue);
  }
  
  public final InputStream byteStream()
  {
    return source().dX();
  }
  
  public final byte[] bytes()
  {
    long l = contentLength();
    if (l > 2147483647L) {
      throw new IOException("Cannot buffer entire body for content length: " + l);
    }
    ui localui = source();
    try
    {
      byte[] arrayOfByte1 = localui.ef();
      Util.closeQuietly(localui);
    }
    finally
    {
      Util.closeQuietly(localui);
    }
    if (l != arrayOfByte2.length) {
      throw new IOException("Content-Length and stream length disagree");
    }
    return arrayOfByte2;
  }
  
  public final Reader charStream()
  {
    Object localObject = this.reader;
    if (localObject != null) {
      return localObject;
    }
    localObject = new InputStreamReader(byteStream(), charset());
    this.reader = ((Reader)localObject);
    return localObject;
  }
  
  public void close()
  {
    source().close();
  }
  
  public abstract long contentLength();
  
  public abstract MediaType contentType();
  
  public abstract ui source();
  
  public final String string()
  {
    return new String(bytes(), charset().name());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.ResponseBody
 * JD-Core Version:    0.7.0.1
 */