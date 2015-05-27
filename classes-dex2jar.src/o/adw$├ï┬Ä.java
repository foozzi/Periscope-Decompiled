package o;

import android.view.View;

class adw$ˎ
  extends ʟ.if
{
  private adw$ˎ(adw paramadw) {}
  
  public int ʴ(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      break;
    case 2131427465: 
      return (int)this.bzs.bzd;
    }
    if (adw.ˊ(this.bzs, paramView)) {
      return paramView.getHeight();
    }
    return 0;
  }
  
  public boolean ʽ(View paramView, int paramInt)
  {
    if (adw.ˊ(this.bzs, paramView)) {
      return (!adw.ˋ(this.bzs, paramView)) && (!paramView.canScrollVertically((int)(adw.ˏ(this.bzs) - adw.ᐝ(this.bzs))));
    }
    return (!adw.ˋ(this.bzs, paramView)) && (paramView == adw.ʻ(this.bzs));
  }
  
  public void ˋ(View paramView, float paramFloat1, float paramFloat2)
  {
    int i;
    boolean bool;
    if (paramView == adw.ʻ(this.bzs))
    {
      if ((paramFloat2 > 0.0F) || ((paramFloat2 == 0.0F) && (paramView.getTop() > (int)this.bzs.bze))) {
        i = 1;
      } else {
        i = 0;
      }
      int j;
      if (i != 0) {
        j = (int)this.bzs.bzd;
      } else {
        j = 0;
      }
      adw.ˋ(this.bzs).ι(paramView.getLeft(), j);
      if (i == 0) {
        bool = true;
      } else {
        bool = false;
      }
    }
    else
    {
      i = this.bzs.getHeight();
      if ((paramFloat2 > 0.0F) || ((paramFloat2 == 0.0F) && (paramView.getTop() > i / 2))) {
        bool = true;
      } else {
        bool = false;
      }
      if (!bool) {
        i -= paramView.getHeight();
      }
      adw.ˋ(this.bzs).ι(paramView.getLeft(), i);
    }
    this.bzs.invalidate();
    if (bool)
    {
      if (adw.ʼ(this.bzs) != null) {
        adw.ʼ(this.bzs).tO();
      }
    }
    else if (adw.ʼ(this.bzs) != null) {
      adw.ʼ(this.bzs).tN();
    }
    adw.ˊ(this.bzs, paramView, bool);
  }
  
  public void ˋ(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f = 0.0F;
    switch (paramView.getId())
    {
    default: 
      break;
    case 2131427465: 
      f = paramInt2 / this.bzs.bzd;
      break;
    }
    if (adw.ˊ(this.bzs, paramView))
    {
      int i = this.bzs.getHeight();
      int j = paramView.getHeight();
      f = (i - paramInt2) / j;
    }
    if (adw.ˊ(this.bzs) != null) {
      adw.ˊ(this.bzs).ˊ(paramView, f, paramInt1, paramInt2, paramInt3, paramInt4);
    }
    ((adw.ˊ)paramView.getLayoutParams()).bzt = f;
    this.bzs.invalidate();
  }
  
  public int ˏ(View paramView, int paramInt1, int paramInt2)
  {
    switch (paramView.getId())
    {
    default: 
      break;
    case 2131427465: 
      if (paramInt1 > this.bzs.bzd) {
        return (int)this.bzs.bzd;
      }
      if (paramInt1 < 0) {
        return 0;
      }
      return paramView.getTop() + (int)(paramInt2 * adw.ˎ(this.bzs));
    }
    if (adw.ˊ(this.bzs, paramView))
    {
      paramInt2 = this.bzs.getHeight();
      return Math.max(paramInt2 - paramView.getHeight(), Math.min(paramInt1, paramInt2));
    }
    return 0;
  }
  
  public void ᕀ(int paramInt)
  {
    if (adw.ˊ(this.bzs) != null) {
      adw.ˊ(this.bzs).ˍ(adw.ˋ(this.bzs).ᕑ(), paramInt);
    }
  }
  
  public int ᵣ(int paramInt)
  {
    int i = paramInt;
    while (i >= 0)
    {
      if (this.bzs.getChildAt(i).getVisibility() != 8) {
        return i;
      }
      i -= 1;
    }
    return paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adw.Ë
 * JD-Core Version:    0.7.0.1
 */