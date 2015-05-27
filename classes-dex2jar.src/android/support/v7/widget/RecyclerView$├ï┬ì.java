package android.support.v7.widget;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import o.ᵇ;
import o.ⅼ;
import o.ﺑ;

class RecyclerView$ˍ
  implements Runnable
{
  private boolean bA = false;
  private int bx;
  private int by;
  private boolean bz = false;
  private Interpolator mInterpolator = RecyclerView.ﺜ();
  private ⅼ ᐜ;
  
  public RecyclerView$ˍ(RecyclerView paramRecyclerView)
  {
    this.ᐜ = ⅼ.ˊ(paramRecyclerView.getContext(), RecyclerView.ﺜ());
  }
  
  private int ʼ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = Math.abs(paramInt1);
    int k = Math.abs(paramInt2);
    int i;
    if (j > k) {
      i = 1;
    } else {
      i = 0;
    }
    paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
    paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
    if (i != 0) {
      paramInt1 = this.aB.getWidth();
    } else {
      paramInt1 = this.aB.getHeight();
    }
    paramInt4 = paramInt1 / 2;
    float f3 = Math.min(1.0F, paramInt2 * 1.0F / paramInt1);
    float f1 = paramInt4;
    float f2 = paramInt4;
    f3 = ˊ(f3);
    if (paramInt3 > 0)
    {
      paramInt1 = Math.round(Math.abs((f1 + f2 * f3) / paramInt3) * 1000.0F) * 4;
    }
    else
    {
      if (i != 0) {
        paramInt2 = j;
      } else {
        paramInt2 = k;
      }
      paramInt1 = (int)((paramInt2 / paramInt1 + 1.0F) * 300.0F);
    }
    return Math.min(paramInt1, 2000);
  }
  
  private float ˊ(float paramFloat)
  {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.47123891676382D));
  }
  
  private void ᓲ()
  {
    this.bA = false;
    this.bz = true;
  }
  
  private void ᓵ()
  {
    this.bz = false;
    if (this.bA) {
      ᔿ();
    }
  }
  
  public void run()
  {
    ᓲ();
    RecyclerView.ᐝ(this.aB);
    ⅼ localⅼ = this.ᐜ;
    RecyclerView.ˈ localˈ = RecyclerView.ˏ(this.aB).aM;
    if (localⅼ.computeScrollOffset())
    {
      int i6 = localⅼ.getCurrX();
      int i7 = localⅼ.getCurrY();
      int i4 = i6 - this.bx;
      int i5 = i7 - this.by;
      int k = 0;
      int i = 0;
      int m = 0;
      int i3 = 0;
      this.bx = i6;
      this.by = i7;
      int n = 0;
      int j = 0;
      int i1 = 0;
      int i2 = 0;
      if (RecyclerView.ʻ(this.aB) != null)
      {
        this.aB.ḷ();
        RecyclerView.ˋ(this.aB, true);
        if (i4 != 0)
        {
          i = RecyclerView.ˏ(this.aB).ˊ(i4, this.aB.H, this.aB.ar);
          j = i4 - i;
        }
        k = i3;
        m = i2;
        if (i5 != 0)
        {
          k = RecyclerView.ˏ(this.aB).ˋ(i5, this.aB.H, this.aB.ar);
          m = i5 - k;
        }
        if (RecyclerView.ʼ(this.aB))
        {
          i1 = this.aB.K.getChildCount();
          n = 0;
          while (n < i1)
          {
            View localView = this.aB.K.getChildAt(n);
            Object localObject = this.aB.ᵣ(localView);
            if ((localObject != null) && (((RecyclerView.ˑ)localObject).bH != null))
            {
              localObject = ((RecyclerView.ˑ)localObject).bH.bB;
              i2 = localView.getLeft();
              i3 = localView.getTop();
              if ((i2 != ((View)localObject).getLeft()) || (i3 != ((View)localObject).getTop())) {
                ((View)localObject).layout(i2, i3, ((View)localObject).getWidth() + i2, ((View)localObject).getHeight() + i3);
              }
            }
            n += 1;
          }
        }
        if ((localˈ != null) && (!localˈ.ء()) && (localˈ.isRunning()))
        {
          n = this.aB.ar.getItemCount();
          if (n == 0)
          {
            localˈ.stop();
          }
          else if (localˈ.ر() >= n)
          {
            localˈ.ᕽ(n - 1);
            RecyclerView.ˈ.ˊ(localˈ, i4 - j, i5 - m);
          }
          else
          {
            RecyclerView.ˈ.ˊ(localˈ, i4 - j, i5 - m);
          }
        }
        RecyclerView.ˋ(this.aB, false);
        this.aB.ⁱ(false);
        i1 = m;
        n = j;
        m = k;
        k = i;
      }
      if (!RecyclerView.ʽ(this.aB).isEmpty()) {
        this.aB.invalidate();
      }
      if (ﺑ.ͺ(this.aB) != 2) {
        RecyclerView.ˊ(this.aB, i4, i5);
      }
      if ((n != 0) || (i1 != 0))
      {
        i2 = (int)localⅼ.getCurrVelocity();
        i = 0;
        if (n != i6) {
          if (n < 0) {
            i = -i2;
          } else if (n > 0) {
            i = i2;
          } else {
            i = 0;
          }
        }
        j = 0;
        if (i1 != i7) {
          if (i1 < 0) {
            j = -i2;
          } else if (i1 > 0) {
            j = i2;
          } else {
            j = 0;
          }
        }
        if (ﺑ.ͺ(this.aB) != 2) {
          this.aB.ۥ(i, j);
        }
        if (((i != 0) || (n == i6) || (localⅼ.getFinalX() == 0)) && ((j != 0) || (i1 == i7) || (localⅼ.getFinalY() == 0))) {
          localⅼ.abortAnimation();
        }
      }
      if ((k != 0) || (m != 0)) {
        RecyclerView.ˋ(this.aB, k, m);
      }
      if (!RecyclerView.ͺ(this.aB)) {
        this.aB.invalidate();
      }
      if ((i5 != 0) && (RecyclerView.ˏ(this.aB).ſ()) && (m == i5)) {
        i = 1;
      } else {
        i = 0;
      }
      if ((i4 != 0) && (RecyclerView.ˏ(this.aB).ŗ()) && (k == i4)) {
        j = 1;
      } else {
        j = 0;
      }
      if (((i4 == 0) && (i5 == 0)) || (j != 0) || (i != 0)) {
        i = 1;
      } else {
        i = 0;
      }
      if ((localⅼ.isFinished()) || (i == 0)) {
        RecyclerView.ˋ(this.aB, 0);
      } else {
        ᔿ();
      }
    }
    if ((localˈ != null) && (localˈ.ء())) {
      RecyclerView.ˈ.ˊ(localˈ, 0, 0);
    }
    ᓵ();
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    ʻ(paramInt1, paramInt2, 0, 0);
  }
  
  public void stop()
  {
    this.aB.removeCallbacks(this);
    this.ᐜ.abortAnimation();
  }
  
  public void ʻ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ʽ(paramInt1, paramInt2, ʼ(paramInt1, paramInt2, paramInt3, paramInt4));
  }
  
  public void ʽ(int paramInt1, int paramInt2, int paramInt3)
  {
    ˊ(paramInt1, paramInt2, paramInt3, RecyclerView.ﺜ());
  }
  
  public void ˊ(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
  {
    if (this.mInterpolator != paramInterpolator)
    {
      this.mInterpolator = paramInterpolator;
      this.ᐜ = ⅼ.ˊ(this.aB.getContext(), paramInterpolator);
    }
    RecyclerView.ˋ(this.aB, 2);
    this.by = 0;
    this.bx = 0;
    this.ᐜ.startScroll(0, 0, paramInt1, paramInt2, paramInt3);
    ᔿ();
  }
  
  public void ᒽ(int paramInt1, int paramInt2)
  {
    RecyclerView.ˋ(this.aB, 2);
    this.by = 0;
    this.bx = 0;
    this.ᐜ.fling(0, 0, paramInt1, paramInt2, -2147483648, 2147483647, -2147483648, 2147483647);
    ᔿ();
  }
  
  void ᔿ()
  {
    if (this.bz)
    {
      this.bA = true;
      return;
    }
    this.aB.removeCallbacks(this);
    ﺑ.ˊ(this.aB, this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ë
 * JD-Core Version:    0.7.0.1
 */