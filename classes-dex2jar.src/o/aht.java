package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class aht
  extends ImageView
{
  private static Paint bFl = new Paint(3);
  private int bFm;
  private int bFn;
  
  public aht(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public aht(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public aht(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    this.bFm = 2130837643;
    this.bFn = 2130837644;
    setImageResource(this.bFm);
  }
  
  public void setColor(int paramInt)
  {
    Bitmap localBitmap = ғ(paramInt);
    setImageDrawable(new BitmapDrawable(getResources(), localBitmap));
  }
  
  public void setColorAndDrawables(int paramInt1, int paramInt2, int paramInt3)
  {
    this.bFm = paramInt2;
    this.bFn = paramInt3;
    setColor(paramInt1);
  }
  
  public Bitmap ғ(int paramInt)
  {
    Object localObject = getResources();
    Bitmap localBitmap1 = BitmapFactory.decodeResource((Resources)localObject, this.bFm);
    localObject = BitmapFactory.decodeResource((Resources)localObject, this.bFn);
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1.getWidth(), localBitmap1.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap2);
    Paint localPaint = bFl;
    float f1 = (localBitmap1.getWidth() - ((Bitmap)localObject).getWidth()) / 2.0F;
    float f2 = (localBitmap1.getHeight() - ((Bitmap)localObject).getHeight()) / 2.0F;
    localCanvas.drawBitmap(localBitmap1, 0.0F, 0.0F, localPaint);
    localPaint.setColorFilter(new PorterDuffColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP));
    localCanvas.drawBitmap((Bitmap)localObject, f1, f2, localPaint);
    localPaint.setColorFilter(null);
    return localBitmap2;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aht
 * JD-Core Version:    0.7.0.1
 */