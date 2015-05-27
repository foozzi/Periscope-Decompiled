package o;

import android.support.v7.widget.RecyclerView.ʻ;
import android.support.v7.widget.RecyclerView.ˉ;
import android.view.View;

public class ǀ
{
  public static int ˊ(RecyclerView.ˉ paramˉ, 氵 param氵, View paramView1, View paramView2, RecyclerView.ʻ paramʻ, boolean paramBoolean)
  {
    if ((paramʻ.getChildCount() == 0) || (paramˉ.getItemCount() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return Math.abs(paramʻ.ˣ(paramView1) - paramʻ.ˣ(paramView2)) + 1;
    }
    int i = param氵.ᐪ(paramView2);
    int j = param氵.ᐡ(paramView1);
    return Math.min(param氵.ᖦ(), i - j);
  }
  
  public static int ˊ(RecyclerView.ˉ paramˉ, 氵 param氵, View paramView1, View paramView2, RecyclerView.ʻ paramʻ, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramʻ.getChildCount() == 0) || (paramˉ.getItemCount() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    int i = Math.min(paramʻ.ˣ(paramView1), paramʻ.ˣ(paramView2));
    int j = Math.max(paramʻ.ˣ(paramView1), paramʻ.ˣ(paramView2));
    if (paramBoolean2) {
      i = Math.max(0, paramˉ.getItemCount() - j - 1);
    } else {
      i = Math.max(0, i);
    }
    if (!paramBoolean1) {
      return i;
    }
    j = Math.abs(param氵.ᐪ(paramView2) - param氵.ᐡ(paramView1));
    int k = Math.abs(paramʻ.ˣ(paramView1) - paramʻ.ˣ(paramView2));
    float f = j / (k + 1);
    return Math.round(i * f + (param氵.ᓴ() - param氵.ᐡ(paramView1)));
  }
  
  public static int ˋ(RecyclerView.ˉ paramˉ, 氵 param氵, View paramView1, View paramView2, RecyclerView.ʻ paramʻ, boolean paramBoolean)
  {
    if ((paramʻ.getChildCount() == 0) || (paramˉ.getItemCount() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return paramˉ.getItemCount();
    }
    int i = param氵.ᐪ(paramView2);
    int j = param氵.ᐡ(paramView1);
    int k = Math.abs(paramʻ.ˣ(paramView1) - paramʻ.ˣ(paramView2));
    return (int)((i - j) / (k + 1) * paramˉ.getItemCount());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ç
 * JD-Core Version:    0.7.0.1
 */