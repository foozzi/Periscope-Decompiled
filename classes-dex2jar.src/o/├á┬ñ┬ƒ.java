package o;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import java.io.IOException;

public class ट<T>
  implements ס.if
{
  private final ت AR;
  private final ٺ.if<T> AS;
  private final ट.if Bb;
  volatile String Bc;
  private ٺ<T> Bd;
  private int Be;
  private long Bf;
  private IOException Bg;
  private volatile T Bh;
  private volatile long Bi;
  private final Handler qK;
  
  public ट(String paramString, ت paramت, ٺ.if<T> paramif)
  {
    this(paramString, paramت, paramif, null, null);
  }
  
  public ट(String paramString, ت paramت, ٺ.if<T> paramif, Handler paramHandler, ट.if paramif1)
  {
    this.AS = paramif;
    this.Bc = paramString;
    this.AR = paramت;
    this.qK = paramHandler;
    this.Bb = paramif1;
  }
  
  private void Ț()
  {
    if ((this.qK != null) && (this.Bb != null)) {
      this.qK.post(new ও(this));
    }
  }
  
  private void ˋ(IOException paramIOException)
  {
    if ((this.qK != null) && (this.Bb != null)) {
      this.qK.post(new চ(this, paramIOException));
    }
  }
  
  public void ˊ(Looper paramLooper, ट.ˊ<T> paramˊ)
  {
    new ट.ˋ(this, new ٺ(this.Bc, this.AR, this.AS), paramLooper, paramˊ).startLoading();
  }
  
  public void ˊ(ס.ˋ paramˋ)
  {
    if (this.Bd != paramˋ) {
      return;
    }
    this.Bh = this.Bd.getResult();
    this.Bi = SystemClock.elapsedRealtime();
    this.Be = 0;
    this.Bg = null;
    Ț();
  }
  
  public void ˊ(ס.ˋ paramˋ, IOException paramIOException)
  {
    if (this.Bd != paramˋ) {
      return;
    }
    this.Be += 1;
    this.Bf = SystemClock.elapsedRealtime();
    this.Bg = new IOException(paramIOException);
    ˋ(this.Bg);
  }
  
  public void ˋ(ס.ˋ paramˋ) {}
  
  void ᐟ(T paramT)
  {
    this.Bh = paramT;
    this.Bi = SystemClock.elapsedRealtime();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¤
 * JD-Core Version:    0.7.0.1
 */