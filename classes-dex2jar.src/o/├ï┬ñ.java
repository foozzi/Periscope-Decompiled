package o;

import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class ˤ
{
  private ˤ.if ŀ;
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public boolean isVisible()
  {
    return true;
  }
  
  public abstract View onCreateActionView();
  
  public View onCreateActionView(MenuItem paramMenuItem)
  {
    return onCreateActionView();
  }
  
  public boolean onPerformDefaultAction()
  {
    return false;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu) {}
  
  public boolean overridesItemVisibility()
  {
    return false;
  }
  
  public void ˊ(ˤ.if paramif)
  {
    this.ŀ = paramif;
  }
  
  public void ˎ(boolean paramBoolean)
  {
    if (this.ŀ != null) {
      this.ŀ.ˏ(paramBoolean);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë¤
 * JD-Core Version:    0.7.0.1
 */