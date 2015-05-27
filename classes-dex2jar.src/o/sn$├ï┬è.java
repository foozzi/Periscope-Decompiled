package o;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

public abstract class sn$ˊ<V>
  extends sn.ˏ<V>
{
  private final boolean XX;
  private final Closeable Yf;
  
  protected sn$ˊ(Closeable paramCloseable, boolean paramBoolean)
  {
    this.Yf = paramCloseable;
    this.XX = paramBoolean;
  }
  
  protected void done()
  {
    if ((this.Yf instanceof Flushable)) {
      ((Flushable)this.Yf).flush();
    }
    if (this.XX) {
      try
      {
        this.Yf.close();
        return;
      }
      catch (IOException localIOException)
      {
        return;
      }
    }
    this.Yf.close();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sn.Ë
 * JD-Core Version:    0.7.0.1
 */