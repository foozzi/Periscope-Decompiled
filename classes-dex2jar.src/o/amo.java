package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;

public class amo
  extends View
{
  private int bNi;
  private int bNj;
  private aek.ˊ bNk;
  private Paint mPaint;
  
  public amo(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public amo(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public amo(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void ˊ(Context paramContext)
  {
    this.mPaint = new Paint();
    this.mPaint.setColor(-1);
    this.mPaint.setStrokeWidth(getResources().getDimensionPixelOffset(2131361896));
    this.bNj = akn.ᒢ(paramContext).x;
    setBackgroundColor(-16777216);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.drawLine(0.0F, 0.0F, this.bNi, 0.0F, this.mPaint);
    if (this.bNk != null)
    {
      long l1 = this.bNk.xW();
      long l2 = this.bNk.xV();
      if (l2 < l1) {
        ۥ((float)l2 / (float)l1);
      }
    }
  }
  
  public void reset()
  {
    this.bNi = 0;
    this.bNk = null;
  }
  
  public void ˊ(aek.ˊ paramˊ)
  {
    if (this.bNk != null) {
      return;
    }
    this.bNk = paramˊ;
  }
  
  public void ۥ(float paramFloat)
  {
    this.bNi = ((int)(this.bNj * paramFloat));
    invalidate();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amo
 * JD-Core Version:    0.7.0.1
 */