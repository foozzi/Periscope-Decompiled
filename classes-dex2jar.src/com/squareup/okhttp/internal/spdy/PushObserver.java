package com.squareup.okhttp.internal.spdy;

import java.util.List;
import o.ui;

public abstract interface PushObserver
{
  public static final PushObserver CANCEL = new PushObserver.1();
  
  public abstract boolean onData(int paramInt1, ui paramui, int paramInt2, boolean paramBoolean);
  
  public abstract boolean onHeaders(int paramInt, List<Header> paramList, boolean paramBoolean);
  
  public abstract boolean onRequest(int paramInt, List<Header> paramList);
  
  public abstract void onReset(int paramInt, ErrorCode paramErrorCode);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.PushObserver
 * JD-Core Version:    0.7.0.1
 */