package o;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;

public class ᴴ
  extends AutoCompleteTextView
{
  private static final int[] Ľ = { 16842964, 16843126 };
  private ৳ Ӵ;
  private ฯ ᒴ;
  
  public ᴴ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ᴴ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, ڊ.if.autoCompleteTextViewStyle);
  }
  
  public ᴴ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(ڍ.ᐝ(paramContext), paramAttributeSet, paramInt);
    if (ฯ.ᴉ)
    {
      paramContext = ๅ.ˊ(getContext(), paramAttributeSet, Ľ, paramInt, 0);
      this.ᒴ = paramContext.ゝ();
      if (paramContext.hasValue(0))
      {
        paramAttributeSet = paramContext.ゝ().ˣ(paramContext.getResourceId(0, -1));
        if (paramAttributeSet != null) {
          setSupportBackgroundTintList(paramAttributeSet);
        }
      }
      if (paramContext.hasValue(1)) {
        setDropDownBackgroundDrawable(paramContext.getDrawable(1));
      }
      paramContext.recycle();
    }
  }
  
  private void ﺘ()
  {
    if ((getBackground() != null) && (this.Ӵ != null)) {
      ฯ.ˊ(this, this.Ӵ);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    ﺘ();
  }
  
  public void setDropDownBackgroundResource(int paramInt)
  {
    setDropDownBackgroundDrawable(this.ᒴ.getDrawable(paramInt));
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.Ӵ == null) {
      this.Ӵ = new ৳();
    }
    this.Ӵ.Ϊ = paramColorStateList;
    this.Ӵ.ᘧ = true;
    ﺘ();
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.Ӵ == null) {
      this.Ӵ = new ৳();
    }
    this.Ӵ.Ї = paramMode;
    this.Ӵ.ᘦ = true;
    ﺘ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´´
 * JD-Core Version:    0.7.0.1
 */