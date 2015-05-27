package o;

import java.io.Closeable;
import java.io.Flushable;

public abstract interface uz
  extends Closeable, Flushable
{
  public abstract void close();
  
  public abstract void flush();
  
  public abstract vb timeout();
  
  public abstract void write(ue paramue, long paramLong);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uz
 * JD-Core Version:    0.7.0.1
 */