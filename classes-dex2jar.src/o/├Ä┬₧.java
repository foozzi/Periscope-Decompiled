package o;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class Ξ
  implements ﭥ<InputStream>
{
  public String getId()
  {
    return "";
  }
  
  public boolean ˊ(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = ﮣ.ῖ().getBytes();
    try
    {
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
      return true;
    }
    catch (IOException paramInputStream)
    {
      if (Log.isLoggable("StreamEncoder", 3)) {
        Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", paramInputStream);
      }
      return false;
    }
    finally
    {
      ﮣ.ῖ().ˏ(arrayOfByte);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î
 * JD-Core Version:    0.7.0.1
 */