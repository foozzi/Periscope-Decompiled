package o;

import android.util.Log;
import com.squareup.okhttp.Dispatcher;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Request.Builder;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ws.WebSocket;
import com.squareup.okhttp.ws.WebSocket.PayloadType;
import com.squareup.okhttp.ws.WebSocketCall;
import com.squareup.okhttp.ws.WebSocketListener;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

class za
  implements WebSocketListener
{
  private WebSocket bqY;
  private FutureTask<za> bqZ;
  
  public static String ˊ(ant paramant)
  {
    paramant = new ada("", paramant);
    return new fl().ᴸ(paramant);
  }
  
  public static Future<za> ˊ(zd.if paramif)
  {
    Object localObject2 = paramif.bri;
    Object localObject1 = localObject2;
    if (((String)localObject2).equals("127.0.0.1:8088")) {
      localObject1 = "10.0.2.2:8088";
    }
    Log.v("ChatMan", "joinop " + paramif.brf + "," + (String)localObject1);
    paramif = new za();
    paramif.bqZ = new FutureTask(new zb(), paramif);
    localObject2 = new OkHttpClient();
    WebSocketCall.create((OkHttpClient)localObject2, new Request.Builder().url("ws://" + (String)localObject1 + "/chatapi/v1/chatnow").build()).enqueue(paramif);
    ((OkHttpClient)localObject2).getDispatcher().getExecutorService().shutdown();
    return paramif.bqZ;
  }
  
  public static ant ᵪ(String paramString)
  {
    return ant.ˎ("", new gb().ᐤ(paramString).r());
  }
  
  public void close()
  {
    Log.v("ChatMan", "close by self");
    this.bqY.close(1000, "close by self");
  }
  
  public void onClose(int paramInt, String paramString)
  {
    Log.v("ChatMan", "onclose " + paramInt + "," + paramString);
    try
    {
      this.bqY.close(paramInt, paramString);
      return;
    }
    catch (IOException paramString)
    {
      Log.e("ChatMan", "close websocket exception", paramString);
    }
  }
  
  public void onFailure(IOException paramIOException)
  {
    Log.v("ChatMan", "onfailure", paramIOException);
  }
  
  public void onMessage(ui paramui, WebSocket.PayloadType paramPayloadType)
  {
    Log.v("ChatMan", "got message " + paramPayloadType);
    try
    {
      if (paramPayloadType != WebSocket.PayloadType.TEXT)
      {
        Log.e("ChatMan", "unexpected binary message");
        throw new IOException("unexpected binary message");
      }
      paramPayloadType = paramui.ed();
      Log.v("ChatMan", "message payload " + paramPayloadType);
      try
      {
        paramPayloadType = ᵪ(paramPayloadType);
        vf.tH().ˣ(new acb(paramPayloadType, 0L));
      }
      catch (Throwable paramPayloadType)
      {
        Log.e("ChatMan", "decodemessage error", paramPayloadType);
      }
      return;
    }
    finally
    {
      paramui.close();
    }
  }
  
  public void onOpen(WebSocket paramWebSocket, Request paramRequest, Response paramResponse)
  {
    Log.v("ChatMan", "websocket opened");
    this.bqY = paramWebSocket;
    this.bqZ.run();
  }
  
  public void onPong(ue paramue)
  {
    Log.v("ChatMan", "onpong");
  }
  
  public void ˊ(anp paramanp)
  {
    paramanp = new fl().ᴸ(paramanp);
    Log.v("ChatMan", "send json " + paramanp);
    this.bqY.sendMessage(WebSocket.PayloadType.TEXT, new ue().ﯾ(paramanp));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.za
 * JD-Core Version:    0.7.0.1
 */