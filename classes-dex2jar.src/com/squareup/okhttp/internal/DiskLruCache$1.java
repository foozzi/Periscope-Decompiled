package com.squareup.okhttp.internal;

import java.io.IOException;

class DiskLruCache$1
  implements Runnable
{
  DiskLruCache$1(DiskLruCache paramDiskLruCache) {}
  
  public void run()
  {
    for (;;)
    {
      synchronized (this.this$0)
      {
        if (!DiskLruCache.access$000(this.this$0))
        {
          bool1 = true;
          boolean bool2 = DiskLruCache.access$100(this.this$0);
          if ((bool1 | bool2)) {
            return;
          }
          try
          {
            DiskLruCache.access$200(this.this$0);
            if (DiskLruCache.access$300(this.this$0))
            {
              DiskLruCache.access$400(this.this$0);
              DiskLruCache.access$502(this.this$0, 0);
            }
          }
          catch (IOException localIOException)
          {
            throw new RuntimeException(localIOException);
          }
          return;
        }
      }
      boolean bool1 = false;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.DiskLruCache.1
 * JD-Core Version:    0.7.0.1
 */