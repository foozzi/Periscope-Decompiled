package com.squareup.okhttp.internal.spdy;

final class IncomingStreamHandler$1
  implements IncomingStreamHandler
{
  public void receive(SpdyStream paramSpdyStream)
  {
    paramSpdyStream.close(ErrorCode.REFUSED_STREAM);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.IncomingStreamHandler.1
 * JD-Core Version:    0.7.0.1
 */