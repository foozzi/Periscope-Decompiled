package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.charset.Charset;
import java.util.List;
import java.util.zip.Deflater;
import o.ue;
import o.uh;
import o.ui;
import o.uj;
import o.uk;
import o.up;

public final class Spdy3
  implements Variant
{
  static final byte[] DICTIONARY;
  static final int FLAG_FIN = 1;
  static final int FLAG_UNIDIRECTIONAL = 2;
  static final int TYPE_DATA = 0;
  static final int TYPE_GOAWAY = 7;
  static final int TYPE_HEADERS = 8;
  static final int TYPE_PING = 6;
  static final int TYPE_RST_STREAM = 3;
  static final int TYPE_SETTINGS = 4;
  static final int TYPE_SYN_REPLY = 2;
  static final int TYPE_SYN_STREAM = 1;
  static final int TYPE_WINDOW_UPDATE = 9;
  static final int VERSION = 3;
  
  static
  {
    try
    {
      DICTIONARY = "".getBytes(Util.UTF_8.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError();
    }
  }
  
  public Protocol getProtocol()
  {
    return Protocol.SPDY_3;
  }
  
  public FrameReader newReader(ui paramui, boolean paramBoolean)
  {
    return new Reader(paramui, paramBoolean);
  }
  
  public FrameWriter newWriter(uh paramuh, boolean paramBoolean)
  {
    return new Writer(paramuh, paramBoolean);
  }
  
  static final class Reader
    implements FrameReader
  {
    private final boolean client;
    private final NameValueBlockReader headerBlockReader;
    private final ui source;
    
    Reader(ui paramui, boolean paramBoolean)
    {
      this.source = paramui;
      this.headerBlockReader = new NameValueBlockReader(this.source);
      this.client = paramBoolean;
    }
    
    private static IOException ioException(String paramString, Object... paramVarArgs)
    {
      throw new IOException(String.format(paramString, paramVarArgs));
    }
    
    private void readGoAway(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      if (paramInt2 != 8) {
        throw ioException("TYPE_GOAWAY length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = this.source.readInt();
      paramInt2 = this.source.readInt();
      ErrorCode localErrorCode = ErrorCode.fromSpdyGoAway(paramInt2);
      if (localErrorCode == null) {
        throw ioException("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramHandler.goAway(paramInt1 & 0x7FFFFFFF, localErrorCode, uj.ZJ);
    }
    
    private void readHeaders(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      paramHandler.headers(false, false, this.source.readInt() & 0x7FFFFFFF, -1, this.headerBlockReader.readNameValueBlock(paramInt2 - 4), HeadersMode.SPDY_HEADERS);
    }
    
    private void readPing(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      if (paramInt2 != 4) {
        throw ioException("TYPE_PING length: %d != 4", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = this.source.readInt();
      boolean bool2 = this.client;
      boolean bool1;
      if ((paramInt1 & 0x1) == 1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if (bool2 == bool1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      paramHandler.ping(bool1, paramInt1, 0);
    }
    
    private void readRstStream(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      if (paramInt2 != 8) {
        throw ioException("TYPE_RST_STREAM length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = this.source.readInt();
      paramInt2 = this.source.readInt();
      ErrorCode localErrorCode = ErrorCode.fromSpdy3Rst(paramInt2);
      if (localErrorCode == null) {
        throw ioException("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramHandler.rstStream(paramInt1 & 0x7FFFFFFF, localErrorCode);
    }
    
    private void readSettings(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      int i = this.source.readInt();
      if (paramInt2 != i * 8 + 4) {
        throw ioException("TYPE_SETTINGS length: %d != 4 + 8 * %d", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(i) });
      }
      Settings localSettings = new Settings();
      paramInt2 = 0;
      while (paramInt2 < i)
      {
        int j = this.source.readInt();
        localSettings.set(j & 0xFFFFFF, (0xFF000000 & j) >>> 24, this.source.readInt());
        paramInt2 += 1;
      }
      boolean bool;
      if ((paramInt1 & 0x1) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramHandler.settings(bool, localSettings);
    }
    
    private void readSynReply(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      int i = this.source.readInt();
      List localList = this.headerBlockReader.readNameValueBlock(paramInt2 - 4);
      boolean bool;
      if ((paramInt1 & 0x1) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramHandler.headers(false, bool, i & 0x7FFFFFFF, -1, localList, HeadersMode.SPDY_REPLY);
    }
    
    private void readSynStream(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      int i = this.source.readInt();
      int j = this.source.readInt();
      this.source.readShort();
      List localList = this.headerBlockReader.readNameValueBlock(paramInt2 - 10);
      boolean bool1;
      if ((paramInt1 & 0x1) != 0) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      boolean bool2;
      if ((paramInt1 & 0x2) != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      paramHandler.headers(bool2, bool1, i & 0x7FFFFFFF, j & 0x7FFFFFFF, localList, HeadersMode.SPDY_SYN_STREAM);
    }
    
    private void readWindowUpdate(FrameReader.Handler paramHandler, int paramInt1, int paramInt2)
    {
      if (paramInt2 != 8) {
        throw ioException("TYPE_WINDOW_UPDATE length: %d != 8", new Object[] { Integer.valueOf(paramInt2) });
      }
      paramInt1 = this.source.readInt();
      long l = 0x7FFFFFFF & this.source.readInt();
      if (l == 0L) {
        throw ioException("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      paramHandler.windowUpdate(paramInt1 & 0x7FFFFFFF, l);
    }
    
    public void close()
    {
      this.headerBlockReader.close();
    }
    
    public boolean nextFrame(FrameReader.Handler paramHandler)
    {
      int j;
      int k;
      try
      {
        j = this.source.readInt();
        k = this.source.readInt();
      }
      catch (IOException paramHandler)
      {
        return false;
      }
      int i;
      if ((0x80000000 & j) != 0) {
        i = 1;
      } else {
        i = 0;
      }
      int m = (0xFF000000 & k) >>> 24;
      k &= 0xFFFFFF;
      if (i != 0)
      {
        i = (0x7FFF0000 & j) >>> 16;
        if (i != 3) {
          throw new ProtocolException("version != 3: " + i);
        }
        switch (j & 0xFFFF)
        {
        default: 
          break;
        case 1: 
          readSynStream(paramHandler, m, k);
          return true;
        case 2: 
          readSynReply(paramHandler, m, k);
          return true;
        case 3: 
          readRstStream(paramHandler, m, k);
          return true;
        case 4: 
          readSettings(paramHandler, m, k);
          return true;
        case 6: 
          readPing(paramHandler, m, k);
          return true;
        case 7: 
          readGoAway(paramHandler, m, k);
          return true;
        case 8: 
          readHeaders(paramHandler, m, k);
          return true;
        case 9: 
          readWindowUpdate(paramHandler, m, k);
          return true;
        }
        this.source.ᵋ(k);
        return true;
      }
      boolean bool;
      if ((m & 0x1) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramHandler.data(bool, j & 0x7FFFFFFF, this.source, k);
      return true;
    }
    
    public void readConnectionPreface() {}
  }
  
  static final class Writer
    implements FrameWriter
  {
    private final boolean client;
    private boolean closed;
    private final ue headerBlockBuffer;
    private final uh headerBlockOut;
    private final uh sink;
    
    Writer(uh paramuh, boolean paramBoolean)
    {
      this.sink = paramuh;
      this.client = paramBoolean;
      paramuh = new Deflater();
      paramuh.setDictionary(Spdy3.DICTIONARY);
      this.headerBlockBuffer = new ue();
      this.headerBlockOut = up.ˊ(new uk(this.headerBlockBuffer, paramuh));
    }
    
    private void writeNameValueBlockToBuffer(List<Header> paramList)
    {
      if (this.headerBlockBuffer.size() != 0L) {
        throw new IllegalStateException();
      }
      this.headerBlockOut.ǀ(paramList.size());
      int i = 0;
      int j = paramList.size();
      while (i < j)
      {
        uj localuj = ((Header)paramList.get(i)).name;
        this.headerBlockOut.ǀ(localuj.size());
        this.headerBlockOut.ˋ(localuj);
        localuj = ((Header)paramList.get(i)).value;
        this.headerBlockOut.ǀ(localuj.size());
        this.headerBlockOut.ˋ(localuj);
        i += 1;
      }
      this.headerBlockOut.flush();
    }
    
    public void ackSettings(Settings paramSettings) {}
    
    public void close()
    {
      try
      {
        this.closed = true;
        Util.closeAll(this.sink, this.headerBlockOut);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void connectionPreface() {}
    
    public void data(boolean paramBoolean, int paramInt1, ue paramue, int paramInt2)
    {
      int i;
      if (paramBoolean) {
        i = 1;
      } else {
        i = 0;
      }
      try
      {
        sendDataFrame(paramInt1, i, paramue, paramInt2);
        return;
      }
      finally
      {
        paramue = finally;
        throw paramue;
      }
    }
    
    public void flush()
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        this.sink.flush();
        return;
      }
      finally {}
    }
    
    public void goAway(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        if (paramErrorCode.spdyGoAwayCode == -1) {
          throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
        }
        this.sink.ǀ(-2147287033);
        this.sink.ǀ(8);
        this.sink.ǀ(paramInt);
        this.sink.ǀ(paramErrorCode.spdyGoAwayCode);
        this.sink.flush();
        return;
      }
      finally {}
    }
    
    public void headers(int paramInt, List<Header> paramList)
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        writeNameValueBlockToBuffer(paramList);
        int i = (int)(this.headerBlockBuffer.size() + 4L);
        this.sink.ǀ(-2147287032);
        this.sink.ǀ(0xFFFFFF & i | 0x0);
        this.sink.ǀ(0x7FFFFFFF & paramInt);
        this.sink.ˊ(this.headerBlockBuffer);
        return;
      }
      finally {}
    }
    
    public int maxDataLength()
    {
      return 16383;
    }
    
    public void ping(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      for (;;)
      {
        boolean bool2;
        try
        {
          if (this.closed) {
            throw new IOException("closed");
          }
          bool2 = this.client;
          if ((paramInt1 & 0x1) != 1) {
            break label107;
          }
          bool1 = true;
        }
        finally {}
        if (paramBoolean != bool1) {
          throw new IllegalArgumentException("payload != reply");
        }
        this.sink.ǀ(-2147287034);
        this.sink.ǀ(4);
        this.sink.ǀ(paramInt1);
        this.sink.flush();
        return;
        label107:
        boolean bool1 = false;
        if (bool2 != bool1) {
          bool1 = true;
        } else {
          bool1 = false;
        }
      }
    }
    
    public void pushPromise(int paramInt1, int paramInt2, List<Header> paramList) {}
    
    public void rstStream(int paramInt, ErrorCode paramErrorCode)
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        if (paramErrorCode.spdyRstCode == -1) {
          throw new IllegalArgumentException();
        }
        this.sink.ǀ(-2147287037);
        this.sink.ǀ(8);
        this.sink.ǀ(0x7FFFFFFF & paramInt);
        this.sink.ǀ(paramErrorCode.spdyRstCode);
        this.sink.flush();
        return;
      }
      finally {}
    }
    
    void sendDataFrame(int paramInt1, int paramInt2, ue paramue, int paramInt3)
    {
      if (this.closed) {
        throw new IOException("closed");
      }
      if (paramInt3 > 16777215L) {
        throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: " + paramInt3);
      }
      this.sink.ǀ(0x7FFFFFFF & paramInt1);
      this.sink.ǀ((paramInt2 & 0xFF) << 24 | 0xFFFFFF & paramInt3);
      if (paramInt3 > 0) {
        this.sink.write(paramue, paramInt3);
      }
    }
    
    public void settings(Settings paramSettings)
    {
      for (;;)
      {
        int i;
        try
        {
          if (this.closed) {
            throw new IOException("closed");
          }
          i = paramSettings.size();
          this.sink.ǀ(-2147287036);
          this.sink.ǀ(0xFFFFFF & i * 8 + 4 | 0x0);
          this.sink.ǀ(i);
          i = 0;
          if (i <= 10)
          {
            if (paramSettings.isSet(i))
            {
              int j = paramSettings.flags(i);
              this.sink.ǀ((j & 0xFF) << 24 | 0xFFFFFF & i);
              this.sink.ǀ(paramSettings.get(i));
            }
          }
          else
          {
            this.sink.flush();
            return;
          }
        }
        finally {}
        i += 1;
      }
    }
    
    public void synReply(boolean paramBoolean, int paramInt, List<Header> paramList)
    {
      for (;;)
      {
        try
        {
          if (this.closed) {
            throw new IOException("closed");
          }
          writeNameValueBlockToBuffer(paramList);
          if (paramBoolean)
          {
            i = 1;
            int j = (int)(this.headerBlockBuffer.size() + 4L);
            this.sink.ǀ(-2147287038);
            this.sink.ǀ((i & 0xFF) << 24 | 0xFFFFFF & j);
            this.sink.ǀ(0x7FFFFFFF & paramInt);
            this.sink.ˊ(this.headerBlockBuffer);
            this.sink.flush();
            return;
          }
        }
        finally {}
        int i = 0;
      }
    }
    
    public void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList)
    {
      for (;;)
      {
        int k;
        int j;
        try
        {
          if (this.closed) {
            throw new IOException("closed");
          }
          writeNameValueBlockToBuffer(paramList);
          k = (int)(this.headerBlockBuffer.size() + 10L);
          if (!paramBoolean1) {
            break label162;
          }
          i = 1;
        }
        finally {}
        this.sink.ǀ(-2147287039);
        this.sink.ǀ(((i | j) & 0xFF) << 24 | 0xFFFFFF & k);
        this.sink.ǀ(0x7FFFFFFF & paramInt1);
        this.sink.ǀ(0x7FFFFFFF & paramInt2);
        this.sink.ɔ(0);
        this.sink.ˊ(this.headerBlockBuffer);
        this.sink.flush();
        return;
        label162:
        int i = 0;
        if (paramBoolean2) {
          j = 2;
        } else {
          j = 0;
        }
      }
    }
    
    /* Error */
    public void windowUpdate(int paramInt, long paramLong)
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 106	com/squareup/okhttp/internal/spdy/Spdy3$Writer:closed	Z
      //   6: ifeq +106 -> 112
      //   9: new 121	java/io/IOException
      //   12: dup
      //   13: ldc 122
      //   15: invokespecial 125	java/io/IOException:<init>	(Ljava/lang/String;)V
      //   18: athrow
      //   19: new 135	java/lang/IllegalArgumentException
      //   22: dup
      //   23: new 172	java/lang/StringBuilder
      //   26: dup
      //   27: invokespecial 173	java/lang/StringBuilder:<init>	()V
      //   30: ldc 222
      //   32: invokevirtual 179	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   35: lload_2
      //   36: invokevirtual 225	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   39: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   42: invokespecial 138	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
      //   45: athrow
      //   46: aload_0
      //   47: getfield 24	com/squareup/okhttp/internal/spdy/Spdy3$Writer:sink	Lo/uh;
      //   50: ldc 226
      //   52: invokeinterface 76 2 0
      //   57: pop
      //   58: aload_0
      //   59: getfield 24	com/squareup/okhttp/internal/spdy/Spdy3$Writer:sink	Lo/uh;
      //   62: bipush 8
      //   64: invokeinterface 76 2 0
      //   69: pop
      //   70: aload_0
      //   71: getfield 24	com/squareup/okhttp/internal/spdy/Spdy3$Writer:sink	Lo/uh;
      //   74: iload_1
      //   75: invokeinterface 76 2 0
      //   80: pop
      //   81: aload_0
      //   82: getfield 24	com/squareup/okhttp/internal/spdy/Spdy3$Writer:sink	Lo/uh;
      //   85: lload_2
      //   86: l2i
      //   87: invokeinterface 76 2 0
      //   92: pop
      //   93: aload_0
      //   94: getfield 24	com/squareup/okhttp/internal/spdy/Spdy3$Writer:sink	Lo/uh;
      //   97: invokeinterface 99 1 0
      //   102: aload_0
      //   103: monitorexit
      //   104: return
      //   105: astore 4
      //   107: aload_0
      //   108: monitorexit
      //   109: aload 4
      //   111: athrow
      //   112: lload_2
      //   113: lconst_0
      //   114: lcmp
      //   115: ifeq -96 -> 19
      //   118: lload_2
      //   119: ldc2_w 227
      //   122: lcmp
      //   123: ifle -77 -> 46
      //   126: goto -107 -> 19
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	129	0	this	Writer
      //   0	129	1	paramInt	int
      //   0	129	2	paramLong	long
      //   105	5	4	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	19	105	finally
      //   19	46	105	finally
      //   46	102	105	finally
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.Spdy3
 * JD-Core Version:    0.7.0.1
 */