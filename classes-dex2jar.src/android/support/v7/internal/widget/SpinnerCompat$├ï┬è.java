package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

class SpinnerCompat$ˊ
  implements ListAdapter, SpinnerAdapter
{
  private ListAdapter ᓙ;
  private SpinnerAdapter ｉ;
  
  public SpinnerCompat$ˊ(SpinnerAdapter paramSpinnerAdapter)
  {
    this.ｉ = paramSpinnerAdapter;
    if ((paramSpinnerAdapter instanceof ListAdapter)) {
      this.ᓙ = ((ListAdapter)paramSpinnerAdapter);
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    ListAdapter localListAdapter = this.ᓙ;
    if (localListAdapter != null) {
      return localListAdapter.areAllItemsEnabled();
    }
    return true;
  }
  
  public int getCount()
  {
    if (this.ｉ == null) {
      return 0;
    }
    return this.ｉ.getCount();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.ｉ == null) {
      return null;
    }
    return this.ｉ.getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt)
  {
    if (this.ｉ == null) {
      return null;
    }
    return this.ｉ.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    if (this.ｉ == null) {
      return -1L;
    }
    return this.ｉ.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 1;
  }
  
  public boolean hasStableIds()
  {
    return (this.ｉ != null) && (this.ｉ.hasStableIds());
  }
  
  public boolean isEmpty()
  {
    return getCount() == 0;
  }
  
  public boolean isEnabled(int paramInt)
  {
    ListAdapter localListAdapter = this.ᓙ;
    if (localListAdapter != null) {
      return localListAdapter.isEnabled(paramInt);
    }
    return true;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (this.ｉ != null) {
      this.ｉ.registerDataSetObserver(paramDataSetObserver);
    }
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (this.ｉ != null) {
      this.ｉ.unregisterDataSetObserver(paramDataSetObserver);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.SpinnerCompat.Ë
 * JD-Core Version:    0.7.0.1
 */