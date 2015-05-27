package o;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

public class aio
  extends FrameLayout
{
  private View bGv;
  
  public aio(Context paramContext)
  {
    super(paramContext);
  }
  
  public aio(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public aio(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean canScrollVertically(int paramInt)
  {
    return this.bGv.canScrollVertically(paramInt);
  }
  
  protected void onFinishInflate()
  {
    this.bGv = findViewById(2131427423);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aio
 * JD-Core Version:    0.7.0.1
 */