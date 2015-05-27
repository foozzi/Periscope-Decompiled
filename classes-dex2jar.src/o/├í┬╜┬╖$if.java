package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class ί$if
  extends ViewGroup.MarginLayoutParams
{
  public int gravity = -1;
  public float weight;
  
  public ί$if(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.weight = 0.0F;
  }
  
  public ί$if(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.LinearLayoutCompat_Layout);
    this.weight = paramContext.getFloat(ڊ.ʽ.LinearLayoutCompat_Layout_android_layout_weight, 0.0F);
    this.gravity = paramContext.getInt(ڊ.ʽ.LinearLayoutCompat_Layout_android_layout_gravity, -1);
    paramContext.recycle();
  }
  
  public ί$if(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á½·.if
 * JD-Core Version:    0.7.0.1
 */