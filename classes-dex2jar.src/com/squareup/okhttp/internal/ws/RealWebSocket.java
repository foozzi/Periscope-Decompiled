package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.ws.WebSocket;
import com.squareup.okhttp.ws.WebSocket.PayloadType;
import com.squareup.okhttp.ws.WebSocketListener;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.Random;
import java.util.concurrent.Executor;
import o.ue;
import o.uh;
import o.ui;

public abstract class RealWebSocket
  implements WebSocket
{
  private static final int CLOSE_PROTOCOL_EXCEPTION = 1002;
  private final Object closeLock = new Object();
  private final WebSocketListener listener;
  private final WebSocketReader reader;
  private volatile boolean readerSentClose;
  private final WebSocketWriter writer;
  private volatile boolean writerSentClose;
  
  public RealWebSocket(boolean paramBoolean, ui paramui, uh paramuh, Random paramRandom, Executor paramExecutor, WebSocketListener paramWebSocketListener, String paramString)
  {
    this.listener = paramWebSocketListener;
    this.writer = new WebSocketWriter(paramBoolean, paramuh, paramRandom);
    this.reader = new WebSocketReader(paramBoolean, paramui, new RealWebSocket.1(this, paramWebSocketListener, paramExecutor, paramString));
  }
  
  private void peerClose(int paramInt, String paramString)
  {
    int i;
    synchronized (this.closeLock)
    {
      this.readerSentClose = true;
      boolean bool = this.writerSentClose;
      if (!bool) {
        i = 1;
      } else {
        i = 0;
      }
    }
    if (i != 0) {
      try
      {
        this.writer.writeClose(paramInt, paramString);
      }
      catch (IOException localIOException1) {}
    }
    try
    {
      closeConnection();
    }
    catch (IOException localIOException2) {}
    this.listener.onClose(paramInt, paramString);
  }
  
  private void readerErrorClose(IOException paramIOException)
  {
    int i;
    synchronized (this.closeLock)
    {
      this.readerSentClose = true;
      boolean bool = this.writerSentClose;
      if (!bool) {
        i = 1;
      } else {
        i = 0;
      }
    }
    if ((i != 0) && ((paramIOException instanceof ProtocolException))) {
      try
      {
        this.writer.writeClose(1002, null);
      }
      catch (IOException localIOException1) {}
    }
    try
    {
      closeConnection();
    }
    catch (IOException localIOException2) {}
    this.listener.onFailure(paramIOException);
  }
  
  public void close(int paramInt, String paramString)
  {
    if (this.writerSentClose) {
      throw new IllegalStateException("closed");
    }
    boolean bool;
    synchronized (this.closeLock)
    {
      this.writerSentClose = true;
      bool = this.readerSentClose;
    }
    this.writer.writeClose(paramInt, paramString);
    if (bool) {
      closeConnection();
    }
  }
  
  public abstract void closeConnection();
  
  public uh newMessageSink(WebSocket.PayloadType paramPayloadType)
  {
    if (this.writerSentClose) {
      throw new IllegalStateException("closed");
    }
    return this.writer.newMessageSink(paramPayloadType);
  }
  
  public boolean readMessage()
  {
    try
    {
      this.reader.processNextFrame();
      boolean bool = this.readerSentClose;
      return !bool;
    }
    catch (IOException localIOException)
    {
      readerErrorClose(localIOException);
    }
    return false;
  }
  
  public void sendMessage(WebSocket.PayloadType paramPayloadType, ue paramue)
  {
    if (this.writerSentClose) {
      throw new IllegalStateException("closed");
    }
    this.writer.sendMessage(paramPayloadType, paramue);
  }
  
  public void sendPing(ue paramue)
  {
    if (this.writerSentClose) {
      throw new IllegalStateException("closed");
    }
    this.writer.writePing(paramue);
  }
  
  public void sendPong(ue paramue)
  {
    if (this.writerSentClose) {
      throw new IllegalStateException("closed");
    }
    this.writer.writePong(paramue);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.ws.RealWebSocket
 * JD-Core Version:    0.7.0.1
 */