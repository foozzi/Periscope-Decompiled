package o;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.shapes.OvalShape;

class ר$if
  extends OvalShape
{
  private RadialGradient ﮢ;
  private Paint ﺌ = new Paint();
  private int ﺬ;
  
  public ר$if(ר paramר, int paramInt1, int paramInt2)
  {
    ר.ˊ(paramר, paramInt1);
    this.ﺬ = paramInt2;
    float f1 = this.ﺬ / 2;
    float f2 = this.ﺬ / 2;
    float f3 = ר.ˊ(paramר);
    paramר = Shader.TileMode.CLAMP;
    this.ﮢ = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, paramר);
    this.ﺌ.setShader(this.ﮢ);
  }
  
  public void draw(Canvas paramCanvas, Paint paramPaint)
  {
    int i = this.ﺯ.getWidth();
    int j = this.ﺯ.getHeight();
    paramCanvas.drawCircle(i / 2, j / 2, this.ﺬ / 2 + ר.ˊ(this.ﺯ), this.ﺌ);
    paramCanvas.drawCircle(i / 2, j / 2, this.ﺬ / 2, paramPaint);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×¨.if
 * JD-Core Version:    0.7.0.1
 */