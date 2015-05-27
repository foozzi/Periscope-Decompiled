package o;

import android.os.SystemClock;
import android.util.Log;

@Deprecated
public class qy
{
  private final String WA;
  private long WB;
  private long WC;
  private final boolean nI;
  private final String tag;
  
  public qy(String paramString1, String paramString2)
  {
    this.WA = paramString1;
    this.tag = paramString2;
    boolean bool;
    if (!Log.isLoggable(paramString2, 2)) {
      bool = true;
    } else {
      bool = false;
    }
    this.nI = bool;
  }
  
  private void cN()
  {
    Log.v(this.tag, this.WA + ": " + this.WC + "ms");
  }
  
  public void cL()
  {
    try
    {
      if (this.nI) {
        return;
      }
      this.WB = SystemClock.elapsedRealtime();
      this.WC = 0L;
      return;
    }
    finally {}
  }
  
  public void cM()
  {
    try
    {
      if (this.nI) {
        return;
      }
      if (this.WC != 0L) {
        return;
      }
      this.WC = (SystemClock.elapsedRealtime() - this.WB);
      cN();
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.qy
 * JD-Core Version:    0.7.0.1
 */