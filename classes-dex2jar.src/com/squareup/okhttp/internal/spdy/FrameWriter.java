package com.squareup.okhttp.internal.spdy;

import java.io.Closeable;
import java.util.List;
import o.ue;

public abstract interface FrameWriter
  extends Closeable
{
  public abstract void ackSettings(Settings paramSettings);
  
  public abstract void connectionPreface();
  
  public abstract void data(boolean paramBoolean, int paramInt1, ue paramue, int paramInt2);
  
  public abstract void flush();
  
  public abstract void goAway(int paramInt, ErrorCode paramErrorCode, byte[] paramArrayOfByte);
  
  public abstract void headers(int paramInt, List<Header> paramList);
  
  public abstract int maxDataLength();
  
  public abstract void ping(boolean paramBoolean, int paramInt1, int paramInt2);
  
  public abstract void pushPromise(int paramInt1, int paramInt2, List<Header> paramList);
  
  public abstract void rstStream(int paramInt, ErrorCode paramErrorCode);
  
  public abstract void settings(Settings paramSettings);
  
  public abstract void synReply(boolean paramBoolean, int paramInt, List<Header> paramList);
  
  public abstract void synStream(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList);
  
  public abstract void windowUpdate(int paramInt, long paramLong);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.FrameWriter
 * JD-Core Version:    0.7.0.1
 */