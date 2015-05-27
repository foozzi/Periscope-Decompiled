package o;

import android.os.Looper;
import java.util.concurrent.ExecutorService;

public final class ס
{
  private final ExecutorService AJ;
  private ס.ˊ AK;
  private boolean AL;
  
  public ס(String paramString)
  {
    this.AJ = ผ.ᐣ(paramString);
  }
  
  public void release()
  {
    if (this.AL) {
      ƫ();
    }
    this.AJ.shutdown();
  }
  
  public boolean ƨ()
  {
    return this.AL;
  }
  
  public void ƫ()
  {
    ړ.ᐟ(this.AL);
    this.AK.quit();
  }
  
  public void ˊ(Looper paramLooper, ס.ˋ paramˋ, ס.if paramif)
  {
    ˊ(paramLooper, paramˋ, paramif, 0);
  }
  
  public void ˊ(Looper paramLooper, ס.ˋ paramˋ, ס.if paramif, int paramInt)
  {
    boolean bool;
    if (!this.AL) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    this.AL = true;
    this.AK = new ס.ˊ(this, paramLooper, paramˋ, paramif, paramInt);
    this.AJ.submit(this.AK);
  }
  
  public void ˊ(ס.ˋ paramˋ, ס.if paramif)
  {
    Looper localLooper = Looper.myLooper();
    boolean bool;
    if (localLooper != null) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    ˊ(localLooper, paramˋ, paramif);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×¡
 * JD-Core Version:    0.7.0.1
 */