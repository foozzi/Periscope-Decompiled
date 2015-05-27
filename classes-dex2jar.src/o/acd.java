package o;

import java.util.ArrayList;
import java.util.List;

public class acd
{
  public final List<anv> boq;
  public final int bxu;
  private final boolean bxv;
  
  acd(fw paramfw)
  {
    paramfw = paramfw.r();
    if (paramfw.has("occupancy"))
    {
      this.bxu = paramfw.เ("occupancy").l();
      this.bxv = true;
    }
    else
    {
      this.bxu = 0;
      this.bxv = false;
    }
    if (paramfw.has("uuids"))
    {
      paramfw = paramfw.เ("uuids").s();
      this.boq = new ArrayList(paramfw.size());
      int i = 0;
      while (i < paramfw.size())
      {
        Object localObject = paramfw.ᴿ(i).r();
        if (((fz)localObject).has("state"))
        {
          localObject = ((fz)localObject).เ("state");
          this.boq.add(anv.ˋ(((fw)localObject).r()));
        }
        i += 1;
      }
      return;
    }
    this.boq = null;
  }
  
  public boolean wH()
  {
    return this.bxv;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.acd
 * JD-Core Version:    0.7.0.1
 */