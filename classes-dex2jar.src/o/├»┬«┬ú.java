package o;

import android.util.Log;
import java.util.Queue;

public final class ﮣ
{
  private static final ﮣ na = new ﮣ();
  private final Queue<byte[]> mZ = ﾕ.ᵘ(0);
  
  public static ﮣ ῖ()
  {
    return na;
  }
  
  public byte[] getBytes()
  {
    synchronized (this.mZ)
    {
      byte[] arrayOfByte1 = (byte[])this.mZ.poll();
    }
    ??? = localObject1;
    if (localObject1 == null)
    {
      byte[] arrayOfByte2 = new byte[65536];
      ??? = arrayOfByte2;
      if (Log.isLoggable("ByteArrayPool", 3))
      {
        Log.d("ByteArrayPool", "Created temp bytes");
        ??? = arrayOfByte2;
      }
    }
    return ???;
  }
  
  public boolean ˏ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 65536) {
      return false;
    }
    boolean bool = false;
    synchronized (this.mZ)
    {
      if (this.mZ.size() < 32)
      {
        bool = true;
        this.mZ.offer(paramArrayOfByte);
      }
      return bool;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®£
 * JD-Core Version:    0.7.0.1
 */