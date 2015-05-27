package o;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable.Callback;

class ᒃ$ˊ
{
  private final Paint mPaint = new Paint();
  private float mStrokeWidth = 5.0F;
  private float ډ = 0.0F;
  private final Drawable.Callback แ;
  private final RectF Ꮁ = new RectF();
  private final Paint Ꮣ = new Paint();
  private float ᒦ = 0.0F;
  private float ᒨ = 0.0F;
  private float ᒫ = 2.5F;
  private int[] ᖟ;
  private int ᘇ;
  private float ᙇ;
  private float ᴧ;
  private float ᴮ;
  private boolean ᴳ;
  private Path ᴼ;
  private float ᵍ;
  private double ᵐ;
  private int ᵚ;
  private int ᵝ;
  private int ᵦ;
  private final Paint ẋ = new Paint();
  private int ẍ;
  
  public ᒃ$ˊ(Drawable.Callback paramCallback)
  {
    this.แ = paramCallback;
    this.mPaint.setStrokeCap(Paint.Cap.SQUARE);
    this.mPaint.setAntiAlias(true);
    this.mPaint.setStyle(Paint.Style.STROKE);
    this.Ꮣ.setStyle(Paint.Style.FILL);
    this.Ꮣ.setAntiAlias(true);
  }
  
  private void invalidateSelf()
  {
    this.แ.invalidateDrawable(null);
  }
  
  private void ˊ(Canvas paramCanvas, float paramFloat1, float paramFloat2, Rect paramRect)
  {
    if (this.ᴳ)
    {
      if (this.ᴼ == null)
      {
        this.ᴼ = new Path();
        this.ᴼ.setFillType(Path.FillType.EVEN_ODD);
      }
      else
      {
        this.ᴼ.reset();
      }
      float f1 = (int)this.ᒫ / 2;
      float f2 = this.ᵍ;
      float f3 = (float)(this.ᵐ * Math.cos(0.0D) + paramRect.exactCenterX());
      float f4 = (float)(this.ᵐ * Math.sin(0.0D) + paramRect.exactCenterY());
      this.ᴼ.moveTo(0.0F, 0.0F);
      this.ᴼ.lineTo(this.ᵚ * this.ᵍ, 0.0F);
      this.ᴼ.lineTo(this.ᵚ * this.ᵍ / 2.0F, this.ᵝ * this.ᵍ);
      this.ᴼ.offset(f3 - f1 * f2, f4);
      this.ᴼ.close();
      this.Ꮣ.setColor(this.ᖟ[this.ᘇ]);
      paramCanvas.rotate(paramFloat1 + paramFloat2 - 5.0F, paramRect.exactCenterX(), paramRect.exactCenterY());
      paramCanvas.drawPath(this.ᴼ, this.Ꮣ);
    }
  }
  
  public void draw(Canvas paramCanvas, Rect paramRect)
  {
    RectF localRectF = this.Ꮁ;
    localRectF.set(paramRect);
    localRectF.inset(this.ᒫ, this.ᒫ);
    float f1 = (this.ᒦ + this.ډ) * 360.0F;
    float f2 = (this.ᒨ + this.ډ) * 360.0F - f1;
    this.mPaint.setColor(this.ᖟ[this.ᘇ]);
    paramCanvas.drawArc(localRectF, f1, f2, false, this.mPaint);
    ˊ(paramCanvas, f1, f2, paramRect);
    if (this.ᵦ < 255)
    {
      this.ẋ.setColor(this.ẍ);
      this.ẋ.setAlpha(255 - this.ᵦ);
      paramCanvas.drawCircle(paramRect.exactCenterX(), paramRect.exactCenterY(), paramRect.width() / 2, this.ẋ);
    }
  }
  
  public int getAlpha()
  {
    return this.ᵦ;
  }
  
  public float getStrokeWidth()
  {
    return this.mStrokeWidth;
  }
  
  public void setAlpha(int paramInt)
  {
    this.ᵦ = paramInt;
  }
  
  public void setBackgroundColor(int paramInt)
  {
    this.ẍ = paramInt;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.mPaint.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public void setColors(int[] paramArrayOfInt)
  {
    this.ᖟ = paramArrayOfInt;
    ˮ(0);
  }
  
  public void setRotation(float paramFloat)
  {
    this.ډ = paramFloat;
    invalidateSelf();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    this.mStrokeWidth = paramFloat;
    this.mPaint.setStrokeWidth(paramFloat);
    invalidateSelf();
  }
  
  public void ɩ()
  {
    this.ᘇ = ((this.ᘇ + 1) % this.ᖟ.length);
  }
  
  public float ʵ()
  {
    return this.ᒦ;
  }
  
  public float ʸ()
  {
    return this.ᙇ;
  }
  
  public void ʼ(int paramInt1, int paramInt2)
  {
    float f = Math.min(paramInt1, paramInt2);
    if ((this.ᵐ <= 0.0D) || (f < 0.0F)) {
      f = (float)Math.ceil(this.mStrokeWidth / 2.0F);
    } else {
      f = (float)(f / 2.0F - this.ᵐ);
    }
    this.ᒫ = f;
  }
  
  public void ʾ(boolean paramBoolean)
  {
    if (this.ᴳ != paramBoolean)
    {
      this.ᴳ = paramBoolean;
      invalidateSelf();
    }
  }
  
  public void ʿ(float paramFloat)
  {
    this.ᒦ = paramFloat;
    invalidateSelf();
  }
  
  public float ˀ()
  {
    return this.ᴧ;
  }
  
  public float ˁ()
  {
    return this.ᒨ;
  }
  
  public void ˈ(float paramFloat)
  {
    this.ᒨ = paramFloat;
    invalidateSelf();
  }
  
  public void ˊ(double paramDouble)
  {
    this.ᵐ = paramDouble;
  }
  
  public double ˢ()
  {
    return this.ᵐ;
  }
  
  public float ˤ()
  {
    return this.ᴮ;
  }
  
  public void ˮ(int paramInt)
  {
    this.ᘇ = paramInt;
  }
  
  public void ι()
  {
    this.ᙇ = this.ᒦ;
    this.ᴧ = this.ᒨ;
    this.ᴮ = this.ډ;
  }
  
  public void ৲()
  {
    this.ᙇ = 0.0F;
    this.ᴧ = 0.0F;
    this.ᴮ = 0.0F;
    ʿ(0.0F);
    ˈ(0.0F);
    setRotation(0.0F);
  }
  
  public void ι(float paramFloat)
  {
    if (paramFloat != this.ᵍ)
    {
      this.ᵍ = paramFloat;
      invalidateSelf();
    }
  }
  
  public void ι(float paramFloat1, float paramFloat2)
  {
    this.ᵚ = ((int)paramFloat1);
    this.ᵝ = ((int)paramFloat2);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á.Ë
 * JD-Core Version:    0.7.0.1
 */