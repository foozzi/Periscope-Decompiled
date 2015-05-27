package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;

public class ᴾ
  extends LinearLayout
  implements ᵊ.if
{
  private Context mContext;
  private ImageView ŧ;
  private RadioButton Ƭ;
  private TextView ȑ;
  private CheckBox ț;
  private TextView ɤ;
  private Drawable ɬ;
  private int Τ;
  private Context ο;
  private boolean υ;
  private int Т;
  private boolean о;
  private ᵃ ℐ;
  private LayoutInflater 亅;
  
  public ᴾ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ᴾ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.MenuView, paramInt, 0);
    this.ɬ = paramAttributeSet.getDrawable(ڊ.ʽ.MenuView_android_itemBackground);
    this.Τ = paramAttributeSet.getResourceId(ڊ.ʽ.MenuView_android_itemTextAppearance, -1);
    this.υ = paramAttributeSet.getBoolean(ڊ.ʽ.MenuView_preserveIconSpacing, false);
    this.ο = paramContext;
    paramAttributeSet.recycle();
  }
  
  private void ᒾ()
  {
    this.ŧ = ((ImageView)ᔾ().inflate(ڊ.ᐝ.abc_list_menu_item_icon, this, false));
    addView(this.ŧ, 0);
  }
  
  private void ᓪ()
  {
    this.Ƭ = ((RadioButton)ᔾ().inflate(ڊ.ᐝ.abc_list_menu_item_radio, this, false));
    addView(this.Ƭ);
  }
  
  private void ᓫ()
  {
    this.ț = ((CheckBox)ᔾ().inflate(ڊ.ᐝ.abc_list_menu_item_checkbox, this, false));
    addView(this.ț);
  }
  
  private LayoutInflater ᔾ()
  {
    if (this.亅 == null) {
      this.亅 = LayoutInflater.from(this.mContext);
    }
    return this.亅;
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setBackgroundDrawable(this.ɬ);
    this.ȑ = ((TextView)findViewById(ڊ.ˏ.title));
    if (this.Τ != -1) {
      this.ȑ.setTextAppearance(this.ο, this.Τ);
    }
    this.ɤ = ((TextView)findViewById(ڊ.ˏ.shortcut));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.ŧ != null) && (this.υ))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)this.ŧ.getLayoutParams();
      if ((localLayoutParams.height > 0) && (localLayoutParams1.width <= 0)) {
        localLayoutParams1.width = localLayoutParams.height;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.Ƭ == null) && (this.ț == null)) {
      return;
    }
    Object localObject1;
    Object localObject2;
    if (this.ℐ.ﻳ())
    {
      if (this.Ƭ == null) {
        ᓪ();
      }
      localObject1 = this.Ƭ;
      localObject2 = this.ț;
    }
    else
    {
      if (this.ț == null) {
        ᓫ();
      }
      localObject1 = this.ț;
      localObject2 = this.Ƭ;
    }
    if (paramBoolean)
    {
      ((CompoundButton)localObject1).setChecked(this.ℐ.isChecked());
      int i;
      if (paramBoolean) {
        i = 0;
      } else {
        i = 8;
      }
      if (((CompoundButton)localObject1).getVisibility() != i) {
        ((CompoundButton)localObject1).setVisibility(i);
      }
      if ((localObject2 != null) && (((CompoundButton)localObject2).getVisibility() != 8)) {
        ((CompoundButton)localObject2).setVisibility(8);
      }
      return;
    }
    if (this.ț != null) {
      this.ț.setVisibility(8);
    }
    if (this.Ƭ != null) {
      this.Ƭ.setVisibility(8);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    Object localObject;
    if (this.ℐ.ﻳ())
    {
      if (this.Ƭ == null) {
        ᓪ();
      }
      localObject = this.Ƭ;
    }
    else
    {
      if (this.ț == null) {
        ᓫ();
      }
      localObject = this.ț;
    }
    ((CompoundButton)localObject).setChecked(paramBoolean);
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    this.о = paramBoolean;
    this.υ = paramBoolean;
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    int i;
    if ((this.ℐ.ﾆ()) || (this.о)) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i == 0) && (!this.υ)) {
      return;
    }
    if ((this.ŧ == null) && (paramDrawable == null) && (!this.υ)) {
      return;
    }
    if (this.ŧ == null) {
      ᒾ();
    }
    if ((paramDrawable != null) || (this.υ))
    {
      ImageView localImageView = this.ŧ;
      if (i == 0) {
        paramDrawable = null;
      }
      localImageView.setImageDrawable(paramDrawable);
      if (this.ŧ.getVisibility() != 0) {
        this.ŧ.setVisibility(0);
      }
    }
    else
    {
      this.ŧ.setVisibility(8);
    }
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar)
  {
    if ((paramBoolean) && (this.ℐ.ﺗ())) {
      paramChar = '\000';
    } else {
      paramChar = '\b';
    }
    if (paramChar == 0) {
      this.ɤ.setText(this.ℐ.ﹰ());
    }
    if (this.ɤ.getVisibility() != paramChar) {
      this.ɤ.setVisibility(paramChar);
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      this.ȑ.setText(paramCharSequence);
      if (this.ȑ.getVisibility() != 0) {
        this.ȑ.setVisibility(0);
      }
    }
    else if (this.ȑ.getVisibility() != 8)
    {
      this.ȑ.setVisibility(8);
    }
  }
  
  public ᵃ ʺ()
  {
    return this.ℐ;
  }
  
  public void ˊ(ᵃ paramᵃ, int paramInt)
  {
    this.ℐ = paramᵃ;
    this.Т = paramInt;
    if (paramᵃ.isVisible()) {
      paramInt = 0;
    } else {
      paramInt = 8;
    }
    setVisibility(paramInt);
    setTitle(paramᵃ.ˊ(this));
    setCheckable(paramᵃ.isCheckable());
    setShortcut(paramᵃ.ﺗ(), paramᵃ.ﯾ());
    setIcon(paramᵃ.getIcon());
    setEnabled(paramᵃ.isEnabled());
  }
  
  public boolean Ι()
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´¾
 * JD-Core Version:    0.7.0.1
 */