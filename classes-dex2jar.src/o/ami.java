package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;

public class ami
  extends TextView
{
  public ami(Context paramContext)
  {
    super(paramContext);
    ˏ(paramContext, null);
  }
  
  public ami(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˏ(paramContext, paramAttributeSet);
  }
  
  public ami(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˏ(paramContext, paramAttributeSet);
  }
  
  private void ˏ(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.PsTextView);
    String str = paramAttributeSet.getString(0);
    try
    {
      setTypeface(amm.ͺ(paramContext, str));
    }
    catch (Exception paramContext)
    {
      akk.ˏ("PsTextView", "Could not get typeface:  " + this + paramContext.getMessage(), paramContext);
    }
    paramAttributeSet.recycle();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ami
 * JD-Core Version:    0.7.0.1
 */