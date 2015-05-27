package o;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;

public final class ᴲ
  extends ListView
  implements ᵁ.ˊ, ᵊ, AdapterView.OnItemClickListener
{
  private static final int[] Ľ = { 16842964, 16843049 };
  private ᵁ ｼ;
  
  public ᴲ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }
  
  public ᴲ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnItemClickListener(this);
    paramContext = ๅ.ˊ(paramContext, paramAttributeSet, Ľ, paramInt, 0);
    if (paramContext.hasValue(0)) {
      setBackgroundDrawable(paramContext.getDrawable(0));
    }
    if (paramContext.hasValue(1)) {
      setDivider(paramContext.getDrawable(1));
    }
    paramContext.recycle();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    setChildrenDrawingCacheEnabled(false);
  }
  
  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ˊ((ᵃ)getAdapter().getItem(paramInt));
  }
  
  public void ˊ(ᵁ paramᵁ)
  {
    this.ｼ = paramᵁ;
  }
  
  public boolean ˊ(ᵃ paramᵃ)
  {
    return this.ｼ.ˊ(paramᵃ, 0);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´²
 * JD-Core Version:    0.7.0.1
 */