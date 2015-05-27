package o;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class ᒣ
  implements ი
{
  private static final Bitmap.Config iy = Bitmap.Config.ARGB_8888;
  private final Set<Bitmap.Config> iA;
  private final int iB;
  private final ᒣ.if iC;
  private int iD;
  private int iE;
  private int iF;
  private int iG;
  private int iH;
  private final ᒥ iz;
  private int ᴾ;
  
  public ᒣ(int paramInt)
  {
    this(paramInt, ᴳ(), ᴼ());
  }
  
  ᒣ(int paramInt, ᒥ paramᒥ, Set<Bitmap.Config> paramSet)
  {
    this.iB = paramInt;
    this.ᴾ = paramInt;
    this.iz = paramᒥ;
    this.iA = paramSet;
    this.iC = new ᒣ.ˊ(null);
  }
  
  private void dump()
  {
    if (Log.isLoggable("LruBitmapPool", 2)) {
      ᴮ();
    }
  }
  
  private void trimToSize(int paramInt)
  {
    try
    {
      while (this.iD > paramInt)
      {
        Bitmap localBitmap = this.iz.ᒨ();
        if (localBitmap == null)
        {
          if (Log.isLoggable("LruBitmapPool", 5))
          {
            Log.w("LruBitmapPool", "Size mismatch, resetting");
            ᴮ();
          }
          this.iD = 0;
          return;
        }
        this.iC.ι(localBitmap);
        this.iD -= this.iz.ʻ(localBitmap);
        localBitmap.recycle();
        this.iH += 1;
        if (Log.isLoggable("LruBitmapPool", 3)) {
          Log.d("LruBitmapPool", "Evicting bitmap=" + this.iz.ᐝ(localBitmap));
        }
        dump();
      }
      return;
    }
    finally {}
  }
  
  private void ᴧ()
  {
    trimToSize(this.ᴾ);
  }
  
  private void ᴮ()
  {
    Log.v("LruBitmapPool", "Hits=" + this.iE + ", misses=" + this.iF + ", puts=" + this.iG + ", evictions=" + this.iH + ", currentSize=" + this.iD + ", maxSize=" + this.ᴾ + "\nStrategy=" + this.iz);
  }
  
  private static ᒥ ᴳ()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return new ᒪ();
    }
    return new ܢ();
  }
  
  private static Set<Bitmap.Config> ᴼ()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(Arrays.asList(Bitmap.Config.values()));
    if (Build.VERSION.SDK_INT >= 19) {
      localHashSet.add(null);
    }
    return Collections.unmodifiableSet(localHashSet);
  }
  
  @TargetApi(12)
  public Bitmap ʽ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    try
    {
      ᒥ localᒥ = this.iz;
      if (paramConfig != null) {
        localObject = paramConfig;
      } else {
        localObject = iy;
      }
      Object localObject = localᒥ.ˋ(paramInt1, paramInt2, (Bitmap.Config)localObject);
      if (localObject == null)
      {
        if (Log.isLoggable("LruBitmapPool", 3)) {
          Log.d("LruBitmapPool", "Missing bitmap=" + this.iz.ˎ(paramInt1, paramInt2, paramConfig));
        }
        this.iF += 1;
      }
      else
      {
        this.iE += 1;
        this.iD -= this.iz.ʻ((Bitmap)localObject);
        this.iC.ι((Bitmap)localObject);
        if (Build.VERSION.SDK_INT >= 12) {
          ((Bitmap)localObject).setHasAlpha(true);
        }
      }
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Get bitmap=" + this.iz.ˎ(paramInt1, paramInt2, paramConfig));
      }
      dump();
      return localObject;
    }
    finally {}
  }
  
  public boolean ʽ(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {}
    try
    {
      throw new NullPointerException("Bitmap must not be null");
    }
    finally {}
    if ((!paramBitmap.isMutable()) || (this.iz.ʻ(paramBitmap) > this.ᴾ) || (!this.iA.contains(paramBitmap.getConfig())))
    {
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + this.iz.ᐝ(paramBitmap) + ", is mutable: " + paramBitmap.isMutable() + ", is allowed config: " + this.iA.contains(paramBitmap.getConfig()));
      }
      return false;
    }
    int i = this.iz.ʻ(paramBitmap);
    this.iz.ˏ(paramBitmap);
    this.iC.ͺ(paramBitmap);
    this.iG += 1;
    this.iD += i;
    if (Log.isLoggable("LruBitmapPool", 2)) {
      Log.v("LruBitmapPool", "Put bitmap in pool=" + this.iz.ᐝ(paramBitmap));
    }
    dump();
    ᴧ();
    return true;
  }
  
  public Bitmap ˋ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    try
    {
      paramConfig = ʽ(paramInt1, paramInt2, paramConfig);
      if (paramConfig != null) {
        paramConfig.eraseColor(0);
      }
      return paramConfig;
    }
    finally {}
  }
  
  public void ᒪ()
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "clearMemory");
    }
    trimToSize(0);
  }
  
  @SuppressLint({"InlinedApi"})
  public void ﹼ(int paramInt)
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "trimMemory, level=" + paramInt);
    }
    if (paramInt >= 60)
    {
      ᒪ();
      return;
    }
    if (paramInt >= 40) {
      trimToSize(this.ᴾ / 2);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á£
 * JD-Core Version:    0.7.0.1
 */