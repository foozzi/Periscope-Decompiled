package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;

public class ᴿ
  extends TextView
{
  public ᴿ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ᴿ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ᴿ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.AppCompatTextView, paramInt, 0);
    int i = localTypedArray.getResourceId(ڊ.ʽ.AppCompatTextView_android_textAppearance, -1);
    localTypedArray.recycle();
    if (i != -1)
    {
      localTypedArray = paramContext.obtainStyledAttributes(i, ڊ.ʽ.TextAppearance);
      if (localTypedArray.hasValue(ڊ.ʽ.TextAppearance_textAllCaps)) {
        setAllCaps(localTypedArray.getBoolean(ڊ.ʽ.TextAppearance_textAllCaps, false));
      }
      localTypedArray.recycle();
    }
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.AppCompatTextView, paramInt, 0);
    if (paramContext.hasValue(ڊ.ʽ.AppCompatTextView_textAllCaps)) {
      setAllCaps(paramContext.getBoolean(ڊ.ʽ.AppCompatTextView_textAllCaps, false));
    }
    paramContext.recycle();
  }
  
  public void setAllCaps(boolean paramBoolean)
  {
    ว localว;
    if (paramBoolean) {
      localว = new ว(getContext());
    } else {
      localว = null;
    }
    setTransformationMethod(localว);
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramInt, ڊ.ʽ.TextAppearance);
    if (paramContext.hasValue(ڊ.ʽ.TextAppearance_textAllCaps)) {
      setAllCaps(paramContext.getBoolean(ڊ.ʽ.TextAppearance_textAllCaps, false));
    }
    paramContext.recycle();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´¿
 * JD-Core Version:    0.7.0.1
 */