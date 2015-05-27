package o;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.shapes.RectShape;
import android.util.AttributeSet;

public class amg
  extends ami
{
  private final RectShape bMZ = new RectShape();
  private float bNa;
  private final Paint mPaint = new Paint();
  
  public amg(Context paramContext)
  {
    super(paramContext);
    ˏ(paramContext, null);
  }
  
  public amg(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˏ(paramContext, paramAttributeSet);
  }
  
  public amg(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˏ(paramContext, paramAttributeSet);
  }
  
  private void ˏ(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.PsSelectedTextView);
    try
    {
      this.bNa = paramAttributeSet.getDimension(0, 9.0F);
      int i = paramContext.getResources().getColor(paramAttributeSet.getResourceId(1, 2131296386));
      this.mPaint.setColor(i);
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    this.bMZ.resize(getWidth(), this.bNa);
    int i = paramCanvas.save(1);
    paramCanvas.translate(0.0F, getTop() + this.bMZ.getHeight());
    if (isActivated()) {
      this.bMZ.draw(paramCanvas, this.mPaint);
    }
    paramCanvas.restoreToCount(i);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amg
 * JD-Core Version:    0.7.0.1
 */