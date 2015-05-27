package o;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.support.v4.view.ViewPager.aux;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class all
  extends LinearLayout
  implements ViewPager.aux
{
  private int bLO = -1;
  private ViewPager.aux bLP;
  
  public all(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˏ(paramContext, paramAttributeSet);
  }
  
  public all(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˏ(paramContext, paramAttributeSet);
  }
  
  private void ˏ(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, vh.if.DotsPageIndicator, 0, 0);
    try
    {
      int j = paramAttributeSet.getInteger(0, 1);
      int k = paramAttributeSet.getInteger(1, 0);
      if (k > j) {
        throw new IndexOutOfBoundsException("Selected position is out of bounds!");
      }
      paramContext = LayoutInflater.from(paramContext);
      int i = 0;
      while (i < j)
      {
        paramContext.inflate(2130903095, this);
        i += 1;
      }
      ᔄ(Math.max(k, 0));
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  private void ᔄ(int paramInt)
  {
    if (this.bLO != paramInt)
    {
      this.bLO = paramInt;
      int i = getChildCount();
      paramInt = 0;
      while (paramInt < i)
      {
        ImageView localImageView = (ImageView)getChildAt(paramInt);
        if (paramInt == this.bLO) {
          localImageView.setImageResource(2130837640);
        } else {
          localImageView.setImageResource(2130837641);
        }
        paramInt += 1;
      }
    }
  }
  
  public void setOnPageChangeListener(ViewPager.aux paramaux)
  {
    this.bLP = paramaux;
  }
  
  public void ʹ(int paramInt)
  {
    if (this.bLP != null) {
      this.bLP.ʹ(paramInt);
    }
  }
  
  public void ˊ(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.bLP != null) {
      this.bLP.ˊ(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public void ﾞ(int paramInt)
  {
    ᔄ(paramInt);
    if (this.bLP != null) {
      this.bLP.ﾞ(paramInt);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.all
 * JD-Core Version:    0.7.0.1
 */