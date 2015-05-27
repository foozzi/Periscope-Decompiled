package org.spongycastle.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class CollectionStore
  implements Store
{
  private Collection bkb;
  
  public CollectionStore(Collection paramCollection)
  {
    this.bkb = new ArrayList(paramCollection);
  }
  
  public Collection ˋ(Selector paramSelector)
  {
    if (paramSelector == null) {
      return new ArrayList(this.bkb);
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.bkb.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if (paramSelector.ɨ(localObject)) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.util.CollectionStore
 * JD-Core Version:    0.7.0.1
 */