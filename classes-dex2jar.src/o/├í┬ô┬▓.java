package o;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.widget.ImageView;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class ᓲ
{
  private static volatile ᓲ dW;
  private final ﺬ eB;
  private final ʷ eC;
  private final ი eD;
  private final ṟ eE;
  private final ﭝ eF;
  private final ℐ eG = new ℐ();
  private final ҭ eH = new ҭ();
  private final ᓼ eI;
  private final ᙇ eJ;
  private final ʋ eK;
  private final ᵚ eL;
  private final ʋ eM;
  private final Handler eN;
  private final ﭨ eO;
  
  ᓲ(ʷ paramʷ, ṟ paramṟ, ი paramი, Context paramContext, ﭝ paramﭝ)
  {
    this.eC = paramʷ;
    this.eD = paramი;
    this.eE = paramṟ;
    this.eF = paramﭝ;
    this.eB = new ﺬ(paramContext);
    this.eN = new Handler(Looper.getMainLooper());
    this.eO = new ﭨ(paramṟ, paramი, paramﭝ);
    this.eI = new ᓼ();
    paramʷ = new 〵(paramი, paramﭝ);
    this.eI.ˊ(InputStream.class, Bitmap.class, paramʷ);
    paramṟ = new ᵍ(paramი, paramﭝ);
    this.eI.ˊ(ParcelFileDescriptor.class, Bitmap.class, paramṟ);
    paramʷ = new ẍ(paramʷ, paramṟ);
    this.eI.ˊ(ﾌ.class, Bitmap.class, paramʷ);
    paramṟ = new ﻩ(paramContext, paramი);
    this.eI.ˊ(InputStream.class, ﻠ.class, paramṟ);
    this.eI.ˊ(ﾌ.class, ĸ.class, new Υ(paramʷ, paramṟ, paramი));
    this.eI.ˊ(InputStream.class, File.class, new ﱢ());
    ˊ(File.class, ParcelFileDescriptor.class, new ѓ.if());
    ˊ(File.class, InputStream.class, new ە.if());
    ˊ(Integer.TYPE, ParcelFileDescriptor.class, new װ.if());
    ˊ(Integer.TYPE, InputStream.class, new ণ.if());
    ˊ(Integer.class, ParcelFileDescriptor.class, new װ.if());
    ˊ(Integer.class, InputStream.class, new ণ.if());
    ˊ(String.class, ParcelFileDescriptor.class, new ه.if());
    ˊ(String.class, InputStream.class, new จ.if());
    ˊ(Uri.class, ParcelFileDescriptor.class, new ډ.if());
    ˊ(Uri.class, InputStream.class, new แ.if());
    ˊ(URL.class, InputStream.class, new ๆ.if());
    ˊ(ﻣ.class, InputStream.class, new ږ.if());
    ˊ([B.class, InputStream.class, new ڗ.if());
    this.eH.ˊ(Bitmap.class, ᵝ.class, new ҁ(paramContext.getResources(), paramი));
    this.eH.ˊ(ĸ.class, לּ.class, new ϟ(new ҁ(paramContext.getResources(), paramი)));
    this.eJ = new ᙇ(paramი);
    this.eK = new ʋ(paramი, this.eJ);
    this.eL = new ᵚ(paramი);
    this.eM = new ʋ(paramი, this.eL);
  }
  
  public static ᓲ ˉ(Context paramContext)
  {
    if (dW == null) {
      try
      {
        if (dW == null)
        {
          paramContext = paramContext.getApplicationContext();
          Object localObject = new ᓷ(paramContext).Ꭸ();
          ᓵ localᓵ = new ᓵ(paramContext);
          Iterator localIterator = ((List)localObject).iterator();
          while (localIterator.hasNext()) {
            ((ᓶ)localIterator.next()).ˊ(paramContext, localᓵ);
          }
          dW = localᓵ.ᓳ();
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            ((ᓶ)((Iterator)localObject).next()).ˊ(paramContext, dW);
          }
        }
      }
      finally {}
    }
    return dW;
  }
  
  public static <T> ɽ<T, InputStream> ˊ(Class<T> paramClass, Context paramContext)
  {
    return ˊ(paramClass, InputStream.class, paramContext);
  }
  
  public static <T, Y> ɽ<T, Y> ˊ(Class<T> paramClass, Class<Y> paramClass1, Context paramContext)
  {
    if (paramClass == null)
    {
      if (Log.isLoggable("Glide", 3)) {
        Log.d("Glide", "Unable to load null model, setting placeholder only");
      }
      return null;
    }
    return ˉ(paramContext).ᒧ().ˎ(paramClass, paramClass1);
  }
  
  public static <T> ɽ<T, ParcelFileDescriptor> ˋ(Class<T> paramClass, Context paramContext)
  {
    return ˊ(paramClass, ParcelFileDescriptor.class, paramContext);
  }
  
  public static ᕻ ˌ(Context paramContext)
  {
    return Ꭸ.ร().ـ(paramContext);
  }
  
  public static void ˎ(ﭩ<?> paramﭩ)
  {
    ﾕ.בּ();
    ᔨ localᔨ = paramﭩ.ṝ();
    if (localᔨ != null)
    {
      localᔨ.clear();
      paramﭩ.ʻ(null);
    }
  }
  
  public static ᕻ ᐝ(Activity paramActivity)
  {
    return Ꭸ.ร().ʻ(paramActivity);
  }
  
  private ﺬ ᒧ()
  {
    return this.eB;
  }
  
  <Z, R> ғ<Z, R> ˊ(Class<Z> paramClass, Class<R> paramClass1)
  {
    return this.eH.ʼ(paramClass, paramClass1);
  }
  
  <R> ﭩ<R> ˊ(ImageView paramImageView, Class<R> paramClass)
  {
    return this.eG.ˋ(paramImageView, paramClass);
  }
  
  public <T, Y> void ˊ(Class<T> paramClass, Class<Y> paramClass1, ʃ<T, Y> paramʃ)
  {
    paramClass = this.eB.ˋ(paramClass, paramClass1, paramʃ);
    if (paramClass != null) {
      paramClass.ﮃ();
    }
  }
  
  <T, Z> ᓹ<T, Z> ˋ(Class<T> paramClass, Class<Z> paramClass1)
  {
    return this.eI.ʽ(paramClass, paramClass1);
  }
  
  public ი Ꮀ()
  {
    return this.eD;
  }
  
  ʷ Ꮮ()
  {
    return this.eC;
  }
  
  ʋ ᒣ()
  {
    return this.eK;
  }
  
  ʋ ᒥ()
  {
    return this.eM;
  }
  
  public void ᒪ()
  {
    this.eD.ᒪ();
    this.eE.ᒪ();
  }
  
  public void ﹼ(int paramInt)
  {
    this.eD.ﹼ(paramInt);
    this.eE.ﹼ(paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á²
 * JD-Core Version:    0.7.0.1
 */