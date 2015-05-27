package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import o.um;
import o.va;

class Cache$CacheResponseBody$1
  extends um
{
  Cache$CacheResponseBody$1(Cache.CacheResponseBody paramCacheResponseBody, va paramva, DiskLruCache.Snapshot paramSnapshot)
  {
    super(paramva);
  }
  
  public void close()
  {
    this.val$snapshot.close();
    super.close();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Cache.CacheResponseBody.1
 * JD-Core Version:    0.7.0.1
 */