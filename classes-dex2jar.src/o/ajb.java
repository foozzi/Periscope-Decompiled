package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.HashSet;
import tv.periscope.android.api.PsUser;

public class ajb
  extends ajn
{
  private final HashSet<String> bGY = new HashSet();
  
  public ajb(Context paramContext, zo paramzo, amw paramamw)
  {
    super(paramContext, paramzo, paramamw);
    this.bHz = new ajc(this, paramzo);
  }
  
  public HashSet<String> Aa()
  {
    return this.bGY;
  }
  
  public void selectAll()
  {
    int i = 0;
    while (i < getItemCount())
    {
      if (getItemViewType(i) == 2)
      {
        PsUser localPsUser = (PsUser)getItem(i);
        this.bGY.add(localPsUser.id);
      }
      i += 1;
    }
  }
  
  public void zY()
  {
    this.bGY.clear();
  }
  
  public boolean zZ()
  {
    int k = 0;
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= getItemCount()) {
        break;
      }
      if ((getItemViewType(i) == 2) && (!this.bGY.contains(((PsUser)getItem(i)).id)))
      {
        j = 1;
        break;
      }
      i += 1;
    }
    return j == 0;
  }
  
  protected ajp ᐝ(ViewGroup paramViewGroup)
  {
    return new ajp(LayoutInflater.from(this.mContext).inflate(2130903116, paramViewGroup, false), this.byZ);
  }
  
  public void ᓭ(String paramString)
  {
    if (this.bGY.contains(paramString))
    {
      this.bGY.remove(paramString);
      return;
    }
    this.bGY.add(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ajb
 * JD-Core Version:    0.7.0.1
 */