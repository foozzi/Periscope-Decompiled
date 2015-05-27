package o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;

public class ᴬ
  extends ᴿ
  implements ᵊ.if, View.OnClickListener, View.OnLongClickListener, ᖦ.if
{
  private CharSequence ḹ;
  private ᵃ ℐ;
  private Drawable 〱;
  private ᵁ.ˊ 丿;
  private ῑ.ˊ בּ;
  private ᴬ.ˊ ﭩ;
  private boolean ﮇ;
  private boolean ﮊ;
  private int ﮞ;
  private int ﮣ;
  private int ﺰ;
  
  public ᴬ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ᴬ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ᴬ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    this.ﮇ = localResources.getBoolean(ڊ.ˊ.abc_config_allowActionMenuItemTextWithIcon);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.ActionMenuItemView, paramInt, 0);
    this.ﮞ = paramContext.getDimensionPixelSize(ڊ.ʽ.ActionMenuItemView_android_minWidth, 0);
    paramContext.recycle();
    this.ﺰ = ((int)(32.0F * localResources.getDisplayMetrics().density + 0.5F));
    setOnClickListener(this);
    setOnLongClickListener(this);
    this.ﮣ = -1;
  }
  
  private void І()
  {
    int i;
    if (!TextUtils.isEmpty(this.ḹ)) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if ((this.〱 == null) || ((this.ℐ.ʶ()) && ((this.ﮇ) || (this.ﮊ)))) {
      j = 1;
    } else {
      j = 0;
    }
    CharSequence localCharSequence;
    if ((i & j) != 0) {
      localCharSequence = this.ḹ;
    } else {
      localCharSequence = null;
    }
    setText(localCharSequence);
  }
  
  public boolean hasText()
  {
    return !TextUtils.isEmpty(getText());
  }
  
  public void onClick(View paramView)
  {
    if (this.丿 != null) {
      this.丿.ˊ(this.ℐ);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    this.ﮇ = getContext().getResources().getBoolean(ڊ.ˊ.abc_config_allowActionMenuItemTextWithIcon);
    І();
  }
  
  public boolean onLongClick(View paramView)
  {
    if (hasText()) {
      return false;
    }
    int[] arrayOfInt = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(localRect);
    Context localContext = getContext();
    int i = getWidth();
    int k = getHeight();
    int m = arrayOfInt[1];
    int n = k / 2;
    int j = arrayOfInt[0] + i / 2;
    i = j;
    if (ﺑ.ˌ(paramView) == 0) {
      i = localContext.getResources().getDisplayMetrics().widthPixels - j;
    }
    paramView = Toast.makeText(localContext, this.ℐ.getTitle(), 0);
    if (m + n < localRect.height()) {
      paramView.setGravity(8388661, i, k);
    } else {
      paramView.setGravity(81, 0, k);
    }
    paramView.show();
    return true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = hasText();
    if ((bool) && (this.ﮣ >= 0)) {
      super.setPadding(this.ﮣ, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int j = getMeasuredWidth();
    if (i == -2147483648) {
      paramInt1 = Math.min(paramInt1, this.ﮞ);
    } else {
      paramInt1 = this.ﮞ;
    }
    if ((i != 1073741824) && (this.ﮞ > 0) && (j < paramInt1)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
    }
    if ((!bool) && (this.〱 != null)) {
      super.setPadding((getMeasuredWidth() - this.〱.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.ℐ.hasSubMenu()) && (this.בּ != null) && (this.בּ.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setCheckable(boolean paramBoolean) {}
  
  public void setChecked(boolean paramBoolean) {}
  
  public void setExpandedFormat(boolean paramBoolean)
  {
    if (this.ﮊ != paramBoolean)
    {
      this.ﮊ = paramBoolean;
      if (this.ℐ != null) {
        this.ℐ.＿();
      }
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    this.〱 = paramDrawable;
    if (paramDrawable != null)
    {
      int m = paramDrawable.getIntrinsicWidth();
      int k = paramDrawable.getIntrinsicHeight();
      int i = m;
      int j = k;
      float f;
      if (m > this.ﺰ)
      {
        f = this.ﺰ / m;
        i = this.ﺰ;
        j = (int)(k * f);
      }
      m = i;
      k = j;
      if (j > this.ﺰ)
      {
        f = this.ﺰ / j;
        k = this.ﺰ;
        m = (int)(i * f);
      }
      paramDrawable.setBounds(0, 0, m, k);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    І();
  }
  
  public void setItemInvoker(ᵁ.ˊ paramˊ)
  {
    this.丿 = paramˊ;
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ﮣ = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setPopupCallback(ᴬ.ˊ paramˊ)
  {
    this.ﭩ = paramˊ;
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.ḹ = paramCharSequence;
    setContentDescription(this.ḹ);
    І();
  }
  
  public ᵃ ʺ()
  {
    return this.ℐ;
  }
  
  public void ˊ(ᵃ paramᵃ, int paramInt)
  {
    this.ℐ = paramᵃ;
    setIcon(paramᵃ.getIcon());
    setTitle(paramᵃ.ˊ(this));
    setId(paramᵃ.getItemId());
    if (paramᵃ.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    setEnabled(paramᵃ.isEnabled());
    if ((paramᵃ.hasSubMenu()) && (this.בּ == null)) {
      this.בּ = new ᴬ.if(this);
    }
  }
  
  public boolean Ι()
  {
    return true;
  }
  
  public boolean і()
  {
    return (hasText()) && (this.ℐ.getIcon() == null);
  }
  
  public boolean ї()
  {
    return hasText();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´¬
 * JD-Core Version:    0.7.0.1
 */