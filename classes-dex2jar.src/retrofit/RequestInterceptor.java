package retrofit;

public abstract interface RequestInterceptor
{
  public static final RequestInterceptor NONE = new RequestInterceptor.1();
  
  public abstract void intercept(RequestFacade paramRequestFacade);
  
  public static abstract interface RequestFacade
  {
    public abstract void addEncodedPathParam(String paramString1, String paramString2);
    
    public abstract void addEncodedQueryParam(String paramString1, String paramString2);
    
    public abstract void addHeader(String paramString1, String paramString2);
    
    public abstract void addPathParam(String paramString1, String paramString2);
    
    public abstract void addQueryParam(String paramString1, String paramString2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.RequestInterceptor
 * JD-Core Version:    0.7.0.1
 */