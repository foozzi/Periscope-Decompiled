package retrofit;

import java.util.concurrent.Executor;

abstract class CallbackRunnable<T>
  implements Runnable
{
  private final Callback<T> callback;
  private final Executor callbackExecutor;
  private final ErrorHandler errorHandler;
  
  CallbackRunnable(Callback<T> paramCallback, Executor paramExecutor, ErrorHandler paramErrorHandler)
  {
    this.callback = paramCallback;
    this.callbackExecutor = paramExecutor;
    this.errorHandler = paramErrorHandler;
  }
  
  public abstract ResponseWrapper obtainResponse();
  
  public final void run()
  {
    try
    {
      ResponseWrapper localResponseWrapper = obtainResponse();
      this.callbackExecutor.execute(new CallbackRunnable.1(this, localResponseWrapper));
      return;
    }
    catch (RetrofitError localRetrofitError1)
    {
      Throwable localThrowable = this.errorHandler.handleError(localRetrofitError1);
      RetrofitError localRetrofitError2;
      if (localThrowable != localRetrofitError1) {
        localRetrofitError2 = RetrofitError.unexpectedError(localRetrofitError1.getUrl(), localThrowable);
      }
      this.callbackExecutor.execute(new CallbackRunnable.2(this, localRetrofitError2));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.CallbackRunnable
 * JD-Core Version:    0.7.0.1
 */