package o;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;

public class ĭ
  extends FrameLayout
  implements ļ
{
  private ļ.if ړ;
  
  public ĭ(Context paramContext)
  {
    super(paramContext);
  }
  
  public ĭ(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected boolean fitSystemWindows(Rect paramRect)
  {
    if (this.ړ != null) {
      this.ړ.ˋ(paramRect);
    }
    return super.fitSystemWindows(paramRect);
  }
  
  public void setOnFitSystemWindowsListener(ļ.if paramif)
  {
    this.ړ = paramif;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ä­
 * JD-Core Version:    0.7.0.1
 */