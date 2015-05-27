package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.ws.WebSocket.PayloadType;
import java.io.IOException;
import java.util.Random;
import o.ue;
import o.uh;
import o.ui;
import o.up;
import o.uz;
import o.vb;

public final class WebSocketWriter
{
  private boolean activeWriter;
  private boolean closed;
  private final FrameSink frameSink = new FrameSink(null);
  private final boolean isClient;
  private final byte[] maskBuffer;
  private final byte[] maskKey;
  private final Random random;
  private final uh sink;
  
  public WebSocketWriter(boolean paramBoolean, uh paramuh, Random paramRandom)
  {
    if (paramuh == null) {
      throw new NullPointerException("sink == null");
    }
    if (paramRandom == null) {
      throw new NullPointerException("random == null");
    }
    this.isClient = paramBoolean;
    this.sink = paramuh;
    this.random = paramRandom;
    if (paramBoolean) {
      paramuh = new byte[4];
    } else {
      paramuh = null;
    }
    this.maskKey = paramuh;
    if (paramBoolean) {
      paramuh = new byte[2048];
    } else {
      paramuh = null;
    }
    this.maskBuffer = paramuh;
  }
  
  private void writeAllMasked(ui paramui, long paramLong)
  {
    int i;
    for (long l = 0L; l < paramLong; l += i)
    {
      i = (int)Math.min(paramLong, this.maskBuffer.length);
      i = paramui.read(this.maskBuffer, 0, i);
      if (i == -1) {
        throw new AssertionError();
      }
      WebSocketProtocol.toggleMask(this.maskBuffer, i, this.maskKey, l);
      this.sink.ˌ(this.maskBuffer, 0, i);
    }
  }
  
  private void writeControlFrame(int paramInt, ue paramue)
  {
    if (this.closed) {
      throw new IOException("closed");
    }
    int i = 0;
    if (paramue != null)
    {
      int j = (int)paramue.size();
      i = j;
      if (j > 125) {
        throw new IllegalArgumentException("Payload size must be less than or equal to 125");
      }
    }
    this.sink.ɟ(paramInt | 0x80);
    if (this.isClient)
    {
      this.sink.ɟ(i | 0x80);
      this.random.nextBytes(this.maskKey);
      this.sink.ᐧ(this.maskKey);
      if (paramue != null) {
        writeAllMasked(paramue, i);
      }
    }
    else
    {
      this.sink.ɟ(i);
      if (paramue != null) {
        this.sink.ˊ(paramue);
      }
    }
    this.sink.flush();
  }
  
  private void writeFrame(WebSocket.PayloadType paramPayloadType, ue paramue, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.closed) {
      throw new IOException("closed");
    }
    int i = 0;
    if (paramBoolean1)
    {
      switch (WebSocketWriter.1.$SwitchMap$com$squareup$okhttp$ws$WebSocket$PayloadType[paramPayloadType.ordinal()])
      {
      default: 
        break;
      case 1: 
        i = 1;
        break;
      case 2: 
        i = 2;
        break;
      }
      throw new IllegalStateException("Unknown payload type: " + paramPayloadType);
    }
    paramPayloadType = this.sink;
    int j = i;
    if (paramBoolean2) {
      j = i | 0x80;
    }
    try
    {
      this.sink.ɟ(j);
      i = 0;
      if (this.isClient)
      {
        i = 128;
        this.random.nextBytes(this.maskKey);
      }
      if (paramLong <= 125L)
      {
        j = (int)paramLong;
        this.sink.ɟ(i | j);
      }
      else if (paramLong <= 65535L)
      {
        this.sink.ɟ(i | 0x7E);
        this.sink.ɔ((int)paramLong);
      }
      else
      {
        this.sink.ɟ(i | 0x7F);
        this.sink.ː(paramLong);
      }
      if (this.isClient)
      {
        this.sink.ᐧ(this.maskKey);
        writeAllMasked(paramue, paramLong);
      }
      else
      {
        this.sink.write(paramue, paramLong);
      }
      this.sink.flush();
      return;
    }
    finally {}
  }
  
  public uh newMessageSink(WebSocket.PayloadType paramPayloadType)
  {
    if (paramPayloadType == null) {
      throw new NullPointerException("type == null");
    }
    if (this.activeWriter) {
      throw new IllegalStateException("Another message writer is active. Did you call close()?");
    }
    this.activeWriter = true;
    FrameSink.access$102(this.frameSink, paramPayloadType);
    FrameSink.access$202(this.frameSink, true);
    return up.ˊ(this.frameSink);
  }
  
  public void sendMessage(WebSocket.PayloadType paramPayloadType, ue paramue)
  {
    if (paramPayloadType == null) {
      throw new NullPointerException("type == null");
    }
    if (paramue == null) {
      throw new NullPointerException("payload == null");
    }
    if (this.activeWriter) {
      throw new IllegalStateException("A message writer is active. Did you call close()?");
    }
    writeFrame(paramPayloadType, paramue, paramue.size(), true, true);
  }
  
  public void writeClose(int paramInt, String arg2)
  {
    Object localObject1 = null;
    if (paramInt != 0)
    {
      if ((paramInt < 1000) || (paramInt >= 5000)) {
        throw new IllegalArgumentException("Code must be in range [1000,5000).");
      }
      ue localue = new ue();
      localue.ﻟ(paramInt);
      localObject1 = localue;
      if (??? != null)
      {
        localue.ﯾ(???);
        localObject1 = localue;
      }
    }
    else if (??? != null)
    {
      throw new IllegalArgumentException("Code required to include reason.");
    }
    synchronized (this.sink)
    {
      writeControlFrame(8, localObject1);
      this.closed = true;
      return;
    }
  }
  
  public void writePing(ue paramue)
  {
    synchronized (this.sink)
    {
      writeControlFrame(9, paramue);
      return;
    }
  }
  
  public void writePong(ue paramue)
  {
    synchronized (this.sink)
    {
      writeControlFrame(10, paramue);
      return;
    }
  }
  
  final class FrameSink
    implements uz
  {
    private boolean isFirstFrame;
    private WebSocket.PayloadType payloadType;
    
    private FrameSink() {}
    
    public void close()
    {
      if (WebSocketWriter.this.closed) {
        throw new IOException("closed");
      }
      synchronized (WebSocketWriter.this.sink)
      {
        WebSocketWriter.this.sink.ɟ(128);
        if (WebSocketWriter.this.isClient)
        {
          WebSocketWriter.this.sink.ɟ(128);
          WebSocketWriter.this.random.nextBytes(WebSocketWriter.this.maskKey);
          WebSocketWriter.this.sink.ᐧ(WebSocketWriter.this.maskKey);
        }
        else
        {
          WebSocketWriter.this.sink.ɟ(0);
        }
        WebSocketWriter.this.sink.flush();
      }
      WebSocketWriter.access$902(WebSocketWriter.this, false);
    }
    
    public void flush()
    {
      if (WebSocketWriter.this.closed) {
        throw new IOException("closed");
      }
      synchronized (WebSocketWriter.this.sink)
      {
        WebSocketWriter.this.sink.flush();
        return;
      }
    }
    
    public vb timeout()
    {
      return WebSocketWriter.this.sink.timeout();
    }
    
    public void write(ue paramue, long paramLong)
    {
      WebSocketWriter.this.writeFrame(this.payloadType, paramue, paramLong, this.isFirstFrame, false);
      this.isFirstFrame = false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.ws.WebSocketWriter
 * JD-Core Version:    0.7.0.1
 */