package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class adw$ˊ
  extends ViewGroup.MarginLayoutParams
{
  float bzt;
  public int gravity = -1;
  
  public adw$ˊ(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public adw$ˊ(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, adw.jL());
    this.gravity = paramContext.getInt(0, 0);
    paramContext.recycle();
  }
  
  public adw$ˊ(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public adw$ˊ(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public adw$ˊ(ˊ paramˊ)
  {
    super(paramˊ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adw.Ë
 * JD-Core Version:    0.7.0.1
 */