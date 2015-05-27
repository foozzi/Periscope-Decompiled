package o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import java.util.ArrayList;

public class ᓴ
  extends ᴱ
  implements ˤ.if
{
  private View ﺟ;
  private boolean ﺧ;
  private boolean ﻋ;
  private int ﻌ;
  private int ﻢ;
  private int Ｆ;
  private boolean Ｉ;
  private boolean ｌ;
  private boolean ｎ;
  private boolean ｒ;
  private int ｓ;
  private final SparseBooleanArray ｦ = new SparseBooleanArray();
  private View ｳ;
  private ᓴ.ˏ ｷ;
  private ᓴ.if ｸ;
  private ᓴ.ˋ ｹ;
  private ᓴ.ˊ ｽ;
  final ᓴ.aux ﾁ = new ᓴ.aux(this, null);
  int ﾊ;
  
  public ᓴ(Context paramContext)
  {
    super(paramContext, ڊ.ᐝ.abc_action_menu_layout, ڊ.ᐝ.abc_action_menu_item_layout);
  }
  
  private View ᐝ(MenuItem paramMenuItem)
  {
    ViewGroup localViewGroup = (ViewGroup)this.Ĩ;
    if (localViewGroup == null) {
      return null;
    }
    int j = localViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = localViewGroup.getChildAt(i);
      if (((localView instanceof ᵊ.if)) && (((ᵊ.if)localView).ʺ() == paramMenuItem)) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  public boolean hideOverflowMenu()
  {
    if ((this.ｹ != null) && (this.Ĩ != null))
    {
      ((View)this.Ĩ).removeCallbacks(this.ｹ);
      this.ｹ = null;
      return true;
    }
    ᓴ.ˏ localˏ = this.ｷ;
    if (localˏ != null)
    {
      localˏ.dismiss();
      return true;
    }
    return false;
  }
  
  public boolean isOverflowMenuShowing()
  {
    return (this.ｷ != null) && (this.ｷ.isShowing());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (!this.Ｉ) {
      this.Ｆ = this.mContext.getResources().getInteger(ڊ.aux.abc_max_action_buttons);
    }
    if (this.ｼ != null) {
      this.ｼ.ˑ(true);
    }
  }
  
  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    this.ｒ = paramBoolean;
  }
  
  public boolean showOverflowMenu()
  {
    if ((this.ﺧ) && (!isOverflowMenuShowing()) && (this.ｼ != null) && (this.Ĩ != null) && (this.ｹ == null) && (!this.ｼ.丶().isEmpty()))
    {
      this.ｹ = new ᓴ.ˋ(this, new ᓴ.ˏ(this, this.mContext, this.ｼ, this.ﺟ, true));
      ((View)this.Ĩ).post(this.ｹ);
      super.ˊ(null);
      return true;
    }
    return false;
  }
  
  public void ʾ(int paramInt, boolean paramBoolean)
  {
    this.ﻌ = paramInt;
    this.ｌ = paramBoolean;
    this.ｎ = true;
  }
  
  public void ˈ(boolean paramBoolean)
  {
    Object localObject = (ViewGroup)((View)this.Ĩ).getParent();
    if (localObject != null) {
      ᐦ.beginDelayedTransition((ViewGroup)localObject);
    }
    super.ˈ(paramBoolean);
    ((View)this.Ĩ).requestLayout();
    if (this.ｼ != null)
    {
      localObject = this.ｼ.ⅰ();
      j = ((ArrayList)localObject).size();
      i = 0;
      while (i < j)
      {
        ˤ localˤ = ((ᵃ)((ArrayList)localObject).get(i)).ϊ();
        if (localˤ != null) {
          localˤ.ˊ(this);
        }
        i += 1;
      }
    }
    if (this.ｼ != null) {
      localObject = this.ｼ.丶();
    } else {
      localObject = null;
    }
    int j = 0;
    int i = j;
    if (this.ﺧ)
    {
      i = j;
      if (localObject != null)
      {
        i = ((ArrayList)localObject).size();
        if (i == 1)
        {
          if (!((ᵃ)((ArrayList)localObject).get(0)).isActionViewExpanded()) {
            i = 1;
          } else {
            i = 0;
          }
        }
        else if (i > 0) {
          i = 1;
        } else {
          i = 0;
        }
      }
    }
    if (i != 0)
    {
      if (this.ﺟ == null) {
        this.ﺟ = new ᓴ.ˎ(this, this.ｯ);
      }
      localObject = (ViewGroup)this.ﺟ.getParent();
      if (localObject != this.Ĩ)
      {
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(this.ﺟ);
        }
        localObject = (ᖦ)this.Ĩ;
        ((ᖦ)localObject).addView(this.ﺟ, ((ᖦ)localObject).ﭕ());
      }
    }
    else if ((this.ﺟ != null) && (this.ﺟ.getParent() == this.Ĩ))
    {
      ((ViewGroup)this.Ĩ).removeView(this.ﺟ);
    }
    ((ᖦ)this.Ĩ).setOverflowReserved(this.ﺧ);
  }
  
  public View ˊ(ᵃ paramᵃ, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramᵃ.getActionView();
    if ((localView == null) || (paramᵃ.ג())) {
      localView = super.ˊ(paramᵃ, paramView, paramViewGroup);
    }
    int i;
    if (paramᵃ.isActionViewExpanded()) {
      i = 8;
    } else {
      i = 0;
    }
    localView.setVisibility(i);
    paramᵃ = (ᖦ)paramViewGroup;
    paramView = localView.getLayoutParams();
    if (!paramᵃ.checkLayoutParams(paramView)) {
      localView.setLayoutParams(paramᵃ.ˊ(paramView));
    }
    return localView;
  }
  
  public void ˊ(Context paramContext, ᵁ paramᵁ)
  {
    super.ˊ(paramContext, paramᵁ);
    paramᵁ = paramContext.getResources();
    paramContext = ᒄ.ˏ(paramContext);
    if (!this.ﻋ) {
      this.ﺧ = paramContext.ᵧ();
    }
    if (!this.ｎ) {
      this.ﻌ = paramContext.וּ();
    }
    if (!this.Ｉ) {
      this.Ｆ = paramContext.ᵞ();
    }
    int i = this.ﻌ;
    if (this.ﺧ)
    {
      if (this.ﺟ == null)
      {
        this.ﺟ = new ᓴ.ˎ(this, this.ｯ);
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.ﺟ.measure(j, j);
      }
      i -= this.ﺟ.getMeasuredWidth();
    }
    else
    {
      this.ﺟ = null;
    }
    this.ﻢ = i;
    this.ｓ = ((int)(paramᵁ.getDisplayMetrics().density * 56.0F));
    this.ｳ = null;
  }
  
  public void ˊ(ᖦ paramᖦ)
  {
    this.Ĩ = paramᖦ;
    paramᖦ.ˊ(this.ｼ);
  }
  
  public void ˊ(ᵁ paramᵁ, boolean paramBoolean)
  {
    זּ();
    super.ˊ(paramᵁ, paramBoolean);
  }
  
  public void ˊ(ᵃ paramᵃ, ᵊ.if paramif)
  {
    paramif.ˊ(paramᵃ, 0);
    paramᵃ = (ᖦ)this.Ĩ;
    paramif = (ᴬ)paramif;
    paramif.setItemInvoker(paramᵃ);
    if (this.ｽ == null) {
      this.ｽ = new ᓴ.ˊ(this, null);
    }
    paramif.setPopupCallback(this.ｽ);
  }
  
  public boolean ˊ(int paramInt, ᵃ paramᵃ)
  {
    return paramᵃ.İ();
  }
  
  public boolean ˊ(ᵡ paramᵡ)
  {
    if (!paramᵡ.hasVisibleItems()) {
      return false;
    }
    for (Object localObject = paramᵡ; ((ᵡ)localObject).ר() != this.ｼ; localObject = (ᵡ)((ᵡ)localObject).ר()) {}
    View localView = ᐝ(((ᵡ)localObject).getItem());
    localObject = localView;
    if (localView == null)
    {
      if (this.ﺟ == null) {
        return false;
      }
      localObject = this.ﺟ;
    }
    this.ﾊ = paramᵡ.getItem().getItemId();
    this.ｸ = new ᓴ.if(this, this.mContext, paramᵡ);
    this.ｸ.setAnchorView((View)localObject);
    this.ｸ.show();
    super.ˊ(paramᵡ);
    return true;
  }
  
  public boolean ˋ(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == this.ﺟ) {
      return false;
    }
    return super.ˋ(paramViewGroup, paramInt);
  }
  
  public ᵊ ˎ(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.ˎ(paramViewGroup);
    ((ᖦ)paramViewGroup).setPresenter(this);
    return paramViewGroup;
  }
  
  public void ˏ(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.ˊ(null);
      return;
    }
    this.ｼ.ˍ(false);
  }
  
  public void ۦ(int paramInt)
  {
    this.Ｆ = paramInt;
    this.Ｉ = true;
  }
  
  public boolean ᑦ()
  {
    ArrayList localArrayList = this.ｼ.ⁿ();
    int i6 = localArrayList.size();
    int i = this.Ｆ;
    int i2 = this.ﻢ;
    int i7 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)this.Ĩ;
    int m = 0;
    int n = 0;
    int i5 = 0;
    int k = 0;
    int j = 0;
    int i1;
    while (j < i6)
    {
      localObject1 = (ᵃ)localArrayList.get(j);
      if (((ᵃ)localObject1).ɹ()) {
        m += 1;
      } else if (((ᵃ)localObject1).Ɩ()) {
        n += 1;
      } else {
        k = 1;
      }
      i1 = i;
      if (this.ｒ)
      {
        i1 = i;
        if (((ᵃ)localObject1).isActionViewExpanded()) {
          i1 = 0;
        }
      }
      j += 1;
      i = i1;
    }
    j = i;
    if (this.ﺧ) {
      if (k == 0)
      {
        j = i;
        if (m + n <= i) {}
      }
      else
      {
        j = i - 1;
      }
    }
    k = j - m;
    Object localObject1 = this.ｦ;
    ((SparseBooleanArray)localObject1).clear();
    int i3 = 0;
    j = 0;
    if (this.ｌ)
    {
      j = i2 / this.ｓ;
      i = this.ｓ;
      i3 = this.ｓ + i2 % i / j;
    }
    int i4 = 0;
    i = i5;
    while (i4 < i6)
    {
      ᵃ localᵃ = (ᵃ)localArrayList.get(i4);
      Object localObject2;
      if (localᵃ.ɹ())
      {
        localObject2 = ˊ(localᵃ, this.ｳ, localViewGroup);
        if (this.ｳ == null) {
          this.ｳ = ((View)localObject2);
        }
        if (this.ｌ) {
          j -= ᖦ.ˎ((View)localObject2, i3, j, i7, 0);
        } else {
          ((View)localObject2).measure(i7, i7);
        }
        n = ((View)localObject2).getMeasuredWidth();
        i1 = i2 - n;
        m = i;
        if (i == 0) {
          m = n;
        }
        i = localᵃ.getGroupId();
        if (i != 0) {
          ((SparseBooleanArray)localObject1).put(i, true);
        }
        localᵃ.ﹳ(true);
        i = m;
      }
      else if (localᵃ.Ɩ())
      {
        i5 = localᵃ.getGroupId();
        boolean bool = ((SparseBooleanArray)localObject1).get(i5);
        int i8;
        if (((k > 0) || (bool)) && (i2 > 0) && ((!this.ｌ) || (j > 0))) {
          i8 = 1;
        } else {
          i8 = 0;
        }
        i1 = i2;
        n = i;
        m = j;
        int i9 = i8;
        if (i8 != 0)
        {
          localObject2 = ˊ(localᵃ, this.ｳ, localViewGroup);
          if (this.ｳ == null) {
            this.ｳ = ((View)localObject2);
          }
          if (this.ｌ)
          {
            m = ᖦ.ˎ((View)localObject2, i3, j, i7, 0);
            j -= m;
            if (m == 0) {
              i8 = 0;
            }
          }
          else
          {
            ((View)localObject2).measure(i7, i7);
          }
          m = ((View)localObject2).getMeasuredWidth();
          i1 = i2 - m;
          n = i;
          if (i == 0) {
            n = m;
          }
          if (this.ｌ)
          {
            if (i1 >= 0) {
              i = 1;
            } else {
              i = 0;
            }
            i9 = i8 & i;
            m = j;
          }
          else
          {
            if (i1 + n > 0) {
              i = 1;
            } else {
              i = 0;
            }
            i9 = i8 & i;
            m = j;
          }
        }
        if ((i9 != 0) && (i5 != 0))
        {
          ((SparseBooleanArray)localObject1).put(i5, true);
          i = k;
        }
        else
        {
          i = k;
          if (bool)
          {
            ((SparseBooleanArray)localObject1).put(i5, false);
            j = 0;
            for (;;)
            {
              i = k;
              if (j >= i4) {
                break;
              }
              localObject2 = (ᵃ)localArrayList.get(j);
              i = k;
              if (((ᵃ)localObject2).getGroupId() == i5)
              {
                i = k;
                if (((ᵃ)localObject2).İ()) {
                  i = k + 1;
                }
                ((ᵃ)localObject2).ﹳ(false);
              }
              j += 1;
              k = i;
            }
          }
        }
        j = i;
        if (i9 != 0) {
          j = i - 1;
        }
        localᵃ.ﹳ(i9);
        k = j;
        i = n;
        j = m;
      }
      else
      {
        localᵃ.ﹳ(false);
        i1 = i2;
      }
      i4 += 1;
      i2 = i1;
    }
    return true;
  }
  
  public boolean זּ()
  {
    return hideOverflowMenu() | נּ();
  }
  
  public boolean נּ()
  {
    if (this.ｸ != null)
    {
      this.ｸ.dismiss();
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */