package com.squareup.okhttp.internal.spdy;

import java.util.List;
import o.ui;

final class PushObserver$1
  implements PushObserver
{
  public boolean onData(int paramInt1, ui paramui, int paramInt2, boolean paramBoolean)
  {
    paramui.ᵋ(paramInt2);
    return true;
  }
  
  public boolean onHeaders(int paramInt, List<Header> paramList, boolean paramBoolean)
  {
    return true;
  }
  
  public boolean onRequest(int paramInt, List<Header> paramList)
  {
    return true;
  }
  
  public void onReset(int paramInt, ErrorCode paramErrorCode) {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.PushObserver.1
 * JD-Core Version:    0.7.0.1
 */