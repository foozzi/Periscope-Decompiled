package retrofit;

import rx.Subscriber;

class RxSupport$2
  implements Runnable
{
  RxSupport$2(RxSupport paramRxSupport, Subscriber paramSubscriber, RxSupport.Invoker paramInvoker, RequestInterceptorTape paramRequestInterceptorTape) {}
  
  public void run()
  {
    try
    {
      boolean bool = this.val$subscriber.isUnsubscribed();
      if (bool) {
        return;
      }
      ResponseWrapper localResponseWrapper = this.val$invoker.invoke(this.val$interceptorTape);
      this.val$subscriber.onNext(localResponseWrapper.responseBody);
      this.val$subscriber.onCompleted();
      return;
    }
    catch (RetrofitError localRetrofitError)
    {
      this.val$subscriber.onError(RxSupport.access$300(this.this$0).handleError(localRetrofitError));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.RxSupport.2
 * JD-Core Version:    0.7.0.1
 */