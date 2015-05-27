package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

public class ๅ
{
  private final Context mContext;
  private ฯ ᒴ;
  private final TypedArray ỵ;
  
  private ๅ(Context paramContext, TypedArray paramTypedArray)
  {
    this.mContext = paramContext;
    this.ỵ = paramTypedArray;
  }
  
  public static ๅ ˊ(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    return new ๅ(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt));
  }
  
  public static ๅ ˊ(Context paramContext, AttributeSet paramAttributeSet, int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    return new ๅ(paramContext, paramContext.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, paramInt1, paramInt2));
  }
  
  public boolean getBoolean(int paramInt, boolean paramBoolean)
  {
    return this.ỵ.getBoolean(paramInt, paramBoolean);
  }
  
  public int getDimensionPixelOffset(int paramInt1, int paramInt2)
  {
    return this.ỵ.getDimensionPixelOffset(paramInt1, paramInt2);
  }
  
  public int getDimensionPixelSize(int paramInt1, int paramInt2)
  {
    return this.ỵ.getDimensionPixelSize(paramInt1, paramInt2);
  }
  
  public Drawable getDrawable(int paramInt)
  {
    if (this.ỵ.hasValue(paramInt))
    {
      int i = this.ỵ.getResourceId(paramInt, 0);
      if (i != 0) {
        return ゝ().getDrawable(i);
      }
    }
    return this.ỵ.getDrawable(paramInt);
  }
  
  public float getFloat(int paramInt, float paramFloat)
  {
    return this.ỵ.getFloat(paramInt, paramFloat);
  }
  
  public int getInt(int paramInt1, int paramInt2)
  {
    return this.ỵ.getInt(paramInt1, paramInt2);
  }
  
  public int getInteger(int paramInt1, int paramInt2)
  {
    return this.ỵ.getInteger(paramInt1, paramInt2);
  }
  
  public int getLayoutDimension(int paramInt1, int paramInt2)
  {
    return this.ỵ.getLayoutDimension(paramInt1, paramInt2);
  }
  
  public int getResourceId(int paramInt1, int paramInt2)
  {
    return this.ỵ.getResourceId(paramInt1, paramInt2);
  }
  
  public String getString(int paramInt)
  {
    return this.ỵ.getString(paramInt);
  }
  
  public CharSequence getText(int paramInt)
  {
    return this.ỵ.getText(paramInt);
  }
  
  public boolean hasValue(int paramInt)
  {
    return this.ỵ.hasValue(paramInt);
  }
  
  public int length()
  {
    return this.ỵ.length();
  }
  
  public void recycle()
  {
    this.ỵ.recycle();
  }
  
  public ฯ ゝ()
  {
    if (this.ᒴ == null) {
      this.ᒴ = ฯ.ʻ(this.mContext);
    }
    return this.ᒴ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¹
 * JD-Core Version:    0.7.0.1
 */