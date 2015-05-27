package o;

import java.util.concurrent.Semaphore;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;

class alb
  implements HandshakeCompletedListener
{
  alb(ala paramala, Semaphore paramSemaphore) {}
  
  public void handshakeCompleted(HandshakeCompletedEvent paramHandshakeCompletedEvent)
  {
    this.bLk.release();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alb
 * JD-Core Version:    0.7.0.1
 */