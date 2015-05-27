package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import java.util.List;
import java.util.Set;

class SpdyConnection$4
  extends NamedRunnable
{
  SpdyConnection$4(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, int paramInt, List paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    if (SpdyConnection.access$2500(this.this$0).onRequest(this.val$streamId, this.val$requestHeaders)) {}
    try
    {
      this.this$0.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
      synchronized (this.this$0)
      {
        SpdyConnection.access$2600(this.this$0).remove(Integer.valueOf(this.val$streamId));
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.4
 * JD-Core Version:    0.7.0.1
 */