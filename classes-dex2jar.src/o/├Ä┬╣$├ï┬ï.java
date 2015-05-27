package o;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

class ι$ˋ
  implements ι.if
{
  private final GestureDetector ᖦ;
  
  public ι$ˋ(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    this.ᖦ = new GestureDetector(paramContext, paramOnGestureListener, paramHandler);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return this.ᖦ.onTouchEvent(paramMotionEvent);
  }
  
  public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    this.ᖦ.setOnDoubleTapListener(paramOnDoubleTapListener);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î¹.Ë
 * JD-Core Version:    0.7.0.1
 */