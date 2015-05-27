package o;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

class ܢ
  implements ᒥ
{
  private final ܢ.ˊ il = new ܢ.ˊ();
  private final Ꮮ<ܢ.if, Bitmap> im = new Ꮮ();
  
  private static String ʼ(Bitmap paramBitmap)
  {
    return ˏ(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
  }
  
  private static String ˏ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return "[" + paramInt1 + "x" + paramInt2 + "], " + paramConfig;
  }
  
  public String toString()
  {
    return "AttributeStrategy:\n  " + this.im;
  }
  
  public int ʻ(Bitmap paramBitmap)
  {
    return ﾕ.ˉ(paramBitmap);
  }
  
  public Bitmap ˋ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    paramConfig = this.il.ʼ(paramInt1, paramInt2, paramConfig);
    return (Bitmap)this.im.ˋ(paramConfig);
  }
  
  public String ˎ(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return ˏ(paramInt1, paramInt2, paramConfig);
  }
  
  public void ˏ(Bitmap paramBitmap)
  {
    ܢ.if localif = this.il.ʼ(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
    this.im.ˊ(localif, paramBitmap);
  }
  
  public String ᐝ(Bitmap paramBitmap)
  {
    return ʼ(paramBitmap);
  }
  
  public Bitmap ᒨ()
  {
    return (Bitmap)this.im.removeLast();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü¢
 * JD-Core Version:    0.7.0.1
 */