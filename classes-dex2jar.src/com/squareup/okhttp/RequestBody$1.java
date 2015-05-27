package com.squareup.okhttp;

import o.uh;

final class RequestBody$1
  extends RequestBody
{
  RequestBody$1(MediaType paramMediaType, int paramInt1, byte[] paramArrayOfByte, int paramInt2) {}
  
  public long contentLength()
  {
    return this.val$byteCount;
  }
  
  public MediaType contentType()
  {
    return this.val$contentType;
  }
  
  public void writeTo(uh paramuh)
  {
    paramuh.ˌ(this.val$content, this.val$offset, this.val$byteCount);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.RequestBody.1
 * JD-Core Version:    0.7.0.1
 */