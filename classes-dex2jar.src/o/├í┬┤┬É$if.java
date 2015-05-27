package o;

import java.io.File;
import java.io.IOException;

public final class ᴐ$if
{
  private boolean committed;
  private final ᴐ.ˊ fh;
  private final boolean[] written;
  
  private ᴐ$if(ᴐ paramᴐ, ᴐ.ˊ paramˊ)
  {
    this.fh = paramˊ;
    if (ᴐ.ˊ.ˏ(paramˊ)) {
      paramᴐ = null;
    } else {
      paramᴐ = new boolean[ᴐ.ᐝ(paramᴐ)];
    }
    this.written = paramᴐ;
  }
  
  public void abort()
  {
    ᴐ.ˊ(this.fg, this, false);
  }
  
  public void abortUnlessCommitted()
  {
    if (!this.committed) {
      try
      {
        abort();
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public void commit()
  {
    ᴐ.ˊ(this.fg, this, true);
    this.committed = true;
  }
  
  public File ﺑ(int paramInt)
  {
    synchronized (this.fg)
    {
      if (ᴐ.ˊ.ˊ(this.fh) != this) {
        throw new IllegalStateException();
      }
      if (!ᴐ.ˊ.ˏ(this.fh)) {
        this.written[paramInt] = true;
      }
      File localFile = this.fh.ʺ(paramInt);
      if (!ᴐ.ʻ(this.fg).exists()) {
        ᴐ.ʻ(this.fg).mkdirs();
      }
      return localFile;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´.if
 * JD-Core Version:    0.7.0.1
 */