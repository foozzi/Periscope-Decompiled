package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import o.ui;

public final class RealResponseBody
  extends ResponseBody
{
  private final Headers headers;
  private final ui source;
  
  public RealResponseBody(Headers paramHeaders, ui paramui)
  {
    this.headers = paramHeaders;
    this.source = paramui;
  }
  
  public long contentLength()
  {
    return OkHeaders.contentLength(this.headers);
  }
  
  public MediaType contentType()
  {
    String str = this.headers.get("Content-Type");
    if (str != null) {
      return MediaType.parse(str);
    }
    return null;
  }
  
  public ui source()
  {
    return this.source;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.RealResponseBody
 * JD-Core Version:    0.7.0.1
 */