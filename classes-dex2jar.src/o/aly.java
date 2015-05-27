package o;

import android.text.TextPaint;
import android.text.style.ClickableSpan;

public abstract class aly
  extends ClickableSpan
{
  private int ϊ;
  
  public aly(int paramInt)
  {
    this.ϊ = paramInt;
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setUnderlineText(false);
    paramTextPaint.setColor(this.ϊ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aly
 * JD-Core Version:    0.7.0.1
 */