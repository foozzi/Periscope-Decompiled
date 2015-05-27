package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import java.util.List;
import java.util.Set;

class SpdyConnection$5
  extends NamedRunnable
{
  SpdyConnection$5(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    boolean bool = SpdyConnection.access$2500(this.this$0).onHeaders(this.val$streamId, this.val$requestHeaders, this.val$inFinished);
    if (bool) {}
    try
    {
      this.this$0.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
      if ((bool) || (this.val$inFinished)) {
        synchronized (this.this$0)
        {
          SpdyConnection.access$2600(this.this$0).remove(Integer.valueOf(this.val$streamId));
        }
      }
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.5
 * JD-Core Version:    0.7.0.1
 */