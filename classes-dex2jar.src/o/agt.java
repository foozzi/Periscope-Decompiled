package o;

import java.util.ArrayList;
import java.util.Iterator;

class agt
  implements Runnable
{
  agt(ags paramags, ArrayList paramArrayList1, ArrayList paramArrayList2, ArrayList paramArrayList3) {}
  
  public void run()
  {
    Iterator localIterator = this.bDU.iterator();
    while (localIterator.hasNext())
    {
      ags.ˊ localˊ = (ags.ˊ)localIterator.next();
      ags.ˊ(this.bDV, localˊ);
    }
    this.ܟ.clear();
    ags.ˊ(this.bDV).remove(this.ܟ);
    this.খ.clear();
    ags.ˋ(this.bDV).remove(this.খ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agt
 * JD-Core Version:    0.7.0.1
 */