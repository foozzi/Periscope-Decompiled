package o;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

class ι$ˊ
  implements ι.if
{
  private static final int Ǐ = ;
  private static final int ǐ = ViewConfiguration.getTapTimeout();
  private static final int Ȋ = ViewConfiguration.getDoubleTapTimeout();
  private final Handler mHandler;
  private int ŗ;
  private int ſ;
  private int Ɨ;
  private int ƚ;
  private final GestureDetector.OnGestureListener ʅ;
  private GestureDetector.OnDoubleTapListener ί;
  private boolean ד;
  private boolean ױ;
  private boolean ڌ;
  private boolean ڍ;
  private boolean ۃ;
  private MotionEvent ৳;
  private MotionEvent ฯ;
  private boolean ๅ;
  private float ᐞ;
  private float ᓐ;
  private float ᓭ;
  private float ᓯ;
  private boolean ᓱ;
  private VelocityTracker ᓴ;
  
  public ι$ˊ(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener, Handler paramHandler)
  {
    if (paramHandler != null) {
      this.mHandler = new ι.ˊ.if(this, paramHandler);
    } else {
      this.mHandler = new ι.ˊ.if(this);
    }
    this.ʅ = paramOnGestureListener;
    if ((paramOnGestureListener instanceof GestureDetector.OnDoubleTapListener)) {
      setOnDoubleTapListener((GestureDetector.OnDoubleTapListener)paramOnGestureListener);
    }
    ˊ(paramContext);
  }
  
  private void cancel()
  {
    this.mHandler.removeMessages(1);
    this.mHandler.removeMessages(2);
    this.mHandler.removeMessages(3);
    this.ᓴ.recycle();
    this.ᓴ = null;
    this.ๅ = false;
    this.ד = false;
    this.ڍ = false;
    this.ۃ = false;
    this.ױ = false;
    if (this.ڌ) {
      this.ڌ = false;
    }
  }
  
  private void ˊ(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null");
    }
    if (this.ʅ == null) {
      throw new IllegalArgumentException("OnGestureListener must not be null");
    }
    this.ᓱ = true;
    paramContext = ViewConfiguration.get(paramContext);
    int i = paramContext.getScaledTouchSlop();
    int j = paramContext.getScaledDoubleTapSlop();
    this.Ɨ = paramContext.getScaledMinimumFlingVelocity();
    this.ƚ = paramContext.getScaledMaximumFlingVelocity();
    this.ŗ = (i * i);
    this.ſ = (j * j);
  }
  
  private boolean ˊ(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, MotionEvent paramMotionEvent3)
  {
    if (!this.ۃ) {
      return false;
    }
    if (paramMotionEvent3.getEventTime() - paramMotionEvent2.getEventTime() > Ȋ) {
      return false;
    }
    int i = (int)paramMotionEvent1.getX() - (int)paramMotionEvent3.getX();
    int j = (int)paramMotionEvent1.getY() - (int)paramMotionEvent3.getY();
    return i * i + j * j < this.ſ;
  }
  
  private void ᐟ()
  {
    this.mHandler.removeMessages(3);
    this.ױ = false;
    this.ڌ = true;
    this.ʅ.onLongPress(this.৳);
  }
  
  private void יּ()
  {
    this.mHandler.removeMessages(1);
    this.mHandler.removeMessages(2);
    this.mHandler.removeMessages(3);
    this.ๅ = false;
    this.ڍ = false;
    this.ۃ = false;
    this.ױ = false;
    if (this.ڌ) {
      this.ڌ = false;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getAction();
    if (this.ᓴ == null) {
      this.ᓴ = VelocityTracker.obtain();
    }
    this.ᓴ.addMovement(paramMotionEvent);
    int i;
    if ((i1 & 0xFF) == 6) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      k = ᵧ.ˋ(paramMotionEvent);
    } else {
      k = -1;
    }
    float f2 = 0.0F;
    float f1 = 0.0F;
    int n = ᵧ.ˎ(paramMotionEvent);
    int m = 0;
    while (m < n)
    {
      if (k != m)
      {
        f2 += ᵧ.ˎ(paramMotionEvent, m);
        f1 += ᵧ.ˏ(paramMotionEvent, m);
      }
      m += 1;
    }
    if (i != 0) {
      i = n - 1;
    } else {
      i = n;
    }
    f2 /= i;
    f1 /= i;
    boolean bool2 = false;
    boolean bool3 = false;
    int k = 0;
    int j;
    switch (i1 & 0xFF)
    {
    default: 
      return false;
    case 5: 
      this.ᐞ = f2;
      this.ᓭ = f2;
      this.ᓐ = f1;
      this.ᓯ = f1;
      יּ();
      return false;
    case 6: 
      this.ᐞ = f2;
      this.ᓭ = f2;
      this.ᓐ = f1;
      this.ᓯ = f1;
      this.ᓴ.computeCurrentVelocity(1000, this.ƚ);
      k = ᵧ.ˋ(paramMotionEvent);
      i = ᵧ.ˋ(paramMotionEvent, k);
      f1 = ﹻ.ˊ(this.ᓴ, i);
      f2 = ﹻ.ˋ(this.ᓴ, i);
      i = 0;
      while (i < n)
      {
        if (i != k)
        {
          m = ᵧ.ˋ(paramMotionEvent, i);
          if (f1 * ﹻ.ˊ(this.ᓴ, m) + f2 * ﹻ.ˋ(this.ᓴ, m) < 0.0F)
          {
            this.ᓴ.clear();
            break;
          }
        }
        i += 1;
      }
      return false;
    case 0: 
      i = k;
      boolean bool1;
      if (this.ί != null)
      {
        bool2 = this.mHandler.hasMessages(3);
        if (bool2) {
          this.mHandler.removeMessages(3);
        }
        if ((this.৳ != null) && (this.ฯ != null) && (bool2) && (ˊ(this.৳, this.ฯ, paramMotionEvent)))
        {
          this.ๅ = true;
          bool1 = this.ί.onDoubleTap(this.৳) | false | this.ί.onDoubleTapEvent(paramMotionEvent);
        }
        else
        {
          this.mHandler.sendEmptyMessageDelayed(3, Ȋ);
          bool1 = k;
        }
      }
      this.ᐞ = f2;
      this.ᓭ = f2;
      this.ᓐ = f1;
      this.ᓯ = f1;
      if (this.৳ != null) {
        this.৳.recycle();
      }
      this.৳ = MotionEvent.obtain(paramMotionEvent);
      this.ڍ = true;
      this.ۃ = true;
      this.ד = true;
      this.ڌ = false;
      this.ױ = false;
      if (this.ᓱ)
      {
        this.mHandler.removeMessages(2);
        this.mHandler.sendEmptyMessageAtTime(2, this.৳.getDownTime() + ǐ + Ǐ);
      }
      this.mHandler.sendEmptyMessageAtTime(1, this.৳.getDownTime() + ǐ);
      return bool1 | this.ʅ.onDown(paramMotionEvent);
    case 2: 
      if (this.ڌ) {
        return false;
      }
      float f3 = this.ᐞ - f2;
      float f4 = this.ᓐ - f1;
      if (this.ๅ) {
        return this.ί.onDoubleTapEvent(paramMotionEvent) | false;
      }
      if (this.ڍ)
      {
        j = (int)(f2 - this.ᓭ);
        k = (int)(f1 - this.ᓯ);
        j = j * j + k * k;
        if (j > this.ŗ)
        {
          bool2 = this.ʅ.onScroll(this.৳, paramMotionEvent, f3, f4);
          this.ᐞ = f2;
          this.ᓐ = f1;
          this.ڍ = false;
          this.mHandler.removeMessages(3);
          this.mHandler.removeMessages(1);
          this.mHandler.removeMessages(2);
        }
        if (j > this.ŗ) {
          this.ۃ = false;
        }
        return bool2;
      }
      if ((Math.abs(f3) >= 1.0F) || (Math.abs(f4) >= 1.0F))
      {
        bool2 = this.ʅ.onScroll(this.৳, paramMotionEvent, f3, f4);
        this.ᐞ = f2;
        this.ᓐ = f1;
        return bool2;
      }
      break;
    case 1: 
      this.ד = false;
      MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
      if (this.ๅ)
      {
        bool2 = this.ί.onDoubleTapEvent(paramMotionEvent) | false;
      }
      else if (this.ڌ)
      {
        this.mHandler.removeMessages(3);
        this.ڌ = false;
        bool2 = bool3;
      }
      else if (this.ڍ)
      {
        bool3 = this.ʅ.onSingleTapUp(paramMotionEvent);
        bool2 = bool3;
        if (this.ױ)
        {
          bool2 = bool3;
          if (this.ί != null)
          {
            this.ί.onSingleTapConfirmed(paramMotionEvent);
            bool2 = bool3;
          }
        }
      }
      else
      {
        VelocityTracker localVelocityTracker = this.ᓴ;
        j = ᵧ.ˋ(paramMotionEvent, 0);
        localVelocityTracker.computeCurrentVelocity(1000, this.ƚ);
        f1 = ﹻ.ˋ(localVelocityTracker, j);
        f2 = ﹻ.ˊ(localVelocityTracker, j);
        if (Math.abs(f1) <= this.Ɨ)
        {
          bool2 = bool3;
          if (Math.abs(f2) <= this.Ɨ) {}
        }
        else
        {
          bool2 = this.ʅ.onFling(this.৳, paramMotionEvent, f2, f1);
        }
      }
      if (this.ฯ != null) {
        this.ฯ.recycle();
      }
      this.ฯ = localMotionEvent;
      if (this.ᓴ != null)
      {
        this.ᓴ.recycle();
        this.ᓴ = null;
      }
      this.ๅ = false;
      this.ױ = false;
      this.mHandler.removeMessages(1);
      this.mHandler.removeMessages(2);
      return bool2;
    case 3: 
      cancel();
    }
    return false;
  }
  
  public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener paramOnDoubleTapListener)
  {
    this.ί = paramOnDoubleTapListener;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Î¹.Ë
 * JD-Core Version:    0.7.0.1
 */