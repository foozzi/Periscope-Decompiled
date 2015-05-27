package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import o.ue;
import o.uh;
import o.ui;
import o.uj;
import o.va;
import o.vb;

public final class Http2
  implements Variant
{
  private static final uj CONNECTION_PREFACE = uj.ﺗ("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
  static final byte FLAG_ACK = 1;
  static final byte FLAG_COMPRESSED = 32;
  static final byte FLAG_END_HEADERS = 4;
  static final byte FLAG_END_PUSH_PROMISE = 4;
  static final byte FLAG_END_STREAM = 1;
  static final byte FLAG_NONE = 0;
  static final byte FLAG_PADDED = 8;
  static final byte FLAG_PRIORITY = 32;
  static final int INITIAL_MAX_FRAME_SIZE = 16384;
  static final byte TYPE_CONTINUATION = 9;
  static final byte TYPE_DATA = 0;
  static final byte TYPE_GOAWAY = 7;
  static final byte TYPE_HEADERS = 1;
  static final byte TYPE_PING = 6;
  static final byte TYPE_PRIORITY = 2;
  static final byte TYPE_PUSH_PROMISE = 5;
  static final byte TYPE_RST_STREAM = 3;
  static final byte TYPE_SETTINGS = 4;
  static final byte TYPE_WINDOW_UPDATE = 8;
  private static final Logger logger = Logger.getLogger(FrameLogger.class.getName());
  
  private static IllegalArgumentException illegalArgument(String paramString, Object... paramVarArgs)
  {
    throw new IllegalArgumentException(String.format(paramString, paramVarArgs));
  }
  
  private static IOException ioException(String paramString, Object... paramVarArgs)
  {
    throw new IOException(String.format(paramString, paramVarArgs));
  }
  
  private static int lengthWithoutPadding(int paramInt, byte paramByte, short paramShort)
  {
    short s = paramInt;
    if ((paramByte & 0x8) != 0) {
      s = paramInt - 1;
    }
    if (paramShort > s) {
      throw ioException("PROTOCOL_ERROR padding %s > remaining length %s", new Object[] { Short.valueOf(paramShort), Integer.valueOf(s) });
    }
    return (short)(s - paramShort);
  }
  
  private static int readMedium(ui paramui)
  {
    return (paramui.readByte() & 0xFF) << 16 | (paramui.readByte() & 0xFF) << 8 | paramui.readByte() & 0xFF;
  }
  
  private static void writeMedium(uh paramuh, int paramInt)
  {
    paramuh.ɟ(paramInt >>> 16 & 0xFF);
    paramuh.ɟ(paramInt >>> 8 & 0xFF);
    paramuh.ɟ(paramInt & 0xFF);
  }
  
  public Protocol getProtocol()
  {
    return Protocol.HTTP_2;
  }
  
  public FrameReader newReader(ui paramui, boolean paramBoolean)
  {
    return new Reader(paramui, 4096, paramBoolean);
  }
  
  public FrameWriter newWriter(uh paramuh, boolean paramBoolean)
  {
    return new Writer(paramuh, paramBoolean);
  }
  
  static final class ContinuationSource
    implements va
  {
    byte flags;
    int left;
    int length;
    short padding;
    private final ui source;
    int streamId;
    
    public ContinuationSource(ui paramui)
    {
      this.source = paramui;
    }
    
    private void readContinuationHeader()
    {
      int i = this.streamId;
      int j = Http2.readMedium(this.source);
      this.left = j;
      this.length = j;
      byte b = (byte)(this.source.readByte() & 0xFF);
      this.flags = ((byte)(this.source.readByte() & 0xFF));
      if (Http2.logger.isLoggable(Level.FINE)) {
        Http2.logger.fine(Http2.FrameLogger.formatHeader(true, this.streamId, this.length, b, this.flags));
      }
      this.streamId = (this.source.readInt() & 0x7FFFFFFF);
      if (b != 9) {
        throw Http2.ioException("%s != TYPE_CONTINUATION", new Object[] { Byte.valueOf(b) });
      }
      if (this.streamId != i) {
        throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
      }
    }
    
    public void close() {}
    
    public long read(ue paramue, long paramLong)
    {
      while (this.left == 0)
      {
        this.source.ᵋ(this.padding);
        this.padding = 0;
        if ((this.flags & 0x4) != 0) {
          return -1L;
        }
        readContinuationHeader();
      }
      paramLong = this.source.read(paramue, Math.min(paramLong, this.left));
      if (paramLong == -1L) {
        return -1L;
      }
      this.left = ((int)(this.left - paramLong));
      return paramLong;
    }
    
    public vb timeout()
    {
      return this.source.timeout();
    }
  }
  
  static final class FrameLogger
  {
    private static final String[] BINARY;
    private static final String[] FLAGS;
    private static final String[] TYPES = { "DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION" };
    
    static
    {
      FLAGS = new String[64];
      BINARY = new String[256];
      int i = 0;
      while (i < BINARY.length)
      {
        BINARY[i] = String.format("%8s", new Object[] { Integer.toBinaryString(i) }).replace(' ', '0');
        i += 1;
      }
      FLAGS[0] = "";
      FLAGS[1] = "END_STREAM";
      int[] arrayOfInt1 = new int[1];
      int[] tmp145_143 = arrayOfInt1;
      tmp145_143[0] = 1;
      tmp145_143;
      FLAGS[8] = "PADDED";
      int j = arrayOfInt1.length;
      i = 0;
      while (i < j)
      {
        k = arrayOfInt1[i];
        FLAGS[(k | 0x8)] = (FLAGS[k] + "|PADDED");
        i += 1;
      }
      FLAGS[4] = "END_HEADERS";
      FLAGS[32] = "PRIORITY";
      FLAGS[36] = "END_HEADERS|PRIORITY";
      int[] arrayOfInt2 = new int[3];
      int[] tmp242_240 = arrayOfInt2;
      tmp242_240[0] = 4;
      int[] tmp246_242 = tmp242_240;
      tmp246_242[1] = 32;
      int[] tmp251_246 = tmp246_242;
      tmp251_246[2] = 36;
      tmp251_246;
      int k = arrayOfInt2.length;
      i = 0;
      while (i < k)
      {
        int m = arrayOfInt2[i];
        int n = arrayOfInt1.length;
        j = 0;
        while (j < n)
        {
          int i1 = arrayOfInt1[j];
          FLAGS[(i1 | m)] = (FLAGS[i1] + '|' + FLAGS[m]);
          FLAGS[(i1 | m | 0x8)] = (FLAGS[i1] + '|' + FLAGS[m] + "|PADDED");
          j += 1;
        }
        i += 1;
      }
      i = 0;
      while (i < FLAGS.length)
      {
        if (FLAGS[i] == null) {
          FLAGS[i] = BINARY[i];
        }
        i += 1;
      }
    }
    
    static String formatFlags(byte paramByte1, byte paramByte2)
    {
      if (paramByte2 == 0) {
        return "";
      }
      switch (paramByte1)
      {
      default: 
        break;
      case 4: 
      case 6: 
        if (paramByte2 == 1) {
          return "ACK";
        }
        return BINARY[paramByte2];
      case 2: 
      case 3: 
      case 7: 
      case 8: 
        return BINARY[paramByte2];
      }
      String str;
      if (paramByte2 < FLAGS.length) {
        str = FLAGS[paramByte2];
      } else {
        str = BINARY[paramByte2];
      }
      if ((paramByte1 == 5) && ((paramByte2 & 0x4) != 0)) {
        return str.replace("HEADERS", "PUSH_PROMISE");
      }
      if ((paramByte1 == 0) && ((paramByte2 & 0x20) != 0)) {
        return str.replace("PRIORITY", "COMPRESSED");
      }
      return str;
    }
    
    static String formatHeader(boolean paramBoolean, int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    {
      String str1;
      if (paramByte1 < TYPES.length) {
        str1 = TYPES[paramByte1];
      } else {
        str1 = String.format("0x%02x", new Object[] { Byte.valueOf(paramByte1) });
      }
      String str3 = formatFlags(paramByte1, paramByte2);
      String str2;
      if (paramBoolean) {
        str2 = "<<";
      } else {
        str2 = ">>";
      }
      return String.format("%s 0x%08x %5d %-13s %s", new Object[] { str2, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str1, str3 });
    }
  }
  
  static final class Reader
    implements FrameReader
  {
    private final boolean client;
    private final Http2.ContinuationSource continuation;
    final Hpack.Reader hpackReader;
    private final ui source;
    
    Reader(ui paramui, int paramInt, boolean paramBoolean)
    {
      this.source = paramui;
      this.client = paramBoolean;
      this.continuation = new Http2.ContinuationSource(this.source);
      this.hpackReader = new Hpack.Reader(paramInt, this.continuation);
    }
    
    private void readData(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      boolean bool;
      if ((paramByte & 0x1) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      int i;
      if ((paramByte & 0x20) != 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0) {
        throw Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
      }
      short s;
      if ((paramByte & 0x8) != 0) {
        s = (short)(this.source.readByte() & 0xFF);
      } else {
        s = 0;
      }
      paramInt1 = Http2.lengthWithoutPadding(paramInt1, paramByte, s);
      paramHandler.data(bool, paramInt2, this.source, paramInt1);
      this.source.ᵋ(s);
    }
    
    private void readGoAway(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt1 < 8) {
        throw Http2.ioException("TYPE_GOAWAY length < 8: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 != 0) {
        throw Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
      }
      paramByte = this.source.readInt();
      paramInt2 = this.source.readInt();
      paramInt1 -= 8;
      ErrorCode localErrorCode = ErrorCode.fromHttp2(paramInt2);
      if (localErrorCode == null) {
        throw Http2.ioException("TYPE_GOAWAY unexpected error code: %d", new Object[] { Integer.valueOf(paramInt2) });
      }
      uj localuj = uj.ZJ;
      if (paramInt1 > 0) {
        localuj = this.source.ᗮ(paramInt1);
      }
      paramHandler.goAway(paramByte, localErrorCode, localuj);
    }
    
    private List<Header> readHeaderBlock(int paramInt1, short paramShort, byte paramByte, int paramInt2)
    {
      Http2.ContinuationSource localContinuationSource = this.continuation;
      this.continuation.left = paramInt1;
      localContinuationSource.length = paramInt1;
      this.continuation.padding = paramShort;
      this.continuation.flags = paramByte;
      this.continuation.streamId = paramInt2;
      this.hpackReader.readHeaders();
      return this.hpackReader.getAndResetHeaderList();
    }
    
    private void readHeaders(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt2 == 0) {
        throw Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
      }
      boolean bool;
      if ((paramByte & 0x1) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      short s;
      if ((paramByte & 0x8) != 0) {
        s = (short)(this.source.readByte() & 0xFF);
      } else {
        s = 0;
      }
      int i = paramInt1;
      if ((paramByte & 0x20) != 0)
      {
        readPriority(paramHandler, paramInt2);
        i = paramInt1 - 5;
      }
      paramHandler.headers(false, bool, paramInt2, -1, readHeaderBlock(Http2.lengthWithoutPadding(i, paramByte, s), s, paramByte, paramInt2), HeadersMode.HTTP_20_HEADERS);
    }
    
    private void readPing(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt1 != 8) {
        throw Http2.ioException("TYPE_PING length != 8: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 != 0) {
        throw Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
      }
      paramInt1 = this.source.readInt();
      paramInt2 = this.source.readInt();
      boolean bool;
      if ((paramByte & 0x1) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramHandler.ping(bool, paramInt1, paramInt2);
    }
    
    private void readPriority(FrameReader.Handler paramHandler, int paramInt)
    {
      int i = this.source.readInt();
      boolean bool;
      if ((0x80000000 & i) != 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramHandler.priority(paramInt, i & 0x7FFFFFFF, (this.source.readByte() & 0xFF) + 1, bool);
    }
    
    private void readPriority(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt1 != 5) {
        throw Http2.ioException("TYPE_PRIORITY length: %d != 5", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 == 0) {
        throw Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
      }
      readPriority(paramHandler, paramInt2);
    }
    
    private void readPushPromise(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt2 == 0) {
        throw Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
      }
      short s;
      if ((paramByte & 0x8) != 0) {
        s = (short)(this.source.readByte() & 0xFF);
      } else {
        s = 0;
      }
      paramHandler.pushPromise(paramInt2, this.source.readInt() & 0x7FFFFFFF, readHeaderBlock(Http2.lengthWithoutPadding(paramInt1 - 4, paramByte, s), s, paramByte, paramInt2));
    }
    
    private void readRstStream(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt1 != 4) {
        throw Http2.ioException("TYPE_RST_STREAM length: %d != 4", new Object[] { Integer.valueOf(paramInt1) });
      }
      if (paramInt2 == 0) {
        throw Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
      }
      paramInt1 = this.source.readInt();
      ErrorCode localErrorCode = ErrorCode.fromHttp2(paramInt1);
      if (localErrorCode == null) {
        throw Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", new Object[] { Integer.valueOf(paramInt1) });
      }
      paramHandler.rstStream(paramInt2, localErrorCode);
    }
    
    private void readSettings(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt2 != 0) {
        throw Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
      }
      if ((paramByte & 0x1) != 0)
      {
        if (paramInt1 != 0) {
          throw Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
        }
        paramHandler.ackSettings();
        return;
      }
      if (paramInt1 % 6 != 0) {
        throw Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      Settings localSettings = new Settings();
      paramByte = 0;
      while (paramByte < paramInt1)
      {
        int i = this.source.readShort();
        int j = this.source.readInt();
        switch (i)
        {
        default: 
          break;
        case 1: 
          paramInt2 = i;
          break;
        case 2: 
          paramInt2 = i;
          if (j == 0) {
            break label270;
          }
          paramInt2 = i;
          if (j == 1) {
            break label270;
          }
          throw Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
        case 3: 
          paramInt2 = 4;
          break;
        case 4: 
          paramInt2 = 7;
          if (j >= 0) {
            break label270;
          }
          throw Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
        case 5: 
          if (j >= 16384)
          {
            paramInt2 = i;
            if (j <= 16777215) {
              break label270;
            }
          }
          throw Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", new Object[] { Integer.valueOf(j) });
        case 6: 
          paramInt2 = i;
          break;
        }
        throw Http2.ioException("PROTOCOL_ERROR invalid settings id: %s", new Object[] { Short.valueOf(i) });
        label270:
        localSettings.set(paramInt2, 0, j);
        paramByte += 6;
      }
      paramHandler.settings(false, localSettings);
      if (localSettings.getHeaderTableSize() >= 0) {
        this.hpackReader.headerTableSizeSetting(localSettings.getHeaderTableSize());
      }
    }
    
    private void readWindowUpdate(FrameReader.Handler paramHandler, int paramInt1, byte paramByte, int paramInt2)
    {
      if (paramInt1 != 4) {
        throw Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      long l = this.source.readInt() & 0x7FFFFFFF;
      if (l == 0L) {
        throw Http2.ioException("windowSizeIncrement was 0", new Object[] { Long.valueOf(l) });
      }
      paramHandler.windowUpdate(paramInt2, l);
    }
    
    public void close()
    {
      this.source.close();
    }
    
    public boolean nextFrame(FrameReader.Handler paramHandler)
    {
      try
      {
        this.source.ᔇ(9L);
      }
      catch (IOException paramHandler)
      {
        return false;
      }
      int i = Http2.readMedium(this.source);
      if ((i < 0) || (i > 16384)) {
        throw Http2.ioException("FRAME_SIZE_ERROR: %s", new Object[] { Integer.valueOf(i) });
      }
      byte b1 = (byte)(this.source.readByte() & 0xFF);
      byte b2 = (byte)(this.source.readByte() & 0xFF);
      int j = this.source.readInt() & 0x7FFFFFFF;
      if (Http2.logger.isLoggable(Level.FINE)) {
        Http2.logger.fine(Http2.FrameLogger.formatHeader(true, j, i, b1, b2));
      }
      switch (b1)
      {
      default: 
        break;
      case 0: 
        readData(paramHandler, i, b2, j);
        break;
      case 1: 
        readHeaders(paramHandler, i, b2, j);
        break;
      case 2: 
        readPriority(paramHandler, i, b2, j);
        break;
      case 3: 
        readRstStream(paramHandler, i, b2, j);
        break;
      case 4: 
        readSettings(paramHandler, i, b2, j);
        break;
      case 5: 
        readPushPromise(paramHandler, i, b2, j);
        break;
      case 6: 
        readPing(paramHandler, i, b2, j);
        break;
      case 7: 
        readGoAway(paramHandler, i, b2, j);
        break;
      case 8: 
        readWindowUpdate(paramHandler, i, b2, j);
        break;
      }
      this.source.ᵋ(i);
      return true;
    }
    
    public void readConnectionPreface()
    {
      if (this.client) {
        return;
      }
      uj localuj = this.source.ᗮ(Http2.CONNECTION_PREFACE.size());
      if (Http2.logger.isLoggable(Level.FINE)) {
        Http2.logger.fine(String.format("<< CONNECTION %s", new Object[] { localuj.el() }));
      }
      if (!Http2.CONNECTION_PREFACE.equals(localuj)) {
        throw Http2.ioException("Expected a connection header but was %s", new Object[] { localuj.ei() });
      }
    }
  }
  
  static final class Writer
    implements FrameWriter
  {
    private final boolean client;
    private boolean closed;
    private final ue hpackBuffer;
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;
    private final uh sink;
    
    Writer(uh paramuh, boolean paramBoolean)
    {
      this.sink = paramuh;
      this.client = paramBoolean;
      this.hpackBuffer = new ue();
      this.hpackWriter = new Hpack.Writer(this.hpackBuffer);
      this.maxFrameSize = 16384;
    }
    
    private void writeContinuationFrames(int paramInt, long paramLong)
    {
      while (paramLong > 0L)
      {
        int i = (int)Math.min(this.maxFrameSize, paramLong);
        paramLong -= i;
        byte b;
        if (paramLong == 0L) {
          b = 4;
        } else {
          b = 0;
        }
        frameHeader(paramInt, i, (byte)9, b);
        this.sink.write(this.hpackBuffer, i);
      }
    }
    
    public void ackSettings(Settings paramSettings)
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        this.maxFrameSize = paramSettings.getMaxFrameSize(this.maxFrameSize);
        frameHeader(0, 0, (byte)4, (byte)1);
        this.sink.flush();
        return;
      }
      finally {}
    }
    
    public void close()
    {
      try
      {
        this.closed = true;
        this.sink.close();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    
    public void connectionPreface()
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        if (!this.client) {
          return;
        }
        if (Http2.logger.isLoggable(Level.FINE)) {
          Http2.logger.fine(String.format(">> CONNECTION %s", new Object[] { Http2.CONNECTION_PREFACE.el() }));
        }
        this.sink.ᐧ(Http2.CONNECTION_PREFACE.toByteArray());
        this.sink.flush();
        return;
      }
      finally {}
    }
    
    public void data(boolean paramBoolean, int paramInt1, ue paramue, int paramInt2)
    {
      for (;;)
      {
        try
        {
          if (!this.closed) {
            break label37;
          }
          throw new IOException("closed");
        }
        finally {}
        dataFrame(paramInt1, b, paramue, paramInt2);
        return;
        label37:
        byte b = 0;
        if (paramBoolean) {
          b = 1;
        }
      }
    }
    
    void dataFrame(int paramInt1, byte paramByte, ue paramue, int paramInt2)
    {
      frameHeader(paramInt1, paramInt2, (byte)0, paramByte);
      if (paramInt2 > 0) {
        this.sink.write(paramue, paramInt2);
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
    
    void frameHeader(int paramInt1, int paramInt2, byte paramByte1, byte paramByte2)
    {
      if (Http2.logger.isLoggable(Level.FINE)) {
        Http2.logger.fine(Http2.FrameLogger.formatHeader(false, paramInt1, paramInt2, paramByte1, paramByte2));
      }
      if (paramInt2 > this.maxFrameSize) {
        throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", new Object[] { Integer.valueOf(this.maxFrameSize), Integer.valueOf(paramInt2) });
      }
      if ((0x80000000 & paramInt1) != 0) {
        throw Http2.illegalArgument("reserved bit set: %s", new Object[] { Integer.valueOf(paramInt1) });
      }
      Http2.writeMedium(this.sink, paramInt2);
      this.sink.ɟ(paramByte1 & 0xFF);
      this.sink.ɟ(paramByte2 & 0xFF);
      this.sink.ǀ(0x7FFFFFFF & paramInt1);
    }
    
    public void goAway(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte)
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        if (paramErrorCode.httpCode == -1) {
          throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
        }
        frameHeader(0, paramArrayOfByte.length + 8, (byte)7, (byte)0);
        this.sink.ǀ(paramInt);
        this.sink.ǀ(paramErrorCode.httpCode);
        if (paramArrayOfByte.length > 0) {
          this.sink.ᐧ(paramArrayOfByte);
        }
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
        headers(false, paramInt, paramList);
        return;
      }
      finally {}
    }
    
    void headers(boolean paramBoolean, int paramInt, List<Header> paramList)
    {
      if (this.closed) {
        throw new IOException("closed");
      }
      if (this.hpackBuffer.size() != 0L) {
        throw new IllegalStateException();
      }
      this.hpackWriter.writeHeaders(paramList);
      long l = this.hpackBuffer.size();
      int i = (int)Math.min(this.maxFrameSize, l);
      byte b1;
      if (l == i) {
        b1 = 4;
      } else {
        b1 = 0;
      }
      byte b2 = b1;
      if (paramBoolean) {
        b2 = (byte)(b1 | 0x1);
      }
      frameHeader(paramInt, i, (byte)1, b2);
      this.sink.write(this.hpackBuffer, i);
      if (l > i) {
        writeContinuationFrames(paramInt, l - i);
      }
    }
    
    public int maxDataLength()
    {
      return this.maxFrameSize;
    }
    
    public void ping(boolean paramBoolean, int paramInt1, int paramInt2)
    {
      for (;;)
      {
        byte b;
        try
        {
          if (!this.closed) {
            break label71;
          }
          throw new IOException("closed");
        }
        finally {}
        frameHeader(0, 8, (byte)6, b);
        this.sink.ǀ(paramInt1);
        this.sink.ǀ(paramInt2);
        this.sink.flush();
        return;
        label71:
        if (paramBoolean) {
          b = 1;
        } else {
          b = 0;
        }
      }
    }
    
    public void pushPromise(int paramInt1, int paramInt2, List<Header> paramList)
    {
      for (;;)
      {
        try
        {
          if (this.closed) {
            throw new IOException("closed");
          }
          if (this.hpackBuffer.size() != 0L) {
            throw new IllegalStateException();
          }
          this.hpackWriter.writeHeaders(paramList);
          long l = this.hpackBuffer.size();
          int i = (int)Math.min(this.maxFrameSize - 4, l);
          if (l == i)
          {
            b = 4;
            frameHeader(paramInt1, i + 4, (byte)5, b);
            this.sink.ǀ(0x7FFFFFFF & paramInt2);
            this.sink.write(this.hpackBuffer, i);
            if (l > i) {
              writeContinuationFrames(paramInt1, l - i);
            }
            return;
          }
        }
        finally {}
        byte b = 0;
      }
    }
    
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
        frameHeader(paramInt, 4, (byte)3, (byte)0);
        this.sink.ǀ(paramErrorCode.httpCode);
        this.sink.flush();
        return;
      }
      finally {}
    }
    
    public void settings(Settings paramSettings)
    {
      for (;;)
      {
        int i;
        int j;
        try
        {
          if (this.closed) {
            throw new IOException("closed");
          }
          frameHeader(0, paramSettings.size() * 6, (byte)4, (byte)0);
          i = 0;
          if (i < 10)
          {
            if (!paramSettings.isSet(i))
            {
              break label127;
              this.sink.ɔ(j);
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
        int k = i;
        if (k == 4)
        {
          j = 3;
        }
        else
        {
          j = k;
          if (k == 7)
          {
            j = 4;
            continue;
            label127:
            i += 1;
          }
        }
      }
    }
    
    public void synReply(boolean paramBoolean, int paramInt, List<Header> paramList)
    {
      try
      {
        if (this.closed) {
          throw new IOException("closed");
        }
        headers(paramBoolean, paramInt, paramList);
        return;
      }
      finally {}
    }
    
    public void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList)
    {
      if (paramBoolean2) {}
      try
      {
        throw new UnsupportedOperationException();
      }
      finally {}
      if (this.closed) {
        throw new IOException("closed");
      }
      headers(paramBoolean1, paramInt1, paramList);
    }
    
    public void windowUpdate(int paramInt, long paramLong)
    {
      for (;;)
      {
        try
        {
          if (!this.closed) {
            break label76;
          }
          throw new IOException("closed");
        }
        finally {}
        throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[] { Long.valueOf(paramLong) });
        frameHeader(paramInt, 4, (byte)8, (byte)0);
        this.sink.ǀ((int)paramLong);
        this.sink.flush();
        return;
        label76:
        if (paramLong != 0L) {
          if (paramLong <= 2147483647L) {}
        }
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.Http2
 * JD-Core Version:    0.7.0.1
 */