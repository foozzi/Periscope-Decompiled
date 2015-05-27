package o;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

class ԇ
  implements ধ
{
  private boolean kJ;
  private final Set<ร> lE = Collections.newSetFromMap(new WeakHashMap());
  private boolean lF;
  
  void onDestroy()
  {
    this.lF = true;
    Iterator localIterator = ﾕ.ˊ(this.lE).iterator();
    while (localIterator.hasNext()) {
      ((ร)localIterator.next()).onDestroy();
    }
  }
  
  void onStart()
  {
    this.kJ = true;
    Iterator localIterator = ﾕ.ˊ(this.lE).iterator();
    while (localIterator.hasNext()) {
      ((ร)localIterator.next()).onStart();
    }
  }
  
  void onStop()
  {
    this.kJ = false;
    Iterator localIterator = ﾕ.ˊ(this.lE).iterator();
    while (localIterator.hasNext()) {
      ((ร)localIterator.next()).onStop();
    }
  }
  
  public void ˊ(ร paramร)
  {
    this.lE.add(paramร);
    if (this.lF)
    {
      paramร.onDestroy();
      return;
    }
    if (this.kJ)
    {
      paramร.onStart();
      return;
    }
    paramร.onStop();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô
 * JD-Core Version:    0.7.0.1
 */