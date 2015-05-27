package o;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.shapes.RectShape;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class amq
  extends LinearLayout
{
  private final RectShape bNm = new RectShape();
  private float bNn;
  private float bNo;
  private float bNp;
  private int bNq = 0;
  private final Paint mPaint = new Paint();
  private int Ύ;
  
  public amq(Context paramContext)
  {
    super(paramContext);
    ˏ(paramContext, null);
  }
  
  public amq(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˏ(paramContext, paramAttributeSet);
  }
  
  public amq(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˏ(paramContext, paramAttributeSet);
  }
  
  private void ˏ(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.ScrollTabLayout);
    try
    {
      this.bNn = paramAttributeSet.getDimension(0, 9.0F);
      int i = paramContext.getResources().getColor(paramAttributeSet.getResourceId(1, 2131296386));
      this.mPaint.setColor(i);
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (this.bNq == 0)
    {
      int i = paramCanvas.save(1);
      paramCanvas.translate(this.Ύ * this.bNp + this.bNo, getHeight() - this.bNm.getHeight());
      this.bNm.draw(paramCanvas, this.mPaint);
      paramCanvas.restoreToCount(i);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    float f = getMeasuredWidth() / getChildCount();
    this.bNm.resize(f, this.bNn);
    this.bNp = f;
  }
  
  public void setPosition(int paramInt)
  {
    this.Ύ = paramInt;
    this.bNo = 0.0F;
    invalidate();
  }
  
  public void setScrollVisibility(int paramInt)
  {
    if (this.bNq != paramInt)
    {
      this.bNq = paramInt;
      invalidate();
    }
  }
  
  public void ᐝ(int paramInt, float paramFloat)
  {
    this.Ύ = paramInt;
    this.bNo = (this.bNp * paramFloat);
    invalidate();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amq
 * JD-Core Version:    0.7.0.1
 */