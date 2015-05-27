package o;

import java.util.ArrayList;
import java.util.List;

final class oz
{
  private static final List<oz> Um = new ArrayList();
  pe Uf;
  Object Ug;
  oz Un;
  
  private oz(Object paramObject, pe parampe)
  {
    this.Ug = paramObject;
    this.Uf = parampe;
  }
  
  static void ˋ(oz paramoz)
  {
    paramoz.Ug = null;
    paramoz.Uf = null;
    paramoz.Un = null;
    synchronized (Um)
    {
      if (Um.size() < 10000) {
        Um.add(paramoz);
      }
      return;
    }
  }
  
  static oz ˎ(pe parampe, Object paramObject)
  {
    synchronized (Um)
    {
      int i = Um.size();
      if (i > 0)
      {
        oz localoz = (oz)Um.remove(i - 1);
        localoz.Ug = paramObject;
        localoz.Uf = parampe;
        localoz.Un = null;
        return localoz;
      }
    }
    return new oz(paramObject, parampe);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.oz
 * JD-Core Version:    0.7.0.1
 */