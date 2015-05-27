package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$Reader$1
  extends NamedRunnable
{
  SpdyConnection$Reader$1(SpdyConnection.Reader paramReader, String paramString, Object[] paramArrayOfObject, SpdyStream paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    try
    {
      SpdyConnection.access$1800(this.this$1.this$0).receive(this.val$newStream);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.Reader.1
 * JD-Core Version:    0.7.0.1
 */