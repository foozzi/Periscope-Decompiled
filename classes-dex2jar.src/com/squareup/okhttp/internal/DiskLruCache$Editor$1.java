package com.squareup.okhttp.internal;

import java.io.IOException;
import o.uz;

class DiskLruCache$Editor$1
  extends FaultHidingSink
{
  DiskLruCache$Editor$1(DiskLruCache.Editor paramEditor, uz paramuz)
  {
    super(paramuz);
  }
  
  protected void onException(IOException arg1)
  {
    synchronized (this.this$1.this$0)
    {
      DiskLruCache.Editor.access$1902(this.this$1, true);
      return;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache.Editor.1
 * JD-Core Version:    0.7.0.1
 */