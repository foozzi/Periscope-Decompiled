package o;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class alx
  extends ImageView
{
  private boolean bMB;
  private Drawable bMC;
  private Drawable bMD;
  
  public alx(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext, BG(), BH(), BI(), BJ());
  }
  
  public alx(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˏ(paramContext, paramAttributeSet);
  }
  
  public alx(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˏ(paramContext, paramAttributeSet);
  }
  
  private void tQ()
  {
    if (this.bMB)
    {
      setImageDrawable(this.bMC);
      return;
    }
    setImageDrawable(this.bMD);
  }
  
  private void ˊ(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.bMC = paramContext.getResources().getDrawable(paramInt1);
    this.bMC.mutate().setColorFilter(paramContext.getResources().getColor(paramInt2), PorterDuff.Mode.SRC_ATOP);
    if (paramInt3 > 0)
    {
      this.bMD = paramContext.getResources().getDrawable(paramInt3);
      this.bMD.mutate().setColorFilter(paramContext.getResources().getColor(paramInt4), PorterDuff.Mode.SRC_ATOP);
    }
    else
    {
      this.bMD = null;
    }
    tQ();
  }
  
  private void ˏ(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.PsCheckButton, 0, 0);
    try
    {
      ˊ(paramContext, paramAttributeSet.getResourceId(0, BG()), paramAttributeSet.getResourceId(2, BH()), paramAttributeSet.getResourceId(1, BI()), paramAttributeSet.getResourceId(3, BJ()));
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  protected int BG()
  {
    return 2130837613;
  }
  
  protected int BH()
  {
    return 2131296298;
  }
  
  protected int BI()
  {
    return 2130837666;
  }
  
  protected int BJ()
  {
    return 2131296278;
  }
  
  public boolean isChecked()
  {
    return this.bMB;
  }
  
  public void setChecked(boolean paramBoolean)
  {
    this.bMB = paramBoolean;
    tQ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alx
 * JD-Core Version:    0.7.0.1
 */