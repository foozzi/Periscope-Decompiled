package o;

import java.io.Writer;
import java.util.concurrent.Callable;

class ᴛ
  implements Callable<Void>
{
  ᴛ(ᴐ paramᴐ) {}
  
  public Void ᴻ()
  {
    synchronized (this.fg)
    {
      Writer localWriter = ᴐ.ˊ(this.fg);
      if (localWriter == null) {
        return null;
      }
      ᴐ.ˋ(this.fg);
      if (ᴐ.ˎ(this.fg))
      {
        ᴐ.ˏ(this.fg);
        ᴐ.ˊ(this.fg, 0);
      }
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */