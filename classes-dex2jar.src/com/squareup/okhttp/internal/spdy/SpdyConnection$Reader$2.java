package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$Reader$2
  extends NamedRunnable
{
  SpdyConnection$Reader$2(SpdyConnection.Reader paramReader, String paramString, Object[] paramArrayOfObject, Settings paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    try
    {
      this.this$1.this$0.frameWriter.ackSettings(this.val$peerSettings);
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.Reader.2
 * JD-Core Version:    0.7.0.1
 */