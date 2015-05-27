package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class ᵡ
  extends ᵁ
  implements SubMenu
{
  private ᵁ Ẏ;
  private ᵃ ẗ;
  
  public ᵡ(Context paramContext, ᵁ paramᵁ, ᵃ paramᵃ)
  {
    super(paramContext);
    this.Ẏ = paramᵁ;
    this.ẗ = paramᵃ;
  }
  
  public MenuItem getItem()
  {
    return this.ẗ;
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    super.ʼ(ᵣ.ˊ(getContext(), paramInt));
    return this;
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.ʼ(paramDrawable);
    return this;
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    super.ʻ(getContext().getResources().getString(paramInt));
    return this;
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.ʻ(paramCharSequence);
    return this;
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    super.ˇ(paramView);
    return this;
  }
  
  public SubMenu setIcon(int paramInt)
  {
    this.ẗ.setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    this.ẗ.setIcon(paramDrawable);
    return this;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    this.Ẏ.setQwertyMode(paramBoolean);
  }
  
  boolean ˊ(ᵁ paramᵁ, MenuItem paramMenuItem)
  {
    return (super.ˊ(paramᵁ, paramMenuItem)) || (this.Ẏ.ˊ(paramᵁ, paramMenuItem));
  }
  
  public boolean ˏ(ᵃ paramᵃ)
  {
    return this.Ẏ.ˏ(paramᵃ);
  }
  
  public Menu ר()
  {
    return this.Ẏ;
  }
  
  public boolean ᐝ(ᵃ paramᵃ)
  {
    return this.Ẏ.ᐝ(paramᵃ);
  }
  
  public boolean ᕐ()
  {
    return this.Ẏ.ᕐ();
  }
  
  public boolean ᕝ()
  {
    return this.Ẏ.ᕝ();
  }
  
  public ᵁ ﭔ()
  {
    return this.Ẏ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ¡
 * JD-Core Version:    0.7.0.1
 */