package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$2
  extends NamedRunnable
{
  SpdyConnection$2(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, int paramInt, long paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    try
    {
      this.this$0.frameWriter.windowUpdate(this.val$streamId, this.val$unacknowledgedBytesRead);
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.2
 * JD-Core Version:    0.7.0.1
 */