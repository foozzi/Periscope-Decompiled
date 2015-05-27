package android.support.v4.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

public class ViewPager$ˋ
  extends ViewGroup.LayoutParams
{
  public int gravity;
  int position;
  float ﬧ = 0.0F;
  public boolean ﭝ;
  boolean ﭥ;
  int ﮆ;
  
  public ViewPager$ˋ()
  {
    super(-1, -1);
  }
  
  public ViewPager$ˋ(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ViewPager.ǃ());
    this.gravity = paramContext.getInteger(0, 48);
    paramContext.recycle();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ViewPager.Ë
 * JD-Core Version:    0.7.0.1
 */