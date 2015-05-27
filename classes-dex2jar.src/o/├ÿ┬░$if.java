package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class ذ$if
  extends ViewGroup.MarginLayoutParams
{
  public int gravity = 0;
  
  public ذ$if(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.gravity = 8388627;
  }
  
  public ذ$if(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.ActionBarLayout);
    this.gravity = paramContext.getInt(ڊ.ʽ.ActionBarLayout_android_layout_gravity, 0);
    paramContext.recycle();
  }
  
  public ذ$if(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public ذ$if(if paramif)
  {
    super(paramif);
    this.gravity = paramif.gravity;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ø°.if
 * JD-Core Version:    0.7.0.1
 */