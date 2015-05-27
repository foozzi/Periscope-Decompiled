package o;

import java.util.ArrayList;
import java.util.Iterator;

class agu
  implements Runnable
{
  agu(ags paramags, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = this.এ.iterator();
    while (localIterator.hasNext())
    {
      ags.if localif = (ags.if)localIterator.next();
      ags.ˊ(this.bDV, localif);
    }
    this.এ.clear();
    ags.ˎ(this.bDV).remove(this.এ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.agu
 * JD-Core Version:    0.7.0.1
 */