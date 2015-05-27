package o;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;

public final class ᵃ
  implements ǃ
{
  private static String ᓺ;
  private static String ᓻ;
  private static String ᓾ;
  private static String ᓿ;
  private ᵡ ᒉ;
  private Runnable ᒋ;
  private int ᒍ = 0;
  private View ᒐ;
  private ˤ ᓓ;
  private ᵄ.ˏ ᓕ;
  private boolean ᓗ = false;
  private ContextMenu.ContextMenuInfo ᓚ;
  private final int ᴽ;
  private final int ḟ;
  private final int Ḷ;
  private CharSequence ḹ;
  private CharSequence ḽ;
  private Intent ṝ;
  private char ṿ;
  private char ἲ;
  private Drawable ἳ;
  private int ἴ = 0;
  private MenuItem.OnMenuItemClickListener ἵ;
  private int ῖ = 16;
  private final int ﹷ;
  private ᵁ ｼ;
  
  ᵃ(ᵁ paramᵁ, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    this.ｼ = paramᵁ;
    this.ﹷ = paramInt2;
    this.ᴽ = paramInt1;
    this.ḟ = paramInt3;
    this.Ḷ = paramInt4;
    this.ḹ = paramCharSequence;
    this.ᒍ = paramInt5;
  }
  
  public boolean collapseActionView()
  {
    if ((this.ᒍ & 0x8) == 0) {
      return false;
    }
    if (this.ᒐ == null) {
      return true;
    }
    if ((this.ᓕ == null) || (this.ᓕ.onMenuItemActionCollapse(this))) {
      return this.ｼ.ᐝ(this);
    }
    return false;
  }
  
  public boolean expandActionView()
  {
    if (!ג()) {
      return false;
    }
    if ((this.ᓕ == null) || (this.ᓕ.onMenuItemActionExpand(this))) {
      return this.ｼ.ˏ(this);
    }
    return false;
  }
  
  public ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }
  
  public View getActionView()
  {
    if (this.ᒐ != null) {
      return this.ᒐ;
    }
    if (this.ᓓ != null)
    {
      this.ᒐ = this.ᓓ.onCreateActionView(this);
      return this.ᒐ;
    }
    return null;
  }
  
  public char getAlphabeticShortcut()
  {
    return this.ἲ;
  }
  
  public int getGroupId()
  {
    return this.ᴽ;
  }
  
  public Drawable getIcon()
  {
    if (this.ἳ != null) {
      return this.ἳ;
    }
    if (this.ἴ != 0)
    {
      Drawable localDrawable = ฯ.ˊ(this.ｼ.getContext(), this.ἴ);
      this.ἴ = 0;
      this.ἳ = localDrawable;
      return localDrawable;
    }
    return null;
  }
  
  public Intent getIntent()
  {
    return this.ṝ;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getItemId()
  {
    return this.ﹷ;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return this.ᓚ;
  }
  
  public char getNumericShortcut()
  {
    return this.ṿ;
  }
  
  public int getOrder()
  {
    return this.ḟ;
  }
  
  public int getOrdering()
  {
    return this.Ḷ;
  }
  
  public SubMenu getSubMenu()
  {
    return this.ᒉ;
  }
  
  @ViewDebug.CapturedViewProperty
  public CharSequence getTitle()
  {
    return this.ḹ;
  }
  
  public CharSequence getTitleCondensed()
  {
    CharSequence localCharSequence;
    if (this.ḽ != null) {
      localCharSequence = this.ḽ;
    } else {
      localCharSequence = this.ḹ;
    }
    if ((Build.VERSION.SDK_INT < 18) && (localCharSequence != null) && (!(localCharSequence instanceof String))) {
      return localCharSequence.toString();
    }
    return localCharSequence;
  }
  
  public boolean hasSubMenu()
  {
    return this.ᒉ != null;
  }
  
  public boolean isActionViewExpanded()
  {
    return this.ᓗ;
  }
  
  public boolean isCheckable()
  {
    return (this.ῖ & 0x1) == 1;
  }
  
  public boolean isChecked()
  {
    return (this.ῖ & 0x2) == 2;
  }
  
  public boolean isEnabled()
  {
    return (this.ῖ & 0x10) != 0;
  }
  
  public boolean isVisible()
  {
    if ((this.ᓓ != null) && (this.ᓓ.overridesItemVisibility())) {
      return ((this.ῖ & 0x8) == 0) && (this.ᓓ.isVisible());
    }
    return (this.ῖ & 0x8) == 0;
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (this.ἲ == paramChar) {
      return this;
    }
    this.ἲ = Character.toLowerCase(paramChar);
    this.ｼ.ˑ(false);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    int j = this.ῖ;
    int k = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    this.ῖ = (k & 0xFFFFFFFE | i);
    if (j != this.ῖ) {
      this.ｼ.ˑ(false);
    }
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    if ((this.ῖ & 0x4) != 0)
    {
      this.ｼ.ˏ(this);
      return this;
    }
    ᐧ(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {
      this.ῖ |= 0x10;
    } else {
      this.ῖ &= 0xFFFFFFEF;
    }
    this.ｼ.ˑ(false);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    this.ἳ = null;
    this.ἴ = paramInt;
    this.ｼ.ˑ(false);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    this.ἴ = 0;
    this.ἳ = paramDrawable;
    this.ｼ.ˑ(false);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    this.ṝ = paramIntent;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    if (this.ṿ == paramChar) {
      return this;
    }
    this.ṿ = paramChar;
    this.ｼ.ˑ(false);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.ἵ = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.ṿ = paramChar1;
    this.ἲ = Character.toLowerCase(paramChar2);
    this.ｼ.ˑ(false);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default: 
      break;
    case 0: 
    case 1: 
    case 2: 
      break;
    }
    throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    this.ᒍ = paramInt;
    this.ｼ.ˎ(this);
  }
  
  public MenuItem setTitle(int paramInt)
  {
    return setTitle(this.ｼ.getContext().getString(paramInt));
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.ḹ = paramCharSequence;
    this.ｼ.ˑ(false);
    if (this.ᒉ != null) {
      this.ᒉ.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.ḽ = paramCharSequence;
    if (paramCharSequence == null) {
      paramCharSequence = this.ḹ;
    }
    this.ｼ.ˑ(false);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    if (ᐨ(paramBoolean)) {
      this.ｼ.ˋ(this);
    }
    return this;
  }
  
  public String toString()
  {
    return this.ḹ.toString();
  }
  
  public boolean İ()
  {
    return (this.ῖ & 0x20) == 32;
  }
  
  public boolean Ɩ()
  {
    return (this.ᒍ & 0x1) == 1;
  }
  
  public boolean ɹ()
  {
    return (this.ᒍ & 0x2) == 2;
  }
  
  public boolean ʶ()
  {
    return (this.ᒍ & 0x4) == 4;
  }
  
  public ǃ ˆ(View paramView)
  {
    this.ᒐ = paramView;
    this.ᓓ = null;
    if ((paramView != null) && (paramView.getId() == -1) && (this.ﹷ > 0)) {
      paramView.setId(this.ﹷ);
    }
    this.ｼ.ˎ(this);
    return this;
  }
  
  CharSequence ˊ(ᵊ.if paramif)
  {
    if ((paramif != null) && (paramif.Ι())) {
      return getTitleCondensed();
    }
    return getTitle();
  }
  
  void ˊ(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    this.ᓚ = paramContextMenuInfo;
  }
  
  void ˋ(ᵡ paramᵡ)
  {
    this.ᒉ = paramᵡ;
    paramᵡ.setHeaderTitle(getTitle());
  }
  
  public ˤ ϊ()
  {
    return this.ᓓ;
  }
  
  public boolean ג()
  {
    if ((this.ᒍ & 0x8) != 0)
    {
      if ((this.ᒐ == null) && (this.ᓓ != null)) {
        this.ᒐ = this.ᓓ.onCreateActionView(this);
      }
      return this.ᒐ != null;
    }
    return false;
  }
  
  public void ـ(boolean paramBoolean)
  {
    int j = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 4;
    } else {
      i = 0;
    }
    this.ῖ = (j & 0xFFFFFFFB | i);
  }
  
  void ᐧ(boolean paramBoolean)
  {
    int j = this.ῖ;
    int k = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 2;
    } else {
      i = 0;
    }
    this.ῖ = (k & 0xFFFFFFFD | i);
    if (j != this.ῖ) {
      this.ｼ.ˑ(false);
    }
  }
  
  boolean ᐨ(boolean paramBoolean)
  {
    int j = this.ῖ;
    int k = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 0;
    } else {
      i = 8;
    }
    this.ῖ = (k & 0xFFFFFFF7 | i);
    return j != this.ῖ;
  }
  
  public ǃ יִ(int paramInt)
  {
    Context localContext = this.ｼ.getContext();
    ˆ(LayoutInflater.from(localContext).inflate(paramInt, new LinearLayout(localContext), false));
    return this;
  }
  
  public ǃ יּ(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }
  
  public boolean ﯩ()
  {
    if ((this.ἵ != null) && (this.ἵ.onMenuItemClick(this))) {
      return true;
    }
    if (this.ｼ.ˊ(this.ｼ.ﭔ(), this)) {
      return true;
    }
    if (this.ᒋ != null)
    {
      this.ᒋ.run();
      return true;
    }
    if (this.ṝ != null) {
      try
      {
        this.ｼ.getContext().startActivity(this.ṝ);
        return true;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
      }
    }
    return (this.ᓓ != null) && (this.ᓓ.onPerformDefaultAction());
  }
  
  char ﯾ()
  {
    if (this.ｼ.ᕐ()) {
      return this.ἲ;
    }
    return this.ṿ;
  }
  
  String ﹰ()
  {
    char c = ﯾ();
    if (c == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(ᓺ);
    switch (c)
    {
    default: 
      break;
    case '\n': 
      localStringBuilder.append(ᓻ);
      break;
    case '\b': 
      localStringBuilder.append(ᓾ);
      break;
    case ' ': 
      localStringBuilder.append(ᓿ);
      break;
    }
    localStringBuilder.append(c);
    return localStringBuilder.toString();
  }
  
  public void ﹳ(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.ῖ |= 0x20;
      return;
    }
    this.ῖ &= 0xFFFFFFDF;
  }
  
  boolean ﺗ()
  {
    return (this.ｼ.ᕝ()) && (ﯾ() != 0);
  }
  
  public boolean ﻳ()
  {
    return (this.ῖ & 0x4) != 0;
  }
  
  public void ＿()
  {
    this.ｼ.ˎ(this);
  }
  
  public boolean ﾆ()
  {
    return this.ｼ.ﭠ();
  }
  
  public void ﾞ(boolean paramBoolean)
  {
    this.ᓗ = paramBoolean;
    this.ｼ.ˑ(false);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */