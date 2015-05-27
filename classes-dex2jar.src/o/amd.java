package o;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;

public class amd
  extends ImageView
{
  private ValueAnimator bMT;
  private BitmapDrawable bMU;
  private Rect bMV;
  private float bMW;
  private Bitmap mBitmap;
  private Paint mPaint;
  
  public amd(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public amd(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public amd(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    this.bMU = ((BitmapDrawable)getResources().getDrawable(2130837605));
    this.mBitmap = this.bMU.getBitmap();
    this.mPaint = new Paint(6);
    this.bMV = new Rect(0, 0, 0, 0);
    LinearInterpolator localLinearInterpolator = new LinearInterpolator();
    this.bMT = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    this.bMT.addUpdateListener(new ame(this));
    this.bMT.setInterpolator(localLinearInterpolator);
    this.bMT.setRepeatCount(-1);
    this.bMT.setRepeatMode(1);
    this.bMT.setDuration(1700L);
    this.bMT.start();
  }
  
  public void hide()
  {
    clearAnimation();
    setVisibility(8);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int j = getWidth();
    int k = this.mBitmap.getWidth();
    int i = (int)-this.bMW;
    while (i < j)
    {
      paramCanvas.drawBitmap(this.mBitmap, i, 0.0F, this.mPaint);
      i += k;
    }
    if (i - j > 0)
    {
      this.bMV.set(i, 0, i - j, this.mBitmap.getHeight());
      paramCanvas.drawBitmap(this.mBitmap, this.bMV, this.bMV, this.mPaint);
    }
  }
  
  public void show()
  {
    setVisibility(0);
    this.bMT.start();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amd
 * JD-Core Version:    0.7.0.1
 */