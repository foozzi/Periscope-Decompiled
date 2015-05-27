package o;

import android.graphics.Bitmap;
import android.os.Handler;

class ｪ$if
  extends 〱<Bitmap>
{
  private final Handler handler;
  private final int index;
  private final long la;
  private Bitmap lb;
  
  public ｪ$if(Handler paramHandler, int paramInt, long paramLong)
  {
    this.handler = paramHandler;
    this.index = paramInt;
    this.la = paramLong;
  }
  
  public void ˊ(Bitmap paramBitmap, ḟ<? super Bitmap> paramḟ)
  {
    this.lb = paramBitmap;
    paramBitmap = this.handler.obtainMessage(1, this);
    this.handler.sendMessageAtTime(paramBitmap, this.la);
  }
  
  public Bitmap ғ()
  {
    return this.lb;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½ª.if
 * JD-Core Version:    0.7.0.1
 */