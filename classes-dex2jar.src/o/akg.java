package o;

import java.io.Closeable;
import java.io.IOException;

public class akg
{
  public static void ˊ(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        paramCloseable.close();
        return;
      }
      catch (IOException paramCloseable) {}
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akg
 * JD-Core Version:    0.7.0.1
 */