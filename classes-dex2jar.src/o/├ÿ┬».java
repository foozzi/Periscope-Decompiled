package o;

import android.content.Context;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class د
  extends BaseAdapter
  implements Filterable, ہ.if
{
  protected Context mContext;
  protected FilterQueryProvider ċ;
  protected boolean ﻣ;
  protected boolean Ｊ;
  protected Cursor Ｌ;
  protected int ｧ;
  protected د.if ｲ;
  protected DataSetObserver ﾌ;
  protected ہ ﾍ;
  
  public د(Context paramContext, Cursor paramCursor, boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 2;
    }
    ˊ(paramContext, paramCursor, i);
  }
  
  public abstract void bindView(View paramView, Context paramContext, Cursor paramCursor);
  
  public void changeCursor(Cursor paramCursor)
  {
    paramCursor = swapCursor(paramCursor);
    if (paramCursor != null) {
      paramCursor.close();
    }
  }
  
  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return "";
    }
    return paramCursor.toString();
  }
  
  public int getCount()
  {
    if ((this.ﻣ) && (this.Ｌ != null)) {
      return this.Ｌ.getCount();
    }
    return 0;
  }
  
  public Cursor getCursor()
  {
    return this.Ｌ;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.ﻣ)
    {
      this.Ｌ.moveToPosition(paramInt);
      if (paramView == null) {
        paramView = newDropDownView(this.mContext, this.Ｌ, paramViewGroup);
      }
      bindView(paramView, this.mContext, this.Ｌ);
      return paramView;
    }
    return null;
  }
  
  public Filter getFilter()
  {
    if (this.ﾍ == null) {
      this.ﾍ = new ہ(this);
    }
    return this.ﾍ;
  }
  
  public Object getItem(int paramInt)
  {
    if ((this.ﻣ) && (this.Ｌ != null))
    {
      this.Ｌ.moveToPosition(paramInt);
      return this.Ｌ;
    }
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    if ((this.ﻣ) && (this.Ｌ != null))
    {
      if (this.Ｌ.moveToPosition(paramInt)) {
        return this.Ｌ.getLong(this.ｧ);
      }
      return 0L;
    }
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!this.ﻣ) {
      throw new IllegalStateException("this should only be called when the cursor is valid");
    }
    if (!this.Ｌ.moveToPosition(paramInt)) {
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    }
    if (paramView == null) {
      paramView = newView(this.mContext, this.Ｌ, paramViewGroup);
    }
    bindView(paramView, this.mContext, this.Ｌ);
    return paramView;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
  
  public View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return newView(paramContext, paramCursor, paramViewGroup);
  }
  
  public abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);
  
  protected void onContentChanged()
  {
    if ((this.Ｊ) && (this.Ｌ != null) && (!this.Ｌ.isClosed())) {
      this.ﻣ = this.Ｌ.requery();
    }
  }
  
  public Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (this.ċ != null) {
      return this.ċ.runQuery(paramCharSequence);
    }
    return this.Ｌ;
  }
  
  public Cursor swapCursor(Cursor paramCursor)
  {
    if (paramCursor == this.Ｌ) {
      return null;
    }
    Cursor localCursor = this.Ｌ;
    if (localCursor != null)
    {
      if (this.ｲ != null) {
        localCursor.unregisterContentObserver(this.ｲ);
      }
      if (this.ﾌ != null) {
        localCursor.unregisterDataSetObserver(this.ﾌ);
      }
    }
    this.Ｌ = paramCursor;
    if (paramCursor != null)
    {
      if (this.ｲ != null) {
        paramCursor.registerContentObserver(this.ｲ);
      }
      if (this.ﾌ != null) {
        paramCursor.registerDataSetObserver(this.ﾌ);
      }
      this.ｧ = paramCursor.getColumnIndexOrThrow("_id");
      this.ﻣ = true;
      notifyDataSetChanged();
      return localCursor;
    }
    this.ｧ = -1;
    this.ﻣ = false;
    notifyDataSetInvalidated();
    return localCursor;
  }
  
  void ˊ(Context paramContext, Cursor paramCursor, int paramInt)
  {
    if ((paramInt & 0x1) == 1)
    {
      paramInt |= 0x2;
      this.Ｊ = true;
    }
    else
    {
      this.Ｊ = false;
    }
    boolean bool;
    if (paramCursor != null) {
      bool = true;
    } else {
      bool = false;
    }
    this.Ｌ = paramCursor;
    this.ﻣ = bool;
    this.mContext = paramContext;
    int i;
    if (bool) {
      i = paramCursor.getColumnIndexOrThrow("_id");
    } else {
      i = -1;
    }
    this.ｧ = i;
    if ((paramInt & 0x2) == 2)
    {
      this.ｲ = new د.if(this);
      this.ﾌ = new د.ˊ(this, null);
    }
    else
    {
      this.ｲ = null;
      this.ﾌ = null;
    }
    if (bool)
    {
      if (this.ｲ != null) {
        paramCursor.registerContentObserver(this.ｲ);
      }
      if (this.ﾌ != null) {
        paramCursor.registerDataSetObserver(this.ﾌ);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ø¯
 * JD-Core Version:    0.7.0.1
 */