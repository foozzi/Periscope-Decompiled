package com.squareup.okhttp.ws;

import com.squareup.okhttp.Callback;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.io.IOException;

class WebSocketCall$1
  implements Callback
{
  WebSocketCall$1(WebSocketCall paramWebSocketCall, WebSocketListener paramWebSocketListener) {}
  
  public void onFailure(Request paramRequest, IOException paramIOException)
  {
    this.val$listener.onFailure(paramIOException);
  }
  
  public void onResponse(Response paramResponse)
  {
    try
    {
      WebSocketCall.access$000(this.this$0, paramResponse, this.val$listener);
      return;
    }
    catch (IOException paramResponse)
    {
      this.val$listener.onFailure(paramResponse);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.ws.WebSocketCall.1
 * JD-Core Version:    0.7.0.1
 */