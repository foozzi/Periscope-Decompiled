package o;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

class ﭜ$if
  extends BaseAdapter
{
  private ﭕ ﺏ;
  private int ﺔ = 4;
  private boolean ﺣ;
  private boolean ﻡ;
  private boolean ｕ;
  
  private ﭜ$if(ﭜ paramﭜ) {}
  
  public int getCount()
  {
    int j = this.ﺏ.ȋ();
    int i = j;
    if (!this.ﺣ)
    {
      i = j;
      if (this.ﺏ.ɨ() != null) {
        i = j - 1;
      }
    }
    j = Math.min(i, this.ﺔ);
    i = j;
    if (this.ｕ) {
      i = j + 1;
    }
    return i;
  }
  
  public int getHistorySize()
  {
    return this.ﺏ.getHistorySize();
  }
  
  public Object getItem(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      break;
    case 1: 
      return null;
    case 0: 
      int i = paramInt;
      if (!this.ﺣ)
      {
        i = paramInt;
        if (this.ﺏ.ɨ() != null) {
          i = paramInt + 1;
        }
      }
      return this.ﺏ.ᗮ(i);
    }
    throw new IllegalArgumentException();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((this.ｕ) && (paramInt == getCount() - 1)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    switch (getItemViewType(paramInt))
    {
    default: 
      break;
    case 1: 
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == 1) {}
      }
      else
      {
        localView = LayoutInflater.from(this.ﮋ.getContext()).inflate(ڊ.ᐝ.abc_activity_chooser_view_list_item, paramViewGroup, false);
        localView.setId(1);
        ((TextView)localView.findViewById(ڊ.ˏ.title)).setText(this.ﮋ.getContext().getString(ڊ.ʻ.abc_activity_chooser_view_see_all));
      }
      return localView;
    case 0: 
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == ڊ.ˏ.list_item) {}
      }
      else
      {
        localView = LayoutInflater.from(this.ﮋ.getContext()).inflate(ڊ.ᐝ.abc_activity_chooser_view_list_item, paramViewGroup, false);
      }
      paramView = this.ﮋ.getContext().getPackageManager();
      paramViewGroup = (ImageView)localView.findViewById(ڊ.ˏ.icon);
      ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
      paramViewGroup.setImageDrawable(localResolveInfo.loadIcon(paramView));
      ((TextView)localView.findViewById(ڊ.ˏ.title)).setText(localResolveInfo.loadLabel(paramView));
      if ((this.ﺣ) && (paramInt == 0) && (this.ﻡ))
      {
        ﺑ.ˋ(localView, true);
        return localView;
      }
      ﺑ.ˋ(localView, false);
      return localView;
    }
    throw new IllegalArgumentException();
  }
  
  public int getViewTypeCount()
  {
    return 3;
  }
  
  public int ȋ()
  {
    return this.ﺏ.ȋ();
  }
  
  public ResolveInfo ɨ()
  {
    return this.ﺏ.ɨ();
  }
  
  public void ˋ(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.ﺣ != paramBoolean1) || (this.ﻡ != paramBoolean2))
    {
      this.ﺣ = paramBoolean1;
      this.ﻡ = paramBoolean2;
      notifyDataSetChanged();
    }
  }
  
  public void ˎ(ﭕ paramﭕ)
  {
    ﭕ localﭕ = ﭜ.ˊ(this.ﮋ).ᐦ();
    if ((localﭕ != null) && (this.ﮋ.isShown())) {
      localﭕ.unregisterObserver(ﭜ.ͺ(this.ﮋ));
    }
    this.ﺏ = paramﭕ;
    if ((paramﭕ != null) && (this.ﮋ.isShown())) {
      paramﭕ.registerObserver(ﭜ.ͺ(this.ﮋ));
    }
    notifyDataSetChanged();
  }
  
  public void ՙ(boolean paramBoolean)
  {
    if (this.ｕ != paramBoolean)
    {
      this.ｕ = paramBoolean;
      notifyDataSetChanged();
    }
  }
  
  public int ן()
  {
    int k = this.ﺔ;
    this.ﺔ = 2147483647;
    int j = 0;
    View localView = null;
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = getCount();
    int i = 0;
    while (i < i1)
    {
      localView = getView(i, localView, null);
      localView.measure(m, n);
      j = Math.max(j, localView.getMeasuredWidth());
      i += 1;
    }
    this.ﺔ = k;
    return j;
  }
  
  public ﭕ ᐦ()
  {
    return this.ﺏ;
  }
  
  public boolean ᒄ()
  {
    return this.ﺣ;
  }
  
  public void ᵋ(int paramInt)
  {
    if (this.ﺔ != paramInt)
    {
      this.ﺔ = paramInt;
      notifyDataSetChanged();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­.if
 * JD-Core Version:    0.7.0.1
 */