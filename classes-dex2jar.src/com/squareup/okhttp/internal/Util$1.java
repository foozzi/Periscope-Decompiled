package com.squareup.okhttp.internal;

import java.util.concurrent.ThreadFactory;

final class Util$1
  implements ThreadFactory
{
  Util$1(String paramString, boolean paramBoolean) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, this.val$name);
    paramRunnable.setDaemon(this.val$daemon);
    return paramRunnable;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.Util.1
 * JD-Core Version:    0.7.0.1
 */