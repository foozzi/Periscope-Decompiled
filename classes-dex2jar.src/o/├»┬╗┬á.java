package o;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.view.Gravity;

public class ﻠ
  extends לּ
  implements ｪ.ˊ
{
  private int fT;
  private boolean ic;
  private final ﻠ.if kF;
  private final ᵨ kG;
  private final ｪ kH;
  private boolean kI;
  private boolean kJ;
  private boolean kK = true;
  private int kL = -1;
  private final Rect kd = new Rect();
  private boolean ke;
  private final Paint kj;
  
  public ﻠ(Context paramContext, ᵨ.if paramif, ი paramი, ﺭ<Bitmap> paramﺭ, int paramInt1, int paramInt2, ⅹ paramⅹ, byte[] paramArrayOfByte, Bitmap paramBitmap)
  {
    this(new ﻠ.if(paramⅹ, paramArrayOfByte, paramContext, paramﺭ, paramInt1, paramInt2, paramif, paramი, paramBitmap));
  }
  
  ﻠ(ﻠ.if paramif)
  {
    if (paramif == null) {
      throw new NullPointerException("GifState must not be null");
    }
    this.kF = paramif;
    this.kG = new ᵨ(paramif.fy);
    this.kj = new Paint();
    this.kG.ˊ(paramif.kM, paramif.fw);
    this.kH = new ｪ(paramif.dV, this, this.kG, paramif.kO, paramif.kP);
  }
  
  private void reset()
  {
    this.kH.clear();
    invalidateSelf();
  }
  
  private void Υ()
  {
    this.fT = 0;
  }
  
  private void ϟ()
  {
    if (this.kG.getFrameCount() == 1)
    {
      invalidateSelf();
      return;
    }
    if (!this.kI)
    {
      this.kI = true;
      this.kH.start();
      invalidateSelf();
    }
  }
  
  private void Ѓ()
  {
    this.kI = false;
    this.kH.stop();
  }
  
  public void draw(Canvas paramCanvas)
  {
    if (this.ic) {
      return;
    }
    if (this.ke)
    {
      Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), this.kd);
      this.ke = false;
    }
    Bitmap localBitmap = this.kH.ҁ();
    if (localBitmap == null) {
      localBitmap = this.kF.kQ;
    }
    paramCanvas.drawBitmap(localBitmap, null, this.kd, this.kj);
  }
  
  public Drawable.ConstantState getConstantState()
  {
    return this.kF;
  }
  
  public byte[] getData()
  {
    return this.kF.fw;
  }
  
  public int getFrameCount()
  {
    return this.kG.getFrameCount();
  }
  
  public int getIntrinsicHeight()
  {
    return this.kF.kQ.getHeight();
  }
  
  public int getIntrinsicWidth()
  {
    return this.kF.kQ.getWidth();
  }
  
  public int getOpacity()
  {
    return -2;
  }
  
  public boolean isRunning()
  {
    return this.kI;
  }
  
  protected void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.ke = true;
  }
  
  public void recycle()
  {
    this.ic = true;
    this.kF.eD.ʽ(this.kF.kQ);
    this.kH.clear();
    this.kH.stop();
  }
  
  public void setAlpha(int paramInt)
  {
    this.kj.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.kj.setColorFilter(paramColorFilter);
  }
  
  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.kK = paramBoolean1;
    if (!paramBoolean1) {
      Ѓ();
    } else if (this.kJ) {
      ϟ();
    }
    return super.setVisible(paramBoolean1, paramBoolean2);
  }
  
  public void start()
  {
    this.kJ = true;
    Υ();
    if (this.kK) {
      ϟ();
    }
  }
  
  public void stop()
  {
    this.kJ = false;
    Ѓ();
    if (Build.VERSION.SDK_INT < 11) {
      reset();
    }
  }
  
  public Bitmap ʇ()
  {
    return this.kF.kQ;
  }
  
  public ﺭ<Bitmap> ʋ()
  {
    return this.kF.kN;
  }
  
  public void ˊ(ﺭ<Bitmap> paramﺭ, Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      throw new NullPointerException("The first frame of the GIF must not be null");
    }
    if (paramﺭ == null) {
      throw new NullPointerException("The frame transformation must not be null");
    }
    this.kF.kN = paramﺭ;
    this.kF.kQ = paramBitmap;
    this.kH.ˊ(paramﺭ);
  }
  
  public void ᑋ(int paramInt)
  {
    if ((paramInt <= 0) && (paramInt != -1) && (paramInt != 0)) {
      throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
    }
    if (paramInt == 0)
    {
      this.kL = this.kG.Ỉ();
      return;
    }
    this.kL = paramInt;
  }
  
  @TargetApi(11)
  public void ᔾ(int paramInt)
  {
    if ((Build.VERSION.SDK_INT >= 11) && (getCallback() == null))
    {
      stop();
      reset();
      return;
    }
    invalidateSelf();
    if (paramInt == this.kG.getFrameCount() - 1) {
      this.fT += 1;
    }
    if ((this.kL != -1) && (this.fT >= this.kL)) {
      stop();
    }
  }
  
  public boolean ﾃ()
  {
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï» 
 * JD-Core Version:    0.7.0.1
 */