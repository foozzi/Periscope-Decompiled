package retrofit;

 enum RequestInterceptorTape$Command$5
{
  RequestInterceptorTape$Command$5()
  {
    super(str, i, null);
  }
  
  public void intercept(RequestInterceptor.RequestFacade paramRequestFacade, String paramString1, String paramString2)
  {
    paramRequestFacade.addEncodedQueryParam(paramString1, paramString2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.RequestInterceptorTape.Command.5
 * JD-Core Version:    0.7.0.1
 */