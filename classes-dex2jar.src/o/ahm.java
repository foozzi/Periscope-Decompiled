package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.concurrent.atomic.AtomicInteger;

public class ahm
  extends ahl
{
  private final int bEY;
  private final int bEZ;
  private final AtomicInteger bFa = new AtomicInteger(0);
  private Handler mHandler;
  
  public ahm(Context paramContext)
  {
    super(paramContext);
    paramContext = paramContext.getResources();
    this.bEY = paramContext.getDimensionPixelSize(2131361882);
    this.bEZ = paramContext.getDimensionPixelSize(2131361881);
    this.mHandler = new Handler(Looper.getMainLooper());
  }
  
  public void ˊ(View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup.addView(paramView, new ViewGroup.LayoutParams(this.bEY, this.bEZ));
    if localif = new if(ˊ(this.bFa, paramViewGroup, 2), zF(), paramViewGroup, paramView);
    localif.setDuration(3000L);
    localif.setInterpolator(new LinearInterpolator());
    localif.setAnimationListener(new ahn(this, paramViewGroup, paramView));
    paramViewGroup = new AnimationSet(false);
    paramViewGroup.addAnimation(localif);
    paramViewGroup.setInterpolator(new LinearInterpolator());
    paramView.startAnimation(paramViewGroup);
  }
  
  static class if
    extends Animation
  {
    private PathMeasure bFf;
    private View bFg;
    private float bFh;
    private float bFi;
    
    public if(Path paramPath, float paramFloat, View paramView1, View paramView2)
    {
      this.bFf = new PathMeasure(paramPath, false);
      this.bFh = this.bFf.getLength();
      this.bFg = paramView2;
      this.bFi = paramFloat;
      paramView1.setLayerType(2, null);
    }
    
    protected void applyTransformation(float paramFloat, Transformation paramTransformation)
    {
      Matrix localMatrix = paramTransformation.getMatrix();
      this.bFf.getMatrix(this.bFh * paramFloat, localMatrix, 1);
      this.bFg.setRotation(this.bFi * paramFloat);
      double d;
      if (3000.0F * paramFloat < 200.0F)
      {
        d = ƒ.ˊ(paramFloat, 0.0D, 0.06666667014360428D, 0.2000000029802322D, 1.100000023841858D);
        this.bFg.setScaleX((float)d);
        this.bFg.setScaleY((float)d);
      }
      else if (3000.0F * paramFloat < 300.0F)
      {
        d = ƒ.ˊ(paramFloat, 0.06666667014360428D, 0.1000000014901161D, 1.100000023841858D, 1.0D);
        this.bFg.setScaleX((float)d);
        this.bFg.setScaleY((float)d);
      }
      else
      {
        this.bFg.setScaleX(1.0F);
        this.bFg.setScaleY(1.0F);
      }
      paramTransformation.setAlpha(1.0F - paramFloat);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahm
 * JD-Core Version:    0.7.0.1
 */