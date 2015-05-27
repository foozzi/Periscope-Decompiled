package o;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

public final class ﾕ
{
  private static final char[] nk = "0123456789abcdef".toCharArray();
  private static final char[] nl = new char[64];
  private static final char[] nm = new char[40];
  
  @TargetApi(19)
  public static int ˉ(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      try
      {
        int i = paramBitmap.getAllocationByteCount();
        return i;
      }
      catch (NullPointerException localNullPointerException) {}
    }
    return paramBitmap.getHeight() * paramBitmap.getRowBytes();
  }
  
  private static String ˊ(byte[] paramArrayOfByte, char[] paramArrayOfChar)
  {
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      paramArrayOfChar[(i * 2)] = nk[(j >>> 4)];
      paramArrayOfChar[(i * 2 + 1)] = nk[(j & 0xF)];
      i += 1;
    }
    return new String(paramArrayOfChar);
  }
  
  public static <T> List<T> ˊ(Collection<T> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(paramCollection.next());
    }
    return localArrayList;
  }
  
  private static int ˎ(Bitmap.Config paramConfig)
  {
    Bitmap.Config localConfig = paramConfig;
    if (paramConfig == null) {
      localConfig = Bitmap.Config.ARGB_8888;
    }
    switch (ﾕ.1.iO[localConfig.ordinal()])
    {
    default: 
      break;
    case 1: 
      return 1;
    case 2: 
    case 3: 
      return 2;
    }
    return 4;
  }
  
  public static int ͺ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return paramInt1 * paramInt2 * ˎ(paramConfig);
  }
  
  public static String ᐝ(byte[] paramArrayOfByte)
  {
    synchronized (nl)
    {
      paramArrayOfByte = ˊ(paramArrayOfByte, nl);
      return paramArrayOfByte;
    }
  }
  
  public static boolean ᵀ(int paramInt1, int paramInt2)
  {
    return (ᵒ(paramInt1)) && (ᵒ(paramInt2));
  }
  
  private static boolean ᵒ(int paramInt)
  {
    return (paramInt > 0) || (paramInt == -2147483648);
  }
  
  public static <T> Queue<T> ᵘ(int paramInt)
  {
    return new ArrayDeque(paramInt);
  }
  
  public static void בּ()
  {
    if (!ﭩ()) {
      throw new IllegalArgumentException("You must call this method on the main thread");
    }
  }
  
  public static boolean ﭩ()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  public static boolean ﮇ()
  {
    return !ﭩ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¾
 * JD-Core Version:    0.7.0.1
 */