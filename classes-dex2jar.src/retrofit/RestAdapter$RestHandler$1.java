package retrofit;

class RestAdapter$RestHandler$1
  implements RxSupport.Invoker
{
  RestAdapter$RestHandler$1(RestAdapter.RestHandler paramRestHandler, RestMethodInfo paramRestMethodInfo, Object[] paramArrayOfObject) {}
  
  public ResponseWrapper invoke(RequestInterceptor paramRequestInterceptor)
  {
    return (ResponseWrapper)RestAdapter.RestHandler.access$100(this.this$1, paramRequestInterceptor, this.val$methodInfo, this.val$args);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.RestAdapter.RestHandler.1
 * JD-Core Version:    0.7.0.1
 */