package o;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

public class ۃ
  extends ImageView
{
  private static final int[] Ľ = { 16842964, 16843033 };
  private final ฯ ᒴ;
  
  public ۃ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ۃ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ۃ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = ๅ.ˊ(getContext(), paramAttributeSet, Ľ, paramInt, 0);
    if (paramContext.length() > 0)
    {
      if (paramContext.hasValue(0)) {
        setBackgroundDrawable(paramContext.getDrawable(0));
      }
      if (paramContext.hasValue(1)) {
        setImageDrawable(paramContext.getDrawable(1));
      }
    }
    paramContext.recycle();
    this.ᒴ = paramContext.ゝ();
  }
  
  public void setImageResource(int paramInt)
  {
    setImageDrawable(this.ᒴ.getDrawable(paramInt));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û
 * JD-Core Version:    0.7.0.1
 */