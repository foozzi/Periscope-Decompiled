package o;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;

public class ams
  extends ShapeDrawable
{
  private final int bNr;
  private final int bNs;
  private final Paint bNt;
  private CharSequence bNu;
  
  public ams(Resources paramResources, Shape paramShape, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence)
  {
    super(paramShape);
    this.bNr = paramInt1;
    this.bNs = paramInt2;
    getPaint().setColor(paramResources.getColor(paramInt3));
    this.bNt = new Paint(1);
    this.bNt.setColor(paramResources.getColor(paramInt4));
    this.bNt.setTextAlign(Paint.Align.CENTER);
    this.bNt.setStyle(Paint.Style.FILL);
    this.bNt.setTextSize(Math.min(paramInt1, paramInt2) / 2);
    this.bNu = paramCharSequence;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Rect localRect = getBounds();
    paramCanvas.drawText(this.bNu.toString(), localRect.width() / 2, localRect.height() / 2 - (this.bNt.descent() + this.bNt.ascent()) / 2.0F, this.bNt);
  }
  
  public int getIntrinsicHeight()
  {
    return this.bNs;
  }
  
  public int getIntrinsicWidth()
  {
    return this.bNr;
  }
  
  public int getOpacity()
  {
    return this.bNt.getAlpha();
  }
  
  public void setAlpha(int paramInt)
  {
    this.bNt.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.bNt.setColorFilter(paramColorFilter);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ams
 * JD-Core Version:    0.7.0.1
 */