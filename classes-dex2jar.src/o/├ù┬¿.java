package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;

class ר
  extends ImageView
{
  private Animation.AnimationListener כּ;
  private int ﭨ;
  
  public ר(Context paramContext, int paramInt, float paramFloat)
  {
    super(paramContext);
    float f = getContext().getResources().getDisplayMetrics().density;
    int i = (int)(paramFloat * f * 2.0F);
    int j = (int)(1.75F * f);
    int k = (int)(0.0F * f);
    this.ﭨ = ((int)(3.5F * f));
    if (ᵥ())
    {
      paramContext = new ShapeDrawable(new OvalShape());
      ﺑ.ʻ(this, 4.0F * f);
    }
    else
    {
      paramContext = new ShapeDrawable(new ר.if(this, this.ﭨ, i));
      ﺑ.ˊ(this, 1, paramContext.getPaint());
      paramContext.getPaint().setShadowLayer(this.ﭨ, k, j, 503316480);
      i = this.ﭨ;
      setPadding(i, i, i, i);
    }
    paramContext.getPaint().setColor(paramInt);
    setBackgroundDrawable(paramContext);
  }
  
  private boolean ᵥ()
  {
    return Build.VERSION.SDK_INT >= 21;
  }
  
  public void onAnimationEnd()
  {
    super.onAnimationEnd();
    if (this.כּ != null) {
      this.כּ.onAnimationEnd(getAnimation());
    }
  }
  
  public void onAnimationStart()
  {
    super.onAnimationStart();
    if (this.כּ != null) {
      this.כּ.onAnimationStart(getAnimation());
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (!ᵥ()) {
      setMeasuredDimension(getMeasuredWidth() + this.ﭨ * 2, getMeasuredHeight() + this.ﭨ * 2);
    }
  }
  
  public void setAnimationListener(Animation.AnimationListener paramAnimationListener)
  {
    this.כּ = paramAnimationListener;
  }
  
  public void setBackgroundColor(int paramInt)
  {
    if ((getBackground() instanceof ShapeDrawable)) {
      ((ShapeDrawable)getBackground()).getPaint().setColor(paramInt);
    }
  }
  
  public void setBackgroundColorRes(int paramInt)
  {
    setBackgroundColor(getContext().getResources().getColor(paramInt));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×¨
 * JD-Core Version:    0.7.0.1
 */