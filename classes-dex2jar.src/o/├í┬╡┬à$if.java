package o;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

class ᵅ$if
  extends BaseAdapter
{
  private ᵁ ḭ;
  private int ṫ = -1;
  
  public ᵅ$if(ᵅ paramᵅ, ᵁ paramᵁ)
  {
    this.ḭ = paramᵁ;
    נ();
  }
  
  public int getCount()
  {
    ArrayList localArrayList;
    if (ᵅ.ˊ(this.ṭ)) {
      localArrayList = this.ḭ.丶();
    } else {
      localArrayList = this.ḭ.ⁿ();
    }
    if (this.ṫ < 0) {
      return localArrayList.size();
    }
    return localArrayList.size() - 1;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = ᵅ.ˋ(this.ṭ).inflate(ᵅ.ᔂ, paramViewGroup, false);
    }
    paramView = (ᵊ.if)localView;
    if (this.ṭ.о) {
      ((ᴾ)localView).setForceShowIcon(true);
    }
    paramView.ˊ(ᒽ(paramInt), 0);
    return localView;
  }
  
  public void notifyDataSetChanged()
  {
    נ();
    super.notifyDataSetChanged();
  }
  
  void נ()
  {
    ᵃ localᵃ = ᵅ.ˎ(this.ṭ).ﯦ();
    if (localᵃ != null)
    {
      ArrayList localArrayList = ᵅ.ˎ(this.ṭ).丶();
      int j = localArrayList.size();
      int i = 0;
      while (i < j)
      {
        if ((ᵃ)localArrayList.get(i) == localᵃ)
        {
          this.ṫ = i;
          return;
        }
        i += 1;
      }
    }
    this.ṫ = -1;
  }
  
  public ᵃ ᒽ(int paramInt)
  {
    ArrayList localArrayList;
    if (ᵅ.ˊ(this.ṭ)) {
      localArrayList = this.ḭ.丶();
    } else {
      localArrayList = this.ḭ.ⁿ();
    }
    int i = paramInt;
    if (this.ṫ >= 0)
    {
      i = paramInt;
      if (paramInt >= this.ṫ) {
        i = paramInt + 1;
      }
    }
    return (ᵃ)localArrayList.get(i);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ.if
 * JD-Core Version:    0.7.0.1
 */