package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;
import o.ue;

class RealWebSocket$1$1
  extends NamedRunnable
{
  RealWebSocket$1$1(RealWebSocket.1 param1, String paramString, Object[] paramArrayOfObject, ue paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  protected void execute()
  {
    try
    {
      RealWebSocket.access$000(this.this$1.this$0).writePong(this.val$buffer);
      return;
    }
    catch (IOException localIOException) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.ws.RealWebSocket.1.1
 * JD-Core Version:    0.7.0.1
 */