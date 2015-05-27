package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$3
  extends NamedRunnable
{
  SpdyConnection$3(SpdyConnection paramSpdyConnection, String paramString, Object[] paramArrayOfObject, boolean paramBoolean, int paramInt1, int paramInt2, Ping paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  public void execute()
  {
    try
    {
      SpdyConnection.access$700(this.this$0, this.val$reply, this.val$payload1, this.val$payload2, this.val$ping);
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.3
 * JD-Core Version:    0.7.0.1
 */