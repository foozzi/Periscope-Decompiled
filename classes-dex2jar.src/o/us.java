package o;

import java.net.Socket;
import java.util.logging.Level;
import java.util.logging.Logger;

final class us
  extends ua
{
  us(Socket paramSocket) {}
  
  protected void timedOut()
  {
    try
    {
      this.ZS.close();
      return;
    }
    catch (Exception localException)
    {
      up.es().log(Level.WARNING, "Failed to close timed out socket " + this.ZS, localException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.us
 * JD-Core Version:    0.7.0.1
 */