package o;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

public class ᴖ
  implements ǃ
{
  private Context mContext;
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
  
  public ᴖ(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence)
  {
    this.mContext = paramContext;
    this.ﹷ = paramInt2;
    this.ᴽ = paramInt1;
    this.ḟ = paramInt3;
    this.Ḷ = paramInt4;
    this.ḹ = paramCharSequence;
  }
  
  public boolean collapseActionView()
  {
    return false;
  }
  
  public boolean expandActionView()
  {
    return false;
  }
  
  public ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException();
  }
  
  public View getActionView()
  {
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
    return this.ἳ;
  }
  
  public Intent getIntent()
  {
    return this.ṝ;
  }
  
  public int getItemId()
  {
    return this.ﹷ;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return null;
  }
  
  public char getNumericShortcut()
  {
    return this.ṿ;
  }
  
  public int getOrder()
  {
    return this.Ḷ;
  }
  
  public SubMenu getSubMenu()
  {
    return null;
  }
  
  public CharSequence getTitle()
  {
    return this.ḹ;
  }
  
  public CharSequence getTitleCondensed()
  {
    if (this.ḽ != null) {
      return this.ḽ;
    }
    return this.ḹ;
  }
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public boolean isActionViewExpanded()
  {
    return false;
  }
  
  public boolean isCheckable()
  {
    return (this.ῖ & 0x1) != 0;
  }
  
  public boolean isChecked()
  {
    return (this.ῖ & 0x2) != 0;
  }
  
  public boolean isEnabled()
  {
    return (this.ῖ & 0x10) != 0;
  }
  
  public boolean isVisible()
  {
    return (this.ῖ & 0x8) == 0;
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    this.ἲ = paramChar;
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    int j = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    this.ῖ = (j & 0xFFFFFFFE | i);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    int j = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 2;
    } else {
      i = 0;
    }
    this.ῖ = (j & 0xFFFFFFFD | i);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    int j = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 16;
    } else {
      i = 0;
    }
    this.ῖ = (j & 0xFFFFFFEF | i);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    this.ἴ = paramInt;
    this.ἳ = ᵣ.ˊ(this.mContext, paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    this.ἳ = paramDrawable;
    this.ἴ = 0;
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    this.ṝ = paramIntent;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    this.ṿ = paramChar;
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException();
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.ἵ = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.ṿ = paramChar1;
    this.ἲ = paramChar2;
    return this;
  }
  
  public void setShowAsAction(int paramInt) {}
  
  public MenuItem setTitle(int paramInt)
  {
    this.ḹ = this.mContext.getResources().getString(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.ḹ = paramCharSequence;
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.ḽ = paramCharSequence;
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    int j = this.ῖ;
    int i;
    if (paramBoolean) {
      i = 0;
    } else {
      i = 8;
    }
    this.ῖ = (j & 0x8 | i);
    return this;
  }
  
  public ǃ ˆ(View paramView)
  {
    throw new UnsupportedOperationException();
  }
  
  public ǃ יִ(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public ǃ יּ(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */