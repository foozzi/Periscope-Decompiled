package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class ᴱ
  implements ᵉ
{
  protected Context mContext;
  private int ć;
  protected ᵊ Ĩ;
  protected LayoutInflater 亅;
  private int ﹷ;
  protected Context ｯ;
  protected ᵁ ｼ;
  protected LayoutInflater ｿ;
  private ᵉ.if ﾄ;
  private int ﾕ;
  
  public ᴱ(Context paramContext, int paramInt1, int paramInt2)
  {
    this.ｯ = paramContext;
    this.ｿ = LayoutInflater.from(paramContext);
    this.ﾕ = paramInt1;
    this.ć = paramInt2;
  }
  
  public void setId(int paramInt)
  {
    this.ﹷ = paramInt;
  }
  
  public void ˈ(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)this.Ĩ;
    if (localViewGroup == null) {
      return;
    }
    int j = 0;
    int i = 0;
    if (this.ｼ != null)
    {
      this.ｼ.Ⅰ();
      ArrayList localArrayList = this.ｼ.ⁿ();
      int m = localArrayList.size();
      int k = 0;
      for (;;)
      {
        j = i;
        if (k >= m) {
          break;
        }
        ᵃ localᵃ2 = (ᵃ)localArrayList.get(k);
        j = i;
        if (ˊ(i, localᵃ2))
        {
          View localView1 = localViewGroup.getChildAt(i);
          ᵃ localᵃ1;
          if ((localView1 instanceof ᵊ.if)) {
            localᵃ1 = ((ᵊ.if)localView1).ʺ();
          } else {
            localᵃ1 = null;
          }
          View localView2 = ˊ(localᵃ2, localView1, localViewGroup);
          if (localᵃ2 != localᵃ1)
          {
            localView2.setPressed(false);
            ﺑ.י(localView2);
          }
          if (localView2 != localView1) {
            ͺ(localView2, i);
          }
          j = i + 1;
        }
        k += 1;
        i = j;
      }
    }
    while (j < localViewGroup.getChildCount()) {
      if (!ˋ(localViewGroup, j)) {
        j += 1;
      }
    }
  }
  
  public View ˊ(ᵃ paramᵃ, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof ᵊ.if)) {
      paramView = (ᵊ.if)paramView;
    } else {
      paramView = ˏ(paramViewGroup);
    }
    ˊ(paramᵃ, paramView);
    return (View)paramView;
  }
  
  public void ˊ(Context paramContext, ᵁ paramᵁ)
  {
    this.mContext = paramContext;
    this.亅 = LayoutInflater.from(this.mContext);
    this.ｼ = paramᵁ;
  }
  
  public void ˊ(ᵁ paramᵁ, boolean paramBoolean)
  {
    if (this.ﾄ != null) {
      this.ﾄ.ˊ(paramᵁ, paramBoolean);
    }
  }
  
  public abstract void ˊ(ᵃ paramᵃ, ᵊ.if paramif);
  
  public void ˊ(ᵉ.if paramif)
  {
    this.ﾄ = paramif;
  }
  
  public boolean ˊ(int paramInt, ᵃ paramᵃ)
  {
    return true;
  }
  
  public boolean ˊ(ᵁ paramᵁ, ᵃ paramᵃ)
  {
    return false;
  }
  
  public boolean ˊ(ᵡ paramᵡ)
  {
    if (this.ﾄ != null) {
      return this.ﾄ.ˎ(paramᵡ);
    }
    return false;
  }
  
  protected boolean ˋ(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public boolean ˋ(ᵁ paramᵁ, ᵃ paramᵃ)
  {
    return false;
  }
  
  public ᵊ ˎ(ViewGroup paramViewGroup)
  {
    if (this.Ĩ == null)
    {
      this.Ĩ = ((ᵊ)this.ｿ.inflate(this.ﾕ, paramViewGroup, false));
      this.Ĩ.ˊ(this.ｼ);
      ˈ(true);
    }
    return this.Ĩ;
  }
  
  public ᵊ.if ˏ(ViewGroup paramViewGroup)
  {
    return (ᵊ.if)this.ｿ.inflate(this.ć, paramViewGroup, false);
  }
  
  protected void ͺ(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)this.Ĩ).addView(paramView, paramInt);
  }
  
  public ᵉ.if ᑋ()
  {
    return this.ﾄ;
  }
  
  public boolean ᑦ()
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´±
 * JD-Core Version:    0.7.0.1
 */