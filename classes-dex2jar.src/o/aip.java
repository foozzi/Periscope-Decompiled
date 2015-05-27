package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

public class aip
  extends View
{
  private abf bFQ;
  private int г;
  private Drawable ذ;
  
  public aip(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public aip(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130771977);
  }
  
  public aip(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.ToolbarButton, paramInt, 0);
    this.ذ = paramContext.getDrawable(1);
    ה(paramContext.getColor(0, -1));
    paramContext.recycle();
  }
  
  private void zN()
  {
    if (this.ذ != null)
    {
      this.ذ.setColorFilter(this.г, PorterDuff.Mode.SRC_IN);
      invalidate();
    }
  }
  
  private void ה(int paramInt)
  {
    this.г = paramInt;
    zN();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    this.ذ.draw(paramCanvas);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt1 = this.ذ.getIntrinsicWidth();
    paramInt2 = this.ذ.getIntrinsicHeight();
    int i = (getMeasuredWidth() - paramInt1) / 2;
    int j = (getMeasuredHeight() - paramInt2) / 2;
    this.ذ.setBounds(i, j, i + paramInt1, j + paramInt2);
  }
  
  public void setColor(int paramInt)
  {
    ה(paramInt);
  }
  
  public void setDrawable(Drawable paramDrawable)
  {
    this.ذ = paramDrawable;
    requestLayout();
    zN();
  }
  
  public void setTargetColor(int paramInt)
  {
    this.bFQ = new abf(this.г, paramInt);
  }
  
  public boolean zO()
  {
    return this.bFQ != null;
  }
  
  public int zP()
  {
    if (this.bFQ == null) {
      return 0;
    }
    return this.bFQ.bvp;
  }
  
  public void ˮ(float paramFloat)
  {
    int i = this.bFQ.ˆ(paramFloat);
    if (i != this.г)
    {
      this.г = i;
      zN();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aip
 * JD-Core Version:    0.7.0.1
 */