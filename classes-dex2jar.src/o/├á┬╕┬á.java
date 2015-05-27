package o;

import java.util.concurrent.ThreadFactory;

final class ภ
  implements ThreadFactory
{
  ภ(String paramString) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, this.BD);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸ 
 * JD-Core Version:    0.7.0.1
 */