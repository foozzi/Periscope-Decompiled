package o;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;

class ῑ$if
  extends ŀ
{
  private boolean k;
  private boolean l;
  private boolean m;
  private ᵘ n;
  private ᐥ o;
  
  public ῑ$if(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, ڊ.if.dropDownListViewStyle);
    this.l = paramBoolean;
    setCacheColorHint(0);
  }
  
  private void ʾ(View paramView, int paramInt)
  {
    performItemClick(paramView, paramInt, getItemIdAtPosition(paramInt));
  }
  
  private void ˊ(View paramView, int paramInt, float paramFloat1, float paramFloat2)
  {
    this.m = true;
    setPressed(true);
    layoutChildren();
    setSelection(paramInt);
    ˊ(paramInt, paramView, paramFloat1, paramFloat2);
    ٴ(false);
    refreshDrawableState();
  }
  
  private void ᐞ()
  {
    this.m = false;
    setPressed(false);
    drawableStateChanged();
    if (this.n != null)
    {
      this.n.cancel();
      this.n = null;
    }
  }
  
  public boolean hasFocus()
  {
    return (this.l) || (super.hasFocus());
  }
  
  public boolean hasWindowFocus()
  {
    return (this.l) || (super.hasWindowFocus());
  }
  
  public boolean isFocused()
  {
    return (this.l) || (super.isFocused());
  }
  
  public boolean isInTouchMode()
  {
    return ((this.l) && (this.k)) || (super.isInTouchMode());
  }
  
  public boolean ʻ(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    int i = 0;
    int j = ᵧ.ˊ(paramMotionEvent);
    switch (j)
    {
    default: 
      bool1 = bool2;
      paramInt = i;
      break;
    case 3: 
      bool1 = false;
      paramInt = i;
      break;
    case 1: 
      bool1 = false;
    case 2: 
      int i1 = paramMotionEvent.findPointerIndex(paramInt);
      if (i1 < 0)
      {
        bool1 = false;
        paramInt = i;
      }
      else
      {
        paramInt = (int)paramMotionEvent.getX(i1);
        int i2 = (int)paramMotionEvent.getY(i1);
        i1 = pointToPosition(paramInt, i2);
        if (i1 == -1)
        {
          paramInt = 1;
        }
        else
        {
          View localView = getChildAt(i1 - getFirstVisiblePosition());
          ˊ(localView, i1, paramInt, i2);
          bool2 = true;
          bool1 = bool2;
          paramInt = i;
          if (j == 1)
          {
            ʾ(localView, i1);
            paramInt = i;
            bool1 = bool2;
          }
        }
      }
      break;
    }
    if ((!bool1) || (paramInt != 0)) {
      ᐞ();
    }
    if (bool1)
    {
      if (this.o == null) {
        this.o = new ᐥ(this);
      }
      this.o.ͺ(true);
      this.o.onTouch(this, paramMotionEvent);
      return bool1;
    }
    if (this.o != null) {
      this.o.ͺ(false);
    }
    return bool1;
  }
  
  protected boolean ᵅ()
  {
    return (this.m) || (super.ᵅ());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.if
 * JD-Core Version:    0.7.0.1
 */