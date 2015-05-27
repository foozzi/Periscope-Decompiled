package com.squareup.okhttp.internal.ws;

import com.squareup.okhttp.ws.WebSocket.PayloadType;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import o.ue;
import o.ui;
import o.up;
import o.va;
import o.vb;

public final class WebSocketReader
{
  private boolean closed;
  private long frameBytesRead;
  private final FrameCallback frameCallback;
  private long frameLength;
  private final va framedMessageSource = new FramedMessageSource(null);
  private final boolean isClient;
  private boolean isControlFrame;
  private boolean isFinalFrame;
  private boolean isMasked;
  private final byte[] maskBuffer = new byte[2048];
  private final byte[] maskKey = new byte[4];
  private boolean messageClosed;
  private int opcode;
  private final ui source;
  
  public WebSocketReader(boolean paramBoolean, ui paramui, FrameCallback paramFrameCallback)
  {
    if (paramui == null) {
      throw new NullPointerException("source == null");
    }
    if (paramFrameCallback == null) {
      throw new NullPointerException("frameCallback == null");
    }
    this.isClient = paramBoolean;
    this.source = paramui;
    this.frameCallback = paramFrameCallback;
  }
  
  private void readControlFrame()
  {
    Object localObject1 = null;
    Object localObject2;
    int i;
    if (this.frameBytesRead < this.frameLength)
    {
      localObject2 = new ue();
      if (this.isClient)
      {
        this.source.ˊ((ue)localObject2, this.frameLength);
        localObject1 = localObject2;
      }
      else
      {
        for (;;)
        {
          localObject1 = localObject2;
          if (this.frameBytesRead >= this.frameLength) {
            break;
          }
          i = (int)Math.min(this.frameLength - this.frameBytesRead, this.maskBuffer.length);
          i = this.source.read(this.maskBuffer, 0, i);
          if (i == -1) {
            throw new EOFException();
          }
          WebSocketProtocol.toggleMask(this.maskBuffer, i, this.maskKey, this.frameBytesRead);
          ((ue)localObject2).ˉ(this.maskBuffer, 0, i);
          this.frameBytesRead += i;
        }
      }
    }
    switch (this.opcode)
    {
    default: 
      break;
    case 9: 
      this.frameCallback.onPing(localObject1);
      return;
    case 10: 
      this.frameCallback.onPong(localObject1);
      return;
    case 8: 
      i = 0;
      localObject2 = "";
      if (localObject1 != null)
      {
        i = localObject1.readShort();
        localObject2 = localObject1.ed();
      }
      this.frameCallback.onClose(i, (String)localObject2);
      this.closed = true;
      return;
    }
    throw new IllegalStateException("Unknown control opcode: " + Integer.toHexString(this.opcode));
  }
  
  private void readHeader()
  {
    if (this.closed) {
      throw new IOException("closed");
    }
    int k = this.source.readByte() & 0xFF;
    this.opcode = (k & 0xF);
    boolean bool;
    if ((k & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.isFinalFrame = bool;
    if ((k & 0x8) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.isControlFrame = bool;
    if ((this.isControlFrame) && (!this.isFinalFrame)) {
      throw new ProtocolException("Control frames must be final.");
    }
    if ((k & 0x40) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if ((k & 0x20) != 0) {
      j = 1;
    } else {
      j = 0;
    }
    if ((k & 0x10) != 0) {
      k = 1;
    } else {
      k = 0;
    }
    if ((i != 0) || (j != 0) || (k != 0)) {
      throw new ProtocolException("Reserved flags are unsupported.");
    }
    int i = this.source.readByte() & 0xFF;
    if ((i & 0x80) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    this.isMasked = bool;
    if (this.isMasked == this.isClient) {
      throw new ProtocolException("Client-sent frames must be masked. Server sent must not.");
    }
    this.frameLength = (i & 0x7F);
    if (this.frameLength == 126L)
    {
      this.frameLength = (this.source.readShort() & 0xFFFF);
    }
    else if (this.frameLength == 127L)
    {
      this.frameLength = this.source.readLong();
      if (this.frameLength < 0L) {
        throw new ProtocolException("Frame length 0x" + Long.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
      }
    }
    this.frameBytesRead = 0L;
    if ((this.isControlFrame) && (this.frameLength > 125L)) {
      throw new ProtocolException("Control frame must be less than 125B.");
    }
    if (this.isMasked) {
      this.source.readFully(this.maskKey);
    }
  }
  
  private void readMessageFrame()
  {
    WebSocket.PayloadType localPayloadType;
    switch (this.opcode)
    {
    default: 
      break;
    case 1: 
      localPayloadType = WebSocket.PayloadType.TEXT;
      break;
    case 2: 
      localPayloadType = WebSocket.PayloadType.BINARY;
      break;
    }
    throw new IllegalStateException("Unknown opcode: " + Integer.toHexString(this.opcode));
    this.messageClosed = false;
    this.frameCallback.onMessage(up.ˋ(this.framedMessageSource), localPayloadType);
    if (!this.messageClosed) {
      throw new IllegalStateException("Listener failed to call close on message payload.");
    }
  }
  
  private void readUntilNonControlFrame()
  {
    while (!this.closed)
    {
      readHeader();
      if (!this.isControlFrame) {
        return;
      }
      readControlFrame();
    }
  }
  
  public void processNextFrame()
  {
    readHeader();
    if (this.isControlFrame)
    {
      readControlFrame();
      return;
    }
    readMessageFrame();
  }
  
  public static abstract interface FrameCallback
  {
    public abstract void onClose(int paramInt, String paramString);
    
    public abstract void onMessage(ui paramui, WebSocket.PayloadType paramPayloadType);
    
    public abstract void onPing(ue paramue);
    
    public abstract void onPong(ue paramue);
  }
  
  final class FramedMessageSource
    implements va
  {
    private FramedMessageSource() {}
    
    public void close()
    {
      if (WebSocketReader.this.messageClosed) {
        return;
      }
      WebSocketReader.access$202(WebSocketReader.this, true);
      if (WebSocketReader.this.closed) {
        return;
      }
      WebSocketReader.this.source.ᵋ(WebSocketReader.this.frameLength - WebSocketReader.this.frameBytesRead);
      while (!WebSocketReader.this.isFinalFrame)
      {
        WebSocketReader.this.readUntilNonControlFrame();
        WebSocketReader.this.source.ᵋ(WebSocketReader.this.frameLength);
      }
    }
    
    public long read(ue paramue, long paramLong)
    {
      if (WebSocketReader.this.closed) {
        throw new IOException("closed");
      }
      if (WebSocketReader.this.messageClosed) {
        throw new IllegalStateException("closed");
      }
      if (WebSocketReader.this.frameBytesRead == WebSocketReader.this.frameLength)
      {
        if (WebSocketReader.this.isFinalFrame) {
          return -1L;
        }
        WebSocketReader.this.readUntilNonControlFrame();
        if (WebSocketReader.this.opcode != 0) {
          throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(WebSocketReader.this.opcode));
        }
        if ((WebSocketReader.this.isFinalFrame) && (WebSocketReader.this.frameLength == 0L)) {
          return -1L;
        }
      }
      paramLong = Math.min(paramLong, WebSocketReader.this.frameLength - WebSocketReader.this.frameBytesRead);
      if (WebSocketReader.this.isMasked)
      {
        paramLong = Math.min(paramLong, WebSocketReader.this.maskBuffer.length);
        paramLong = WebSocketReader.this.source.read(WebSocketReader.this.maskBuffer, 0, (int)paramLong);
        if (paramLong == -1L) {
          throw new EOFException();
        }
        WebSocketProtocol.toggleMask(WebSocketReader.this.maskBuffer, paramLong, WebSocketReader.this.maskKey, WebSocketReader.this.frameBytesRead);
        paramue.ˉ(WebSocketReader.this.maskBuffer, 0, (int)paramLong);
      }
      else
      {
        long l = WebSocketReader.this.source.read(paramue, paramLong);
        paramLong = l;
        if (l == -1L) {
          throw new EOFException();
        }
      }
      WebSocketReader.access$302(WebSocketReader.this, WebSocketReader.this.frameBytesRead + paramLong);
      return paramLong;
    }
    
    public vb timeout()
    {
      return WebSocketReader.this.source.timeout();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.ws.WebSocketReader
 * JD-Core Version:    0.7.0.1
 */