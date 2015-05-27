package o;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;

public abstract class ῑ$ˊ
  implements View.OnTouchListener
{
  private final int[] A = new int[2];
  private final float p;
  private final int q;
  private final int r;
  private final View s;
  private Runnable t;
  private Runnable u;
  private boolean v;
  private boolean z;
  private int ઽ;
  
  public ῑ$ˊ(View paramView)
  {
    this.s = paramView;
    this.p = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    this.q = ViewConfiguration.getTapTimeout();
    this.r = ((this.q + ViewConfiguration.getLongPressTimeout()) / 2);
  }
  
  private boolean ʽ(MotionEvent paramMotionEvent)
  {
    View localView = this.s;
    if (!localView.isEnabled()) {
      return false;
    }
    switch (ᵧ.ˊ(paramMotionEvent))
    {
    default: 
      break;
    case 0: 
      this.ઽ = paramMotionEvent.getPointerId(0);
      this.z = false;
      if (this.t == null) {
        this.t = new ῑ.ˊ.if(this, null);
      }
      localView.postDelayed(this.t, this.q);
      if (this.u == null) {
        this.u = new ῑ.ˊ.ˊ(this, null);
      }
      localView.postDelayed(this.u, this.r);
      break;
    case 2: 
      int i = paramMotionEvent.findPointerIndex(this.ઽ);
      if (i >= 0) {
        if (!ˊ(localView, paramMotionEvent.getX(i), paramMotionEvent.getY(i), this.p))
        {
          ᓐ();
          localView.getParent().requestDisallowInterceptTouchEvent(true);
          return true;
        }
      }
      break;
    case 1: 
    case 3: 
      ᓐ();
    }
    return false;
  }
  
  private static boolean ˊ(View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat1 >= -paramFloat3) && (paramFloat2 >= -paramFloat3) && (paramFloat1 < paramView.getRight() - paramView.getLeft() + paramFloat3) && (paramFloat2 < paramView.getBottom() - paramView.getTop() + paramFloat3);
  }
  
  private boolean ˊ(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = this.A;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(-arrayOfInt[0], -arrayOfInt[1]);
    return true;
  }
  
  private boolean ˋ(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = this.A;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
    return true;
  }
  
  private boolean ͺ(MotionEvent paramMotionEvent)
  {
    View localView = this.s;
    Object localObject = Ӏ();
    if ((localObject == null) || (!((ῑ)localObject).isShowing())) {
      return false;
    }
    localObject = ῑ.ˊ((ῑ)localObject);
    if ((localObject == null) || (!((ῑ.if)localObject).isShown())) {
      return false;
    }
    MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
    ˋ(localView, localMotionEvent);
    ˊ((View)localObject, localMotionEvent);
    boolean bool = ((ῑ.if)localObject).ʻ(localMotionEvent, this.ઽ);
    localMotionEvent.recycle();
    int i = ᵧ.ˊ(paramMotionEvent);
    if ((i != 1) && (i != 3)) {
      i = 1;
    } else {
      i = 0;
    }
    return (bool) && (i != 0);
  }
  
  private void ᓐ()
  {
    if (this.u != null) {
      this.s.removeCallbacks(this.u);
    }
    if (this.t != null) {
      this.s.removeCallbacks(this.t);
    }
  }
  
  private void ᓭ()
  {
    ᓐ();
    View localView = this.s;
    if ((!localView.isEnabled()) || (localView.isLongClickable())) {
      return;
    }
    if (!ײ()) {
      return;
    }
    localView.getParent().requestDisallowInterceptTouchEvent(true);
    long l = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
    localView.onTouchEvent(localMotionEvent);
    localMotionEvent.recycle();
    this.v = true;
    this.z = true;
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool3 = this.v;
    boolean bool2;
    if (bool3)
    {
      if (this.z) {
        bool2 = ͺ(paramMotionEvent);
      } else if ((ͺ(paramMotionEvent)) || (!ᑉ())) {
        bool2 = true;
      } else {
        bool2 = false;
      }
    }
    else
    {
      boolean bool1;
      if ((ʽ(paramMotionEvent)) && (ײ())) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      bool2 = bool1;
      if (bool1)
      {
        long l = SystemClock.uptimeMillis();
        paramView = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        this.s.onTouchEvent(paramView);
        paramView.recycle();
        bool2 = bool1;
      }
    }
    this.v = bool2;
    return (bool2) || (bool3);
  }
  
  public abstract ῑ Ӏ();
  
  protected boolean ײ()
  {
    ῑ localῑ = Ӏ();
    if ((localῑ != null) && (!localῑ.isShowing())) {
      localῑ.show();
    }
    return true;
  }
  
  protected boolean ᑉ()
  {
    ῑ localῑ = Ӏ();
    if ((localῑ != null) && (localῑ.isShowing())) {
      localῑ.dismiss();
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.Ë
 * JD-Core Version:    0.7.0.1
 */