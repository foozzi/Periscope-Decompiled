package com.squareup.okhttp.internal.spdy;

import java.io.Closeable;
import java.util.List;
import o.ui;
import o.uj;

public abstract interface FrameReader
  extends Closeable
{
  public abstract boolean nextFrame(Handler paramHandler);
  
  public abstract void readConnectionPreface();
  
  public static abstract interface Handler
  {
    public abstract void ackSettings();
    
    public abstract void alternateService(int paramInt1, String paramString1, uj paramuj, String paramString2, int paramInt2, long paramLong);
    
    public abstract void data(boolean paramBoolean, int paramInt1, ui paramui, int paramInt2);
    
    public abstract void goAway(int paramInt, ErrorCode paramErrorCode, uj paramuj);
    
    public abstract void headers(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, List<Header> paramList, HeadersMode paramHeadersMode);
    
    public abstract void ping(boolean paramBoolean, int paramInt1, int paramInt2);
    
    public abstract void priority(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean);
    
    public abstract void pushPromise(int paramInt1, int paramInt2, List<Header> paramList);
    
    public abstract void rstStream(int paramInt, ErrorCode paramErrorCode);
    
    public abstract void settings(boolean paramBoolean, Settings paramSettings);
    
    public abstract void windowUpdate(int paramInt, long paramLong);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.FrameReader
 * JD-Core Version:    0.7.0.1
 */