package o;

import android.graphics.Rect;
import android.os.Build.VERSION;

public class ﯩ
{
  private static final ﯩ.ˎ ʏ = new ﯩ.ʻ();
  private final Object ʔ;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 22)
    {
      ʏ = new ﯩ.ˊ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 21)
    {
      ʏ = new ﯩ.if();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      ʏ = new ﯩ.ᐝ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 18)
    {
      ʏ = new ﯩ.aux();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      ʏ = new ﯩ.ˏ();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      ʏ = new ﯩ.ˋ();
      return;
    }
  }
  
  public ﯩ(Object paramObject)
  {
    this.ʔ = paramObject;
  }
  
  private static String י(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
      return "ACTION_FOCUS";
    case 2: 
      return "ACTION_CLEAR_FOCUS";
    case 4: 
      return "ACTION_SELECT";
    case 8: 
      return "ACTION_CLEAR_SELECTION";
    case 16: 
      return "ACTION_CLICK";
    case 32: 
      return "ACTION_LONG_CLICK";
    case 64: 
      return "ACTION_ACCESSIBILITY_FOCUS";
    case 128: 
      return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
    case 256: 
      return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
    case 512: 
      return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
    case 1024: 
      return "ACTION_NEXT_HTML_ELEMENT";
    case 2048: 
      return "ACTION_PREVIOUS_HTML_ELEMENT";
    case 4096: 
      return "ACTION_SCROLL_FORWARD";
    case 8192: 
      return "ACTION_SCROLL_BACKWARD";
    case 65536: 
      return "ACTION_CUT";
    case 16384: 
      return "ACTION_COPY";
    case 32768: 
      return "ACTION_PASTE";
    case 131072: 
      return "ACTION_SET_SELECTION";
    }
    return "ACTION_UNKNOWN";
  }
  
  public void addAction(int paramInt)
  {
    ʏ.ˊ(this.ʔ, paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (ﯩ)paramObject;
    if (this.ʔ == null)
    {
      if (paramObject.ʔ != null) {
        return false;
      }
    }
    else if (!this.ʔ.equals(paramObject.ʔ)) {
      return false;
    }
    return true;
  }
  
  public int getActions()
  {
    return ʏ.ͺ(this.ʔ);
  }
  
  public void getBoundsInParent(Rect paramRect)
  {
    ʏ.ˊ(this.ʔ, paramRect);
  }
  
  public void getBoundsInScreen(Rect paramRect)
  {
    ʏ.ˋ(this.ʔ, paramRect);
  }
  
  public CharSequence getClassName()
  {
    return ʏ.ι(this.ʔ);
  }
  
  public CharSequence getContentDescription()
  {
    return ʏ.ʾ(this.ʔ);
  }
  
  public CharSequence getPackageName()
  {
    return ʏ.ʿ(this.ʔ);
  }
  
  public CharSequence getText()
  {
    return ʏ.ˈ(this.ʔ);
  }
  
  public String getViewIdResourceName()
  {
    return ʏ.ՙ(this.ʔ);
  }
  
  public int hashCode()
  {
    if (this.ʔ == null) {
      return 0;
    }
    return this.ʔ.hashCode();
  }
  
  public boolean isCheckable()
  {
    return ʏ.ˉ(this.ʔ);
  }
  
  public boolean isChecked()
  {
    return ʏ.ˌ(this.ʔ);
  }
  
  public boolean isClickable()
  {
    return ʏ.ˍ(this.ʔ);
  }
  
  public boolean isEnabled()
  {
    return ʏ.ˑ(this.ʔ);
  }
  
  public boolean isFocusable()
  {
    return ʏ.ـ(this.ʔ);
  }
  
  public boolean isFocused()
  {
    return ʏ.ᐧ(this.ʔ);
  }
  
  public boolean isLongClickable()
  {
    return ʏ.ᐨ(this.ʔ);
  }
  
  public boolean isPassword()
  {
    return ʏ.ﹳ(this.ʔ);
  }
  
  public boolean isScrollable()
  {
    return ʏ.ﾞ(this.ʔ);
  }
  
  public boolean isSelected()
  {
    return ʏ.ʹ(this.ʔ);
  }
  
  public void setClassName(CharSequence paramCharSequence)
  {
    ʏ.ˊ(this.ʔ, paramCharSequence);
  }
  
  public void setScrollable(boolean paramBoolean)
  {
    ʏ.ˊ(this.ʔ, paramBoolean);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    Rect localRect = new Rect();
    getBoundsInParent(localRect);
    localStringBuilder.append("; boundsInParent: " + localRect);
    getBoundsInScreen(localRect);
    localStringBuilder.append("; boundsInScreen: " + localRect);
    localStringBuilder.append("; packageName: ").append(getPackageName());
    localStringBuilder.append("; className: ").append(getClassName());
    localStringBuilder.append("; text: ").append(getText());
    localStringBuilder.append("; contentDescription: ").append(getContentDescription());
    localStringBuilder.append("; viewId: ").append(getViewIdResourceName());
    localStringBuilder.append("; checkable: ").append(isCheckable());
    localStringBuilder.append("; checked: ").append(isChecked());
    localStringBuilder.append("; focusable: ").append(isFocusable());
    localStringBuilder.append("; focused: ").append(isFocused());
    localStringBuilder.append("; selected: ").append(isSelected());
    localStringBuilder.append("; clickable: ").append(isClickable());
    localStringBuilder.append("; longClickable: ").append(isLongClickable());
    localStringBuilder.append("; enabled: ").append(isEnabled());
    localStringBuilder.append("; password: ").append(isPassword());
    localStringBuilder.append("; scrollable: " + isScrollable());
    localStringBuilder.append("; [");
    int i = getActions();
    while (i != 0)
    {
      int j = 1 << Integer.numberOfTrailingZeros(i);
      i &= (j ^ 0xFFFFFFFF);
      localStringBuilder.append(י(j));
      if (i != 0) {
        localStringBuilder.append(", ");
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void ʼ(Object paramObject)
  {
    ʏ.ˎ(this.ʔ, ((ﯩ.ʼ)paramObject).ʔ);
  }
  
  public void ʽ(Object paramObject)
  {
    ʏ.ˏ(this.ʔ, ﯩ.ʽ.ˊ((ﯩ.ʽ)paramObject));
  }
  
  public Object ː()
  {
    return this.ʔ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¯©
 * JD-Core Version:    0.7.0.1
 */