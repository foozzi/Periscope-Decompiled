package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.io.File;
import o.uh;
import o.up;
import o.va;

final class RequestBody$2
  extends RequestBody
{
  RequestBody$2(MediaType paramMediaType, File paramFile) {}
  
  public long contentLength()
  {
    return this.val$file.length();
  }
  
  public MediaType contentType()
  {
    return this.val$contentType;
  }
  
  public void writeTo(uh paramuh)
  {
    Object localObject = null;
    try
    {
      va localva = up.source(this.val$file);
      localObject = localva;
      paramuh.ˊ(localva);
      return;
    }
    finally
    {
      Util.closeQuietly(localObject);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.RequestBody.2
 * JD-Core Version:    0.7.0.1
 */