package o;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

public abstract class ᴧ
  implements ᒨ<InputStream>
{
  private static final Set<ImageHeaderParser.ImageType> jV = EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG);
  private static final Queue<BitmapFactory.Options> jW = ﾕ.ᵘ(0);
  public static final ᴧ jX = new ᴮ();
  public static final ᴧ jY = new ᴳ();
  public static final ᴧ jZ = new ᴼ();
  
  private int ʻ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (paramInt5 == -2147483648) {
      paramInt5 = paramInt3;
    }
    if (paramInt4 == -2147483648) {
      paramInt4 = paramInt2;
    }
    if ((paramInt1 == 90) || (paramInt1 == 270)) {
      paramInt1 = ʽ(paramInt3, paramInt2, paramInt4, paramInt5);
    } else {
      paramInt1 = ʽ(paramInt2, paramInt3, paramInt4, paramInt5);
    }
    if (paramInt1 == 0) {
      paramInt1 = 0;
    } else {
      paramInt1 = Integer.highestOneBit(paramInt1);
    }
    return Math.max(1, paramInt1);
  }
  
  private static Bitmap.Config ˊ(InputStream paramInputStream, ﭝ paramﭝ)
  {
    if ((paramﭝ == ﭝ.gP) || (paramﭝ == ﭝ.gQ) || (Build.VERSION.SDK_INT == 16)) {
      return Bitmap.Config.ARGB_8888;
    }
    int i = 0;
    paramInputStream.mark(1024);
    try
    {
      boolean bool = new ImageHeaderParser(paramInputStream).hasAlpha();
      i = bool;
      try
      {
        paramInputStream.reset();
      }
      catch (IOException paramInputStream)
      {
        if (Log.isLoggable("Downsampler", 5)) {
          Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
        }
      }
      if (i == 0) {
        break label182;
      }
    }
    catch (IOException localIOException)
    {
      if (Log.isLoggable("Downsampler", 5)) {
        Log.w("Downsampler", "Cannot determine whether the image has alpha or not from header for format " + paramﭝ, localIOException);
      }
    }
    finally
    {
      try
      {
        paramInputStream.reset();
      }
      catch (IOException paramInputStream)
      {
        if (Log.isLoggable("Downsampler", 5)) {
          Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
        }
      }
    }
    return Bitmap.Config.ARGB_8888;
    label182:
    return Bitmap.Config.RGB_565;
  }
  
  private Bitmap ˊ(ｿ paramｿ, 〳 param〳, BitmapFactory.Options paramOptions, ი paramი, int paramInt1, int paramInt2, int paramInt3, ﭝ paramﭝ)
  {
    paramﭝ = ˊ(paramｿ, paramﭝ);
    paramOptions.inSampleSize = paramInt3;
    paramOptions.inPreferredConfig = paramﭝ;
    if (((paramOptions.inSampleSize == 1) || (19 <= Build.VERSION.SDK_INT)) && (ˋ(paramｿ))) {
      ˊ(paramOptions, paramი.ʽ((int)Math.ceil(paramInt1 / paramInt3), (int)Math.ceil(paramInt2 / paramInt3), paramﭝ));
    }
    return ˋ(paramｿ, param〳, paramOptions);
  }
  
  private static void ˊ(BitmapFactory.Options paramOptions)
  {
    ˋ(paramOptions);
    synchronized (jW)
    {
      jW.offer(paramOptions);
      return;
    }
  }
  
  @TargetApi(11)
  private static void ˊ(BitmapFactory.Options paramOptions, Bitmap paramBitmap)
  {
    if (11 <= Build.VERSION.SDK_INT) {
      paramOptions.inBitmap = paramBitmap;
    }
  }
  
  private static Bitmap ˋ(ｿ paramｿ, 〳 param〳, BitmapFactory.Options paramOptions)
  {
    if (paramOptions.inJustDecodeBounds) {
      paramｿ.mark(5242880);
    } else {
      param〳.ř();
    }
    param〳 = BitmapFactory.decodeStream(paramｿ, null, paramOptions);
    try
    {
      if (paramOptions.inJustDecodeBounds) {
        paramｿ.reset();
      }
      return param〳;
    }
    catch (IOException paramｿ)
    {
      if (Log.isLoggable("Downsampler", 6)) {
        Log.e("Downsampler", "Exception loading inDecodeBounds=" + paramOptions.inJustDecodeBounds + " sample=" + paramOptions.inSampleSize, paramｿ);
      }
    }
    return param〳;
  }
  
  @TargetApi(11)
  private static void ˋ(BitmapFactory.Options paramOptions)
  {
    paramOptions.inTempStorage = null;
    paramOptions.inDither = false;
    paramOptions.inScaled = false;
    paramOptions.inSampleSize = 1;
    paramOptions.inPreferredConfig = null;
    paramOptions.inJustDecodeBounds = false;
    paramOptions.outWidth = 0;
    paramOptions.outHeight = 0;
    paramOptions.outMimeType = null;
    if (11 <= Build.VERSION.SDK_INT)
    {
      paramOptions.inBitmap = null;
      paramOptions.inMutable = true;
    }
  }
  
  private static boolean ˋ(InputStream paramInputStream)
  {
    if (19 <= Build.VERSION.SDK_INT) {
      return true;
    }
    paramInputStream.mark(1024);
    try
    {
      ImageHeaderParser.ImageType localImageType = new ImageHeaderParser(paramInputStream).ﾝ();
      boolean bool = jV.contains(localImageType);
      try
      {
        paramInputStream.reset();
        return bool;
      }
      catch (IOException paramInputStream)
      {
        if (Log.isLoggable("Downsampler", 5)) {
          Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
        }
        return bool;
      }
      return false;
    }
    catch (IOException localIOException)
    {
      if (Log.isLoggable("Downsampler", 5)) {
        Log.w("Downsampler", "Cannot determine the image type from header", localIOException);
      }
    }
    finally
    {
      try
      {
        paramInputStream.reset();
      }
      catch (IOException paramInputStream)
      {
        if (Log.isLoggable("Downsampler", 5)) {
          Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
        }
      }
    }
  }
  
  @TargetApi(11)
  private static BitmapFactory.Options ﻠ()
  {
    try
    {
      synchronized (jW)
      {
        BitmapFactory.Options localOptions = (BitmapFactory.Options)jW.poll();
      }
      ??? = localObject1;
      if (localObject1 == null)
      {
        ??? = new BitmapFactory.Options();
        ˋ((BitmapFactory.Options)???);
      }
      return ???;
    }
    finally {}
  }
  
  protected abstract int ʽ(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public Bitmap ˊ(InputStream paramInputStream, ი paramი, int paramInt1, int paramInt2, ﭝ paramﭝ)
  {
    ﮣ localﮣ = ﮣ.ῖ();
    byte[] arrayOfByte1 = localﮣ.getBytes();
    byte[] arrayOfByte2 = localﮣ.getBytes();
    BitmapFactory.Options localOptions = ﻠ();
    paramInputStream = new 〳(paramInputStream, arrayOfByte2);
    ﻪ localﻪ = ﻪ.ᐝ(paramInputStream);
    Object localObject = new ｿ(localﻪ);
    try
    {
      localﻪ.mark(5242880);
      int i = 0;
      try
      {
        j = new ImageHeaderParser(localﻪ).getOrientation();
        i = j;
        try
        {
          localﻪ.reset();
        }
        catch (IOException localIOException1)
        {
          if (Log.isLoggable("Downsampler", 5)) {
            Log.w("Downsampler", "Cannot reset the input stream", localIOException1);
          }
        }
        localOptions.inTempStorage = arrayOfByte1;
      }
      catch (IOException localIOException2)
      {
        if (Log.isLoggable("Downsampler", 5)) {
          Log.w("Downsampler", "Cannot determine the image orientation from header", localIOException2);
        }
      }
      finally
      {
        try
        {
          localﻪ.reset();
        }
        catch (IOException paramი)
        {
          if (Log.isLoggable("Downsampler", 5)) {
            Log.w("Downsampler", "Cannot reset the input stream", paramი);
          }
        }
      }
      int[] arrayOfInt = ˊ((ｿ)localObject, paramInputStream, localOptions);
      int j = arrayOfInt[0];
      int k = arrayOfInt[1];
      localObject = ˊ((ｿ)localObject, paramInputStream, localOptions, paramი, j, k, ʻ(亅.ᓫ(i), j, k, paramInt1, paramInt2), paramﭝ);
      paramInputStream = localﻪ.ℐ();
      if (paramInputStream != null) {
        throw new RuntimeException(paramInputStream);
      }
      paramInputStream = null;
      if (localObject != null)
      {
        paramﭝ = 亅.ˊ((Bitmap)localObject, paramი, i);
        paramInputStream = paramﭝ;
        if (!localObject.equals(paramﭝ))
        {
          paramInputStream = paramﭝ;
          if (!paramი.ʽ((Bitmap)localObject))
          {
            ((Bitmap)localObject).recycle();
            paramInputStream = paramﭝ;
          }
        }
      }
      return paramInputStream;
    }
    finally
    {
      localﮣ.ˏ(arrayOfByte1);
      localﮣ.ˏ(arrayOfByte2);
      localﻪ.release();
      ˊ(localOptions);
    }
  }
  
  public int[] ˊ(ｿ paramｿ, 〳 param〳, BitmapFactory.Options paramOptions)
  {
    paramOptions.inJustDecodeBounds = true;
    ˋ(paramｿ, param〳, paramOptions);
    paramOptions.inJustDecodeBounds = false;
    return new int[] { paramOptions.outWidth, paramOptions.outHeight };
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´§
 * JD-Core Version:    0.7.0.1
 */