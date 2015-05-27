package retrofit;

public abstract interface ErrorHandler
{
  public static final ErrorHandler DEFAULT = new ErrorHandler.1();
  
  public abstract Throwable handleError(RetrofitError paramRetrofitError);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.ErrorHandler
 * JD-Core Version:    0.7.0.1
 */