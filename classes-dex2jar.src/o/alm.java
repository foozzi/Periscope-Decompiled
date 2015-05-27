package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class alm
  extends ImageView
{
  private Bitmap bLQ;
  private Canvas bLR;
  private Path bLS;
  private RectF bLT;
  private float[] bLU;
  private if bLV;
  private int bLW;
  private final Paint mPaint = new Paint();
  private Drawable ذ;
  
  public alm(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext, null, 0);
  }
  
  public alm(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext, paramAttributeSet, 0);
  }
  
  public alm(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext, paramAttributeSet, paramInt);
  }
  
  private void Bx()
  {
    if ((this.bLQ != null) && (!ᓲ.ˉ(getContext()).Ꮀ().ʽ(this.bLQ))) {
      this.bLQ.recycle();
    }
    this.bLQ = null;
    this.bLR = null;
    this.mPaint.setShader(null);
  }
  
  private void ˊ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this.bLS = new Path();
    this.bLT = new RectF();
    this.bLV = if.bLX;
    this.mPaint.setAntiAlias(true);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.MaskImageView);
    paramInt = 0;
    while (paramInt < paramContext.getIndexCount())
    {
      int i = paramContext.getIndex(paramInt);
      switch (i)
      {
      default: 
        break;
      case 0: 
        this.bLV = if.bMa[paramContext.getInteger(i, if.bLX.ordinal())];
      }
      paramInt += 1;
    }
    paramContext.recycle();
  }
  
  private void і(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) || (paramInt2 == 0)) {
      return;
    }
    ი localი = ᓲ.ˉ(getContext()).Ꮀ();
    if ((this.bLQ != null) && (!localი.ʽ(this.bLQ))) {
      this.bLQ.recycle();
    }
    this.bLQ = abd.ˊ(localი, Bitmap.Config.ARGB_8888, paramInt1, paramInt2);
    this.bLR = new Canvas(this.bLQ);
    this.mPaint.setShader(new BitmapShader(this.bLQ, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
    this.bLT.set(0.0F, 0.0F, paramInt1, paramInt2);
    this.bLS.reset();
    if (this.bLV == if.bLZ)
    {
      this.bLS.addRoundRect(this.bLT, this.bLU, Path.Direction.CW);
      return;
    }
    this.bLS.addOval(this.bLT, Path.Direction.CW);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if ((this.bLV == if.bLX) || ((this.ذ == null) && (this.bLW == 0)))
    {
      super.onDraw(paramCanvas);
      return;
    }
    super.onDraw(this.bLR);
    paramCanvas.drawPath(this.bLS, this.mPaint);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = paramInt3 - paramInt1;
    paramInt2 = paramInt4 - paramInt2;
    if ((this.bLQ == null) || (this.bLQ.getHeight() != paramInt2) || (this.bLQ.getWidth() != paramInt1)) {
      і(paramInt1, paramInt2);
    }
  }
  
  public void setCornerRadius(float[] paramArrayOfFloat)
  {
    if (paramArrayOfFloat.length < 4) {
      throw new IllegalArgumentException("Expected radius size 4, got: " + paramArrayOfFloat.length);
    }
    this.bLU = new float[] { paramArrayOfFloat[0], paramArrayOfFloat[0], paramArrayOfFloat[1], paramArrayOfFloat[1], paramArrayOfFloat[2], paramArrayOfFloat[2], paramArrayOfFloat[3], paramArrayOfFloat[3] };
    setMaskType(if.bLZ);
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    if (this.ذ != paramDrawable)
    {
      this.ذ = paramDrawable;
      this.bLW = 0;
      if (paramDrawable == null) {
        Bx();
      } else {
        і(getWidth(), getHeight());
      }
    }
    super.setImageDrawable(paramDrawable);
  }
  
  public void setImageResource(int paramInt)
  {
    if (this.bLW != paramInt)
    {
      this.bLW = paramInt;
      this.ذ = null;
      if (paramInt == 0) {
        Bx();
      } else {
        і(getWidth(), getHeight());
      }
    }
    super.setImageResource(paramInt);
  }
  
  public void setMaskType(if paramif)
  {
    this.bLV = paramif;
  }
  
  public static enum if
  {
    public static final if[] bMa = values();
    
    private if() {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alm
 * JD-Core Version:    0.7.0.1
 */