package o;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;

public class ᐞ
  implements ﻴ
{
  private CharSequence ε;
  private View ν;
  private final ฯ ᒴ;
  private CharSequence ḹ;
  private Toolbar Ἶ;
  private int Ἷ;
  private Drawable ℷ;
  private ᓴ ⅈ;
  private Drawable Ⅱ;
  private boolean ⅱ;
  private CharSequence 々;
  private Drawable 〱;
  private Window.Callback ぃ;
  private boolean ァ;
  private int ッ = 0;
  private int ヾ = 0;
  private Drawable 乀;
  
  public ᐞ(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, ڊ.ʻ.abc_action_bar_up_description, ڊ.ˎ.abc_ic_ab_back_mtrl_am_alpha);
  }
  
  public ᐞ(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.Ἶ = paramToolbar;
    this.ḹ = paramToolbar.getTitle();
    this.ε = paramToolbar.getSubtitle();
    boolean bool;
    if (this.ḹ != null) {
      bool = true;
    } else {
      bool = false;
    }
    this.ⅱ = bool;
    this.Ⅱ = paramToolbar.getNavigationIcon();
    if (paramBoolean)
    {
      paramToolbar = ๅ.ˊ(paramToolbar.getContext(), null, ڊ.ʽ.ActionBar, ڊ.if.actionBarStyle, 0);
      Object localObject = paramToolbar.getText(ڊ.ʽ.ActionBar_title);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        setTitle((CharSequence)localObject);
      }
      localObject = paramToolbar.getText(ڊ.ʽ.ActionBar_subtitle);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        setSubtitle((CharSequence)localObject);
      }
      localObject = paramToolbar.getDrawable(ڊ.ʽ.ActionBar_logo);
      if (localObject != null) {
        setLogo((Drawable)localObject);
      }
      localObject = paramToolbar.getDrawable(ڊ.ʽ.ActionBar_icon);
      if ((this.Ⅱ == null) && (localObject != null)) {
        setIcon((Drawable)localObject);
      }
      localObject = paramToolbar.getDrawable(ڊ.ʽ.ActionBar_homeAsUpIndicator);
      if (localObject != null) {
        setNavigationIcon((Drawable)localObject);
      }
      setDisplayOptions(paramToolbar.getInt(ڊ.ʽ.ActionBar_displayOptions, 0));
      int i = paramToolbar.getResourceId(ڊ.ʽ.ActionBar_customNavigationLayout, 0);
      if (i != 0)
      {
        setCustomView(LayoutInflater.from(this.Ἶ.getContext()).inflate(i, this.Ἶ, false));
        setDisplayOptions(this.Ἷ | 0x10);
      }
      i = paramToolbar.getLayoutDimension(ڊ.ʽ.ActionBar_height, 0);
      if (i > 0)
      {
        localObject = this.Ἶ.getLayoutParams();
        ((ViewGroup.LayoutParams)localObject).height = i;
        this.Ἶ.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      i = paramToolbar.getDimensionPixelOffset(ڊ.ʽ.ActionBar_contentInsetStart, -1);
      int j = paramToolbar.getDimensionPixelOffset(ڊ.ʽ.ActionBar_contentInsetEnd, -1);
      if ((i >= 0) || (j >= 0)) {
        this.Ἶ.setContentInsetsRelative(Math.max(i, 0), Math.max(j, 0));
      }
      i = paramToolbar.getResourceId(ڊ.ʽ.ActionBar_titleTextStyle, 0);
      if (i != 0) {
        this.Ἶ.setTitleTextAppearance(this.Ἶ.getContext(), i);
      }
      i = paramToolbar.getResourceId(ڊ.ʽ.ActionBar_subtitleTextStyle, 0);
      if (i != 0) {
        this.Ἶ.setSubtitleTextAppearance(this.Ἶ.getContext(), i);
      }
      i = paramToolbar.getResourceId(ڊ.ʽ.ActionBar_popupTheme, 0);
      if (i != 0) {
        this.Ἶ.setPopupTheme(i);
      }
      paramToolbar.recycle();
      this.ᒴ = paramToolbar.ゝ();
    }
    else
    {
      this.Ἷ = ー();
      this.ᒴ = ฯ.ʻ(paramToolbar.getContext());
    }
    ו(paramInt1);
    this.々 = this.Ἶ.getNavigationContentDescription();
    ʽ(this.ᒴ.getDrawable(paramInt2));
    this.Ἶ.setNavigationOnClickListener(new ᓐ(this));
  }
  
  private void ʽ(CharSequence paramCharSequence)
  {
    this.ḹ = paramCharSequence;
    if ((this.Ἷ & 0x8) != 0) {
      this.Ἶ.setTitle(paramCharSequence);
    }
  }
  
  private int ー()
  {
    int i = 11;
    if (this.Ἶ.getNavigationIcon() != null) {
      i = 15;
    }
    return i;
  }
  
  private void ヽ()
  {
    Drawable localDrawable = null;
    if ((this.Ἷ & 0x2) != 0) {
      if ((this.Ἷ & 0x1) != 0)
      {
        if (this.ℷ != null) {
          localDrawable = this.ℷ;
        } else {
          localDrawable = this.〱;
        }
      }
      else {
        localDrawable = this.〱;
      }
    }
    this.Ἶ.setLogo(localDrawable);
  }
  
  private void 一()
  {
    if ((this.Ἷ & 0x4) != 0)
    {
      if (TextUtils.isEmpty(this.々))
      {
        this.Ἶ.setNavigationContentDescription(this.ヾ);
        return;
      }
      this.Ἶ.setNavigationContentDescription(this.々);
    }
  }
  
  private void גּ()
  {
    if ((this.Ἷ & 0x4) != 0)
    {
      Toolbar localToolbar = this.Ἶ;
      Drawable localDrawable;
      if (this.Ⅱ != null) {
        localDrawable = this.Ⅱ;
      } else {
        localDrawable = this.乀;
      }
      localToolbar.setNavigationIcon(localDrawable);
    }
  }
  
  public Context getContext()
  {
    return this.Ἶ.getContext();
  }
  
  public void setCustomView(View paramView)
  {
    if ((this.ν != null) && ((this.Ἷ & 0x10) != 0)) {
      this.Ἶ.removeView(this.ν);
    }
    this.ν = paramView;
    if ((paramView != null) && ((this.Ἷ & 0x10) != 0)) {
      this.Ἶ.addView(this.ν);
    }
  }
  
  public void setDisplayOptions(int paramInt)
  {
    int i = this.Ἷ ^ paramInt;
    this.Ἷ = paramInt;
    if (i != 0)
    {
      if ((i & 0x4) != 0) {
        if ((paramInt & 0x4) != 0)
        {
          גּ();
          一();
        }
        else
        {
          this.Ἶ.setNavigationIcon(null);
        }
      }
      if ((i & 0x3) != 0) {
        ヽ();
      }
      if ((i & 0x8) != 0) {
        if ((paramInt & 0x8) != 0)
        {
          this.Ἶ.setTitle(this.ḹ);
          this.Ἶ.setSubtitle(this.ε);
        }
        else
        {
          this.Ἶ.setTitle(null);
          this.Ἶ.setSubtitle(null);
        }
      }
      if (((i & 0x10) != 0) && (this.ν != null))
      {
        if ((paramInt & 0x10) != 0)
        {
          this.Ἶ.addView(this.ν);
          return;
        }
        this.Ἶ.removeView(this.ν);
      }
    }
  }
  
  public void setIcon(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = this.ᒴ.getDrawable(paramInt);
    } else {
      localDrawable = null;
    }
    setIcon(localDrawable);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    this.〱 = paramDrawable;
    ヽ();
  }
  
  public void setLogo(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = this.ᒴ.getDrawable(paramInt);
    } else {
      localDrawable = null;
    }
    setLogo(localDrawable);
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    this.ℷ = paramDrawable;
    ヽ();
  }
  
  public void setMenu(Menu paramMenu, ᵉ.if paramif)
  {
    if (this.ⅈ == null)
    {
      this.ⅈ = new ᓴ(this.Ἶ.getContext());
      this.ⅈ.setId(ڊ.ˏ.action_menu_presenter);
    }
    this.ⅈ.ˊ(paramif);
    this.Ἶ.setMenu((ᵁ)paramMenu, this.ⅈ);
  }
  
  public void setMenuPrepared()
  {
    this.ァ = true;
  }
  
  public void setNavigationContentDescription(int paramInt)
  {
    String str;
    if (paramInt == 0) {
      str = null;
    } else {
      str = getContext().getString(paramInt);
    }
    setNavigationContentDescription(str);
  }
  
  public void setNavigationContentDescription(CharSequence paramCharSequence)
  {
    this.々 = paramCharSequence;
    一();
  }
  
  public void setNavigationIcon(Drawable paramDrawable)
  {
    this.Ⅱ = paramDrawable;
    גּ();
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.ε = paramCharSequence;
    if ((this.Ἷ & 0x8) != 0) {
      this.Ἶ.setSubtitle(paramCharSequence);
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.ⅱ = true;
    ʽ(paramCharSequence);
  }
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    this.ぃ = paramCallback;
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    if (!this.ⅱ) {
      ʽ(paramCharSequence);
    }
  }
  
  public void ʽ(Drawable paramDrawable)
  {
    if (this.乀 != paramDrawable)
    {
      this.乀 = paramDrawable;
      גּ();
    }
  }
  
  public void ו(int paramInt)
  {
    if (paramInt == this.ヾ) {
      return;
    }
    this.ヾ = paramInt;
    if (TextUtils.isEmpty(this.Ἶ.getNavigationContentDescription())) {
      setNavigationContentDescription(this.ヾ);
    }
  }
  
  public boolean ᴾ()
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */