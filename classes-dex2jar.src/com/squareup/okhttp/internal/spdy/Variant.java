package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.Protocol;
import o.uh;
import o.ui;

public abstract interface Variant
{
  public abstract Protocol getProtocol();
  
  public abstract FrameReader newReader(ui paramui, boolean paramBoolean);
  
  public abstract FrameWriter newWriter(uh paramuh, boolean paramBoolean);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.Variant
 * JD-Core Version:    0.7.0.1
 */