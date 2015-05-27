package o;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.renderscript.Allocation;
import android.renderscript.Allocation.MipmapControl;
import android.renderscript.Element;
import android.renderscript.ScriptIntrinsicBlur;

public class akh
{
  public static Bitmap ˊ(Context paramContext, Bitmap paramBitmap, int paramInt)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Don't blur on the main thread.");
    }
    Bitmap localBitmap = paramBitmap.copy(paramBitmap.getConfig(), true);
    paramContext = akn.ᒡ(paramContext);
    paramBitmap = Allocation.createFromBitmap(paramContext, paramBitmap, Allocation.MipmapControl.MIPMAP_NONE, 1);
    Allocation localAllocation = Allocation.createFromBitmap(paramContext, localBitmap);
    paramContext = ScriptIntrinsicBlur.create(paramContext, Element.U8_4(paramContext));
    paramContext.setRadius(paramInt);
    paramContext.setInput(paramBitmap);
    paramContext.forEach(localAllocation);
    localAllocation.copyTo(localBitmap);
    return localBitmap;
  }
  
  public static void ˊ(Context paramContext, Bitmap paramBitmap, int paramInt, akh.ˊ paramˊ)
  {
    new if(paramContext, paramBitmap, paramInt, paramˊ).start();
  }
  
  static class if
    extends Thread
  {
    private final Bitmap bIk;
    private final int bIl;
    private final akh.ˊ bIm;
    private final Context mContext;
    
    public if(Context paramContext, Bitmap paramBitmap, int paramInt, akh.ˊ paramˊ)
    {
      this.mContext = paramContext;
      this.bIk = paramBitmap;
      this.bIl = paramInt;
      this.bIm = paramˊ;
    }
    
    public void run()
    {
      Bitmap localBitmap = akh.ˊ(this.mContext, this.bIk, this.bIl);
      if (this.bIm != null) {
        new Handler(Looper.getMainLooper()).post(new aki(this, localBitmap));
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akh
 * JD-Core Version:    0.7.0.1
 */