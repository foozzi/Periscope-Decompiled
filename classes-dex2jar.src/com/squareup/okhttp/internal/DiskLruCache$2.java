package com.squareup.okhttp.internal;

import java.io.IOException;
import o.uz;

class DiskLruCache$2
  extends FaultHidingSink
{
  static
  {
    boolean bool;
    if (!DiskLruCache.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    }
    $assertionsDisabled = bool;
  }
  
  DiskLruCache$2(DiskLruCache paramDiskLruCache, uz paramuz)
  {
    super(paramuz);
  }
  
  protected void onException(IOException paramIOException)
  {
    assert (Thread.holdsLock(this.this$0));
    DiskLruCache.access$602(this.this$0, true);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache.2
 * JD-Core Version:    0.7.0.1
 */