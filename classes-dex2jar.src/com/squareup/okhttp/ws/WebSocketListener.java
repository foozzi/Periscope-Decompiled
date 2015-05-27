package com.squareup.okhttp.ws;

import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;
import o.ue;
import o.ui;

public abstract interface WebSocketListener
{
  public abstract void onClose(int paramInt, String paramString);
  
  public abstract void onFailure(IOException paramIOException);
  
  public abstract void onMessage(ui paramui, WebSocket.PayloadType paramPayloadType);
  
  public abstract void onOpen(WebSocket paramWebSocket, Request paramRequest, Response paramResponse);
  
  public abstract void onPong(ue paramue);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.ws.WebSocketListener
 * JD-Core Version:    0.7.0.1
 */