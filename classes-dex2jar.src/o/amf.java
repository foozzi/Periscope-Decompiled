package o;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class amf
  extends RecyclerView
{
  private boolean bMY = true;
  
  public amf(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public amf(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public amf(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    setOverScrollMode(2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.bMY) {
      switch (ᵧ.ˊ(paramMotionEvent))
      {
      default: 
        break;
      case 2: 
        return true;
      }
    }
    return (this.bMY) && (super.onTouchEvent(paramMotionEvent));
  }
  
  public void setAllowScroll(boolean paramBoolean)
  {
    this.bMY = paramBoolean;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amf
 * JD-Core Version:    0.7.0.1
 */