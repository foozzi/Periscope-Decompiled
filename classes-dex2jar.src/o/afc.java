package o;

import android.os.Handler;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;

class afc
  extends GestureDetector.SimpleOnGestureListener
{
  afc(aet paramaet) {}
  
  public boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    vi.ˊ(vi.if.bmH);
    aet.ˑ(this.bBV);
    return true;
  }
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (aet.ˏ(this.bBV).getAlpha() < 1.0F)
    {
      aet.ˎ(this.bBV).removeCallbacks(aet.ˋ(this.bBV));
      aet.ˏ(this.bBV).animate().alpha(1.0F);
      aet.ʿ(this.bBV);
    }
    else
    {
      aet.ˏ(this.bBV).animate().alpha(0.0F);
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afc
 * JD-Core Version:    0.7.0.1
 */