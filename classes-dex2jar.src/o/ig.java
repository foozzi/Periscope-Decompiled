package o;

import java.io.Writer;

final class ig
  extends Writer
{
  public void close()
  {
    throw new AssertionError();
  }
  
  public void flush()
  {
    throw new AssertionError();
  }
  
  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    throw new AssertionError();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ig
 * JD-Core Version:    0.7.0.1
 */