package com.squareup.okhttp.ws;

import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.ws.RealWebSocket;

class WebSocketCall$2
  extends NamedRunnable
{
  WebSocketCall$2(WebSocketCall paramWebSocketCall, String paramString, Object[] paramArrayOfObject, RealWebSocket paramVarArgs)
  {
    super(paramString, paramArrayOfObject);
  }
  
  protected void execute()
  {
    while (this.val$webSocket.readMessage()) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.ws.WebSocketCall.2
 * JD-Core Version:    0.7.0.1
 */