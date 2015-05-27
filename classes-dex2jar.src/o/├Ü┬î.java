package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.TypedValue;

public class ڌ
{
  static final int[] EMPTY_STATE_SET = new int[0];
  static final int[] FOCUSED_STATE_SET;
  static final int[] PRESSED_STATE_SET;
  static final int[] SELECTED_STATE_SET;
  private static final ThreadLocal<TypedValue> ᖽ = new ThreadLocal();
  static final int[] ᖾ = { -16842910 };
  static final int[] ᖿ;
  static final int[] ᗁ;
  static final int[] ᘅ;
  private static final int[] ᘣ = new int[1];
  
  static
  {
    FOCUSED_STATE_SET = new int[] { 16842908 };
    ᖿ = new int[] { 16843518 };
    PRESSED_STATE_SET = new int[] { 16842919 };
    ᗁ = new int[] { 16842912 };
    SELECTED_STATE_SET = new int[] { 16842913 };
    ᘅ = new int[] { -16842919, -16842908 };
  }
  
  static int ˊ(Context paramContext, int paramInt, float paramFloat)
  {
    paramInt = ˋ(paramContext, paramInt);
    return ᐡ.ˎ(paramInt, Math.round(Color.alpha(paramInt) * paramFloat));
  }
  
  public static int ˋ(Context paramContext, int paramInt)
  {
    ᘣ[0] = paramInt;
    paramContext = paramContext.obtainStyledAttributes(null, ᘣ);
    try
    {
      paramInt = paramContext.getColor(0, 0);
      return paramInt;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public static ColorStateList ˎ(Context paramContext, int paramInt)
  {
    ᘣ[0] = paramInt;
    paramContext = paramContext.obtainStyledAttributes(null, ᘣ);
    try
    {
      ColorStateList localColorStateList = paramContext.getColorStateList(0);
      return localColorStateList;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public static int ˏ(Context paramContext, int paramInt)
  {
    Object localObject = ˎ(paramContext, paramInt);
    if ((localObject != null) && (((ColorStateList)localObject).isStateful())) {
      return ((ColorStateList)localObject).getColorForState(ᖾ, ((ColorStateList)localObject).getDefaultColor());
    }
    localObject = ị();
    paramContext.getTheme().resolveAttribute(16842803, (TypedValue)localObject, true);
    return ˊ(paramContext, paramInt, ((TypedValue)localObject).getFloat());
  }
  
  private static TypedValue ị()
  {
    TypedValue localTypedValue2 = (TypedValue)ᖽ.get();
    TypedValue localTypedValue1 = localTypedValue2;
    if (localTypedValue2 == null)
    {
      localTypedValue1 = new TypedValue();
      ᖽ.set(localTypedValue1);
    }
    return localTypedValue1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ú
 * JD-Core Version:    0.7.0.1
 */