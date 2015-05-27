package o;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class ĺ
  extends LinearLayout
  implements ļ
{
  private ļ.if ړ;
  
  public ĺ(Context paramContext)
  {
    super(paramContext);
  }
  
  public ĺ(Context paramContext, AttributeSet paramAttributeSet)
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
 * Qualified Name:     o.Äº
 * JD-Core Version:    0.7.0.1
 */