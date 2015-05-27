package o;

import java.io.Reader;

final class id
  extends Reader
{
  public void close()
  {
    throw new AssertionError();
  }
  
  public int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    throw new AssertionError();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.id
 * JD-Core Version:    0.7.0.1
 */