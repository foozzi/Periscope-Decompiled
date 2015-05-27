package o;

import android.os.Looper;
import java.io.IOException;
import java.util.concurrent.CancellationException;

class ट$ˋ
  implements ס.if
{
  private final ٺ<T> Bk;
  private final Looper Bl;
  private final ट.ˊ<T> Bm;
  private final ס Bn;
  
  public ट$ˋ(ٺ<T> paramٺ, Looper paramLooper, ट.ˊ<T> paramˊ)
  {
    this.Bk = paramLooper;
    this.Bl = paramˊ;
    Object localObject;
    this.Bm = localObject;
    this.Bn = new ס("manifestLoader:single");
  }
  
  private void ɢ()
  {
    this.Bn.release();
  }
  
  public void startLoading()
  {
    this.Bn.ˊ(this.Bl, this.Bk, this);
  }
  
  public void ˊ(ס.ˋ paramˋ)
  {
    try
    {
      paramˋ = this.Bk.getResult();
      this.Bj.ᐟ(paramˋ);
      this.Bm.ᐡ(paramˋ);
      return;
    }
    finally
    {
      ɢ();
    }
  }
  
  public void ˊ(ס.ˋ paramˋ, IOException paramIOException)
  {
    try
    {
      this.Bm.ˏ(paramIOException);
      return;
    }
    finally
    {
      ɢ();
    }
  }
  
  public void ˋ(ס.ˋ paramˋ)
  {
    try
    {
      paramˋ = new IOException("Load cancelled", new CancellationException());
      this.Bm.ˏ(paramˋ);
      return;
    }
    finally
    {
      ɢ();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¤.Ë
 * JD-Core Version:    0.7.0.1
 */