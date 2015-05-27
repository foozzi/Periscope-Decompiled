package android.support.v7.widget;

import android.util.Log;
import android.view.animation.Interpolator;

public class RecyclerView$ˈ$if
{
  private int bi;
  private int bj;
  private int bk;
  private boolean bl = false;
  private int bm = 0;
  private Interpolator mInterpolator;
  
  public RecyclerView$ˈ$if(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, -2147483648, null);
  }
  
  public RecyclerView$ˈ$if(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    this.bi = paramInt1;
    this.bj = paramInt2;
    this.bk = paramInt3;
    this.mInterpolator = paramInterpolator;
  }
  
  private void ٴ(RecyclerView paramRecyclerView)
  {
    if (this.bl)
    {
      ڎ();
      if (this.mInterpolator == null)
      {
        if (this.bk == -2147483648) {
          RecyclerView.ᐧ(paramRecyclerView).smoothScrollBy(this.bi, this.bj);
        } else {
          RecyclerView.ᐧ(paramRecyclerView).ʽ(this.bi, this.bj, this.bk);
        }
      }
      else {
        RecyclerView.ᐧ(paramRecyclerView).ˊ(this.bi, this.bj, this.bk, this.mInterpolator);
      }
      this.bm += 1;
      if (this.bm > 10) {
        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
      }
      this.bl = false;
      return;
    }
    this.bm = 0;
  }
  
  private void ڎ()
  {
    if ((this.mInterpolator != null) && (this.bk < 1)) {
      throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
    }
    if (this.bk < 1) {
      throw new IllegalStateException("Scroll duration must be a positive number");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë.if
 * JD-Core Version:    0.7.0.1
 */