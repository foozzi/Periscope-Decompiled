package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;

public class amc
  extends ImageView
{
  private ColorStateList bMQ;
  private int bMR;
  private int bMS;
  
  public amc(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext, null, 0);
  }
  
  public amc(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext, paramAttributeSet, 0);
  }
  
  public amc(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext, paramAttributeSet, paramInt);
  }
  
  private void BM()
  {
    setColorFilter(this.bMQ.getColorForState(getDrawableState(), 0));
  }
  
  private void ˊ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.PsImageView, paramInt, 0);
    this.bMQ = paramContext.getColorStateList(0);
    this.bMR = paramContext.getResourceId(1, 0);
    this.bMS = paramContext.getResourceId(2, 0);
    paramContext.recycle();
  }
  
  public int BK()
  {
    return this.bMR;
  }
  
  public int BL()
  {
    return this.bMS;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((this.bMQ != null) && (this.bMQ.isStateful())) {
      BM();
    }
  }
  
  public void setColorFilter(ColorStateList paramColorStateList)
  {
    this.bMQ = paramColorStateList;
    super.setColorFilter(paramColorStateList.getColorForState(getDrawableState(), 0));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amc
 * JD-Core Version:    0.7.0.1
 */