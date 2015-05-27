package o;

import android.content.Context;
import android.content.res.Resources;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.List;

public class ads
  implements alg
{
  private final adw byT;
  private final alf byU;
  private final amw byV;
  
  public ads(adw paramadw, alf paramalf, amw paramamw)
  {
    this.byT = paramadw;
    this.byU = paramalf;
    this.byV = paramamw;
  }
  
  public void xe()
  {
    this.byT.ᕀ(this.byU);
  }
  
  public boolean xf()
  {
    return this.byT.ˢ(this.byU);
  }
  
  public void ˊ(ant paramant, vk paramvk)
  {
    String str;
    if (paramant.Cf() == anu.bNX) {
      str = this.byU.getResources().getString(2131099668, new Object[] { paramant.Cl(), paramant.du() });
    } else {
      str = this.byU.getResources().getString(2131099669, new Object[] { paramant.Cl() });
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ads.ˋ(this, paramant, this.byV, paramvk));
    if (!paramant.Cb().equals(vf.tI().vx())) {
      localArrayList.add(new if(paramant, this.byV, paramvk));
    }
    ˋ(str, localArrayList);
  }
  
  public void ˋ(String paramString, List<? extends ale> paramList)
  {
    this.byU.setSnippet(paramString);
    this.byU.setActions(paramList);
    paramString = this.byU.getViewTreeObserver();
    paramString.addOnPreDrawListener(new adt(this, paramString));
  }
  
  class if
    extends ads.ˊ
  {
    private final ali byY = new ali();
    
    if(ant paramant, amw paramamw, vk paramvk)
    {
      super(paramant, paramamw, paramvk);
    }
    
    public int getIconResId()
    {
      return 2130837654;
    }
    
    public int getIconTint()
    {
      return 2131296319;
    }
    
    protected void xg()
    {
      this.bza.tP();
      amw localamw = ads.ˎ(ads.this);
      String str2 = this.brj.Cb();
      String str3 = this.brj.Cl();
      String str1;
      if (this.brj.Cf() == anu.bNX) {
        str1 = this.brj.du();
      } else {
        str1 = null;
      }
      localamw.ʾ(str2, str3, str1);
    }
    
    public ali xh()
    {
      return this.byY;
    }
    
    public String ʲ(Context paramContext)
    {
      return paramContext.getString(2131099672);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ads
 * JD-Core Version:    0.7.0.1
 */