package com.squareup.okhttp;

public abstract interface Interceptor
{
  public abstract Response intercept(Chain paramChain);
  
  public static abstract interface Chain
  {
    public abstract Connection connection();
    
    public abstract Response proceed(Request paramRequest);
    
    public abstract Request request();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Interceptor
 * JD-Core Version:    0.7.0.1
 */