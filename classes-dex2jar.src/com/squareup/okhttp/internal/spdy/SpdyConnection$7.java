package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.util.Set;

class SpdyConnection$7
  extends NamedRunnable
{
  SpdyConnection$7(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, int paramInt, ErrorCode paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    SpdyConnection.access$2500(this.this$0).onReset(this.val$streamId, this.val$errorCode);
    synchronized (this.this$0)
    {
      SpdyConnection.access$2600(this.this$0).remove(Integer.valueOf(this.val$streamId));
      return;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.7
 * JD-Core Version:    0.7.0.1
 */