package o;

import java.io.Closeable;

public abstract interface va
  extends Closeable
{
  public abstract void close();
  
  public abstract long read(ue paramue, long paramLong);
  
  public abstract vb timeout();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.va
 * JD-Core Version:    0.7.0.1
 */