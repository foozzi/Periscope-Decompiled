package o;

import java.io.BufferedReader;
import java.util.Queue;

class イ$if
{
  private final BufferedReader yJ;
  private final Queue<String> yK;
  private String yL;
  
  public イ$if(Queue<String> paramQueue, BufferedReader paramBufferedReader)
  {
    this.yK = paramQueue;
    this.yJ = paramBufferedReader;
  }
  
  public boolean hasNext()
  {
    if (this.yL != null) {
      return true;
    }
    if (!this.yK.isEmpty())
    {
      this.yL = ((String)this.yK.poll());
      return true;
    }
    do
    {
      String str = this.yJ.readLine();
      this.yL = str;
      if (str == null) {
        break;
      }
      this.yL = this.yL.trim();
    } while (this.yL.isEmpty());
    return true;
    return false;
  }
  
  public String next()
  {
    String str = null;
    if (hasNext())
    {
      str = this.yL;
      this.yL = null;
    }
    return str;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ã¤.if
 * JD-Core Version:    0.7.0.1
 */