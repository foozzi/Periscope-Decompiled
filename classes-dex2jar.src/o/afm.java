package o;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class afm
  extends FrameLayout
{
  private ι bCt;
  
  public afm(Context paramContext)
  {
    super(paramContext);
  }
  
  public afm(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public afm(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i;
    if ((this.bCt != null) && (this.bCt.onTouchEvent(paramMotionEvent))) {
      i = 1;
    } else {
      i = 0;
    }
    return (super.onTouchEvent(paramMotionEvent)) || (i != 0);
  }
  
  public void setGestureListener(GestureDetector.SimpleOnGestureListener paramSimpleOnGestureListener)
  {
    this.bCt = new ι(getContext(), paramSimpleOnGestureListener);
    this.bCt.setOnDoubleTapListener(paramSimpleOnGestureListener);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.afm
 * JD-Core Version:    0.7.0.1
 */