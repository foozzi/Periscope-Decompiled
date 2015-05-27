package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.ws.WebSocket.PayloadType;
import com.squareup.okhttp.ws.WebSocketListener;
import java.util.concurrent.Executor;
import o.ue;
import o.ui;

class RealWebSocket$1
  implements WebSocketReader.FrameCallback
{
  RealWebSocket$1(RealWebSocket paramRealWebSocket, WebSocketListener paramWebSocketListener, Executor paramExecutor, String paramString) {}
  
  public void onClose(int paramInt, String paramString)
  {
    this.val$replyExecutor.execute(new RealWebSocket.1.2(this, "OkHttp %s WebSocket Close Reply", new Object[] { this.val$url }, paramInt, paramString));
  }
  
  public void onMessage(ui paramui, WebSocket.PayloadType paramPayloadType)
  {
    this.val$listener.onMessage(paramui, paramPayloadType);
  }
  
  public void onPing(ue paramue)
  {
    this.val$replyExecutor.execute(new RealWebSocket.1.1(this, "OkHttp %s WebSocket Pong Reply", new Object[] { this.val$url }, paramue));
  }
  
  public void onPong(ue paramue)
  {
    this.val$listener.onPong(paramue);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.ws.RealWebSocket.1
 * JD-Core Version:    0.7.0.1
 */