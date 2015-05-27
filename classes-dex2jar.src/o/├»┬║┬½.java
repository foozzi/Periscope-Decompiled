package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;

public class ﺫ
  extends FrameLayout
{
  private TypedValue չ;
  private TypedValue ט;
  private TypedValue ס;
  private TypedValue ף;
  private TypedValue ت;
  private TypedValue ٺ;
  private final Rect ٻ = new Rect();
  
  public ﺫ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ﺫ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ﺫ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    DisplayMetrics localDisplayMetrics = getContext().getResources().getDisplayMetrics();
    int j;
    if (localDisplayMetrics.widthPixels < localDisplayMetrics.heightPixels) {
      j = 1;
    } else {
      j = 0;
    }
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    int n = 0;
    int k = n;
    int m = paramInt1;
    TypedValue localTypedValue;
    if (i1 == -2147483648)
    {
      if (j != 0) {
        localTypedValue = this.ף;
      } else {
        localTypedValue = this.ס;
      }
      k = n;
      m = paramInt1;
      if (localTypedValue != null)
      {
        k = n;
        m = paramInt1;
        if (localTypedValue.type != 0)
        {
          i = 0;
          if (localTypedValue.type == 5) {
            i = (int)localTypedValue.getDimension(localDisplayMetrics);
          } else if (localTypedValue.type == 6) {
            i = (int)localTypedValue.getFraction(localDisplayMetrics.widthPixels, localDisplayMetrics.widthPixels);
          }
          k = n;
          m = paramInt1;
          if (i > 0)
          {
            m = View.MeasureSpec.makeMeasureSpec(Math.min(i - (this.ٻ.left + this.ٻ.right), View.MeasureSpec.getSize(paramInt1)), 1073741824);
            k = 1;
          }
        }
      }
    }
    int i = paramInt2;
    if (i2 == -2147483648)
    {
      if (j != 0) {
        localTypedValue = this.ت;
      } else {
        localTypedValue = this.ٺ;
      }
      i = paramInt2;
      if (localTypedValue != null)
      {
        i = paramInt2;
        if (localTypedValue.type != 0)
        {
          paramInt1 = 0;
          if (localTypedValue.type == 5) {
            paramInt1 = (int)localTypedValue.getDimension(localDisplayMetrics);
          } else if (localTypedValue.type == 6) {
            paramInt1 = (int)localTypedValue.getFraction(localDisplayMetrics.heightPixels, localDisplayMetrics.heightPixels);
          }
          i = paramInt2;
          if (paramInt1 > 0) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(paramInt1 - (this.ٻ.top + this.ٻ.bottom), View.MeasureSpec.getSize(paramInt2)), 1073741824);
          }
        }
      }
    }
    super.onMeasure(m, i);
    i2 = getMeasuredWidth();
    m = 0;
    n = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
    paramInt2 = m;
    paramInt1 = n;
    if (k == 0)
    {
      paramInt2 = m;
      paramInt1 = n;
      if (i1 == -2147483648)
      {
        if (j != 0) {
          localTypedValue = this.ט;
        } else {
          localTypedValue = this.չ;
        }
        paramInt2 = m;
        paramInt1 = n;
        if (localTypedValue != null)
        {
          paramInt2 = m;
          paramInt1 = n;
          if (localTypedValue.type != 0)
          {
            paramInt1 = 0;
            if (localTypedValue.type == 5) {
              paramInt1 = (int)localTypedValue.getDimension(localDisplayMetrics);
            } else if (localTypedValue.type == 6) {
              paramInt1 = (int)localTypedValue.getFraction(localDisplayMetrics.widthPixels, localDisplayMetrics.widthPixels);
            }
            j = paramInt1;
            if (paramInt1 > 0) {
              j = paramInt1 - (this.ٻ.left + this.ٻ.right);
            }
            paramInt2 = m;
            paramInt1 = n;
            if (i2 < j)
            {
              paramInt1 = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
              paramInt2 = 1;
            }
          }
        }
      }
    }
    if (paramInt2 != 0) {
      super.onMeasure(paramInt1, i);
    }
  }
  
  public void setDecorPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ٻ.set(paramInt1, paramInt2, paramInt3, paramInt4);
    if (ﺑ.ٴ(this)) {
      requestLayout();
    }
  }
  
  public void ˊ(Rect paramRect)
  {
    fitSystemWindows(paramRect);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº«
 * JD-Core Version:    0.7.0.1
 */