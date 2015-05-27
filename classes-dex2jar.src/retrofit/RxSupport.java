package retrofit;

import java.util.concurrent.Executor;
import rx.Observable;
import rx.Subscriber;

final class RxSupport
{
  private final ErrorHandler errorHandler;
  private final Executor executor;
  private final RequestInterceptor requestInterceptor;
  
  RxSupport(Executor paramExecutor, ErrorHandler paramErrorHandler, RequestInterceptor paramRequestInterceptor)
  {
    this.executor = paramExecutor;
    this.errorHandler = paramErrorHandler;
    this.requestInterceptor = paramRequestInterceptor;
  }
  
  private Runnable getRunnable(Subscriber<? super Object> paramSubscriber, Invoker paramInvoker, RequestInterceptorTape paramRequestInterceptorTape)
  {
    return new RxSupport.2(this, paramSubscriber, paramInvoker, paramRequestInterceptorTape);
  }
  
  Observable createRequestObservable(Invoker paramInvoker)
  {
    return Observable.create(new RxSupport.1(this, paramInvoker));
  }
  
  static abstract interface Invoker
  {
    public abstract ResponseWrapper invoke(RequestInterceptor paramRequestInterceptor);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.RxSupport
 * JD-Core Version:    0.7.0.1
 */