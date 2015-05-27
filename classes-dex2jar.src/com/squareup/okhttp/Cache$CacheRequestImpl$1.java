package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache.Editor;
import o.ul;
import o.uz;

class Cache$CacheRequestImpl$1
  extends ul
{
  Cache$CacheRequestImpl$1(Cache.CacheRequestImpl paramCacheRequestImpl, uz paramuz, Cache paramCache, DiskLruCache.Editor paramEditor)
  {
    super(paramuz);
  }
  
  public void close()
  {
    synchronized (this.this$1.this$0)
    {
      boolean bool = Cache.CacheRequestImpl.access$700(this.this$1);
      if (bool) {
        return;
      }
      Cache.CacheRequestImpl.access$702(this.this$1, true);
      Cache.access$808(this.this$1.this$0);
    }
    super.close();
    this.val$editor.commit();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Cache.CacheRequestImpl.1
 * JD-Core Version:    0.7.0.1
 */