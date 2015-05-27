package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import java.util.Set;
import o.ue;

class SpdyConnection$6
  extends NamedRunnable
{
  SpdyConnection$6(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, int paramInt1, ue paramue, int paramInt2, boolean paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    try
    {
      boolean bool = SpdyConnection.access$2500(this.this$0).onData(this.val$streamId, this.val$buffer, this.val$byteCount, this.val$inFinished);
      if (bool) {
        this.this$0.frameWriter.rstStream(this.val$streamId, ErrorCode.CANCEL);
      }
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
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.6
 * JD-Core Version:    0.7.0.1
 */