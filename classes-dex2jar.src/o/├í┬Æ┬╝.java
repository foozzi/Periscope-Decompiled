package o;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.view.LayoutInflater;

public class ᒼ
  extends ContextWrapper
{
  private int ᔀ;
  private Resources.Theme ᔁ;
  private LayoutInflater 亅;
  
  public ᒼ(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.ᔀ = paramInt;
  }
  
  private void ﹼ()
  {
    boolean bool;
    if (this.ᔁ == null) {
      bool = true;
    } else {
      bool = false;
    }
    if (bool)
    {
      this.ᔁ = getResources().newTheme();
      Resources.Theme localTheme = getBaseContext().getTheme();
      if (localTheme != null) {
        this.ᔁ.setTo(localTheme);
      }
    }
    onApplyThemeResource(this.ᔁ, this.ᔀ, bool);
  }
  
  public Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString))
    {
      if (this.亅 == null) {
        this.亅 = LayoutInflater.from(getBaseContext()).cloneInContext(this);
      }
      return this.亅;
    }
    return getBaseContext().getSystemService(paramString);
  }
  
  public Resources.Theme getTheme()
  {
    if (this.ᔁ != null) {
      return this.ᔁ;
    }
    if (this.ᔀ == 0) {
      this.ᔀ = ڊ.ʼ.Theme_AppCompat_Light;
    }
    ﹼ();
    return this.ᔁ;
  }
  
  protected void onApplyThemeResource(Resources.Theme paramTheme, int paramInt, boolean paramBoolean)
  {
    paramTheme.applyStyle(paramInt, true);
  }
  
  public void setTheme(int paramInt)
  {
    this.ᔀ = paramInt;
    ﹼ();
  }
  
  public int ﹻ()
  {
    return this.ᔀ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¼
 * JD-Core Version:    0.7.0.1
 */