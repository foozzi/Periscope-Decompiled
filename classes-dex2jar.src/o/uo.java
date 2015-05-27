package o;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class uo
  implements va
{
  private final Inflater ZN;
  private int ZO;
  private boolean closed;
  private final ui source;
  
  uo(ui paramui, Inflater paramInflater)
  {
    if (paramui == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramInflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    this.source = paramui;
    this.ZN = paramInflater;
  }
  
  public uo(va paramva, Inflater paramInflater)
  {
    this(up.ˋ(paramva), paramInflater);
  }
  
  private void er()
  {
    if (this.ZO == 0) {
      return;
    }
    int i = this.ZO - this.ZN.getRemaining();
    this.ZO -= i;
    this.source.ᵋ(i);
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    this.ZN.end();
    this.closed = true;
    this.source.close();
  }
  
  public boolean eq()
  {
    if (!this.ZN.needsInput()) {
      return false;
    }
    er();
    if (this.ZN.getRemaining() != 0) {
      throw new IllegalStateException("?");
    }
    if (this.source.dW()) {
      return true;
    }
    ux localux = this.source.dS().ZG;
    this.ZO = (localux.limit - localux.pos);
    this.ZN.setInput(localux.fw, localux.pos, this.ZO);
    return false;
  }
  
  public long read(ue paramue, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.closed) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return 0L;
    }
    for (;;)
    {
      boolean bool = eq();
      try
      {
        ux localux = paramue.ľ(1);
        int i = this.ZN.inflate(localux.fw, localux.limit, 2048 - localux.limit);
        if (i > 0)
        {
          localux.limit += i;
          paramue.size += i;
          return i;
        }
        if ((this.ZN.finished()) || (this.ZN.needsDictionary()))
        {
          er();
          if (localux.pos == localux.limit)
          {
            paramue.ZG = localux.et();
            uy.ˋ(localux);
          }
          return -1L;
        }
        if (bool) {
          throw new EOFException("source exhausted prematurely");
        }
      }
      catch (DataFormatException paramue)
      {
        throw new IOException(paramue);
      }
    }
  }
  
  public vb timeout()
  {
    return this.source.timeout();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uo
 * JD-Core Version:    0.7.0.1
 */