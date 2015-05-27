package android.support.v7.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;

public class RecyclerView$ι
{
  private SparseArray<ArrayList<RecyclerView.ˑ>> aS = new SparseArray();
  private SparseIntArray aT = new SparseIntArray();
  private int aU = 0;
  
  private ArrayList<RecyclerView.ˑ> ᒻ(int paramInt)
  {
    ArrayList localArrayList2 = (ArrayList)this.aS.get(paramInt);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null)
    {
      localArrayList2 = new ArrayList();
      this.aS.put(paramInt, localArrayList2);
      localArrayList1 = localArrayList2;
      if (this.aT.indexOfKey(paramInt) < 0)
      {
        this.aT.put(paramInt, 5);
        localArrayList1 = localArrayList2;
      }
    }
    return localArrayList1;
  }
  
  public void clear()
  {
    this.aS.clear();
  }
  
  void detach()
  {
    this.aU -= 1;
  }
  
  void ˊ(RecyclerView.if paramif)
  {
    this.aU += 1;
  }
  
  void ˊ(RecyclerView.if paramif1, RecyclerView.if paramif2, boolean paramBoolean)
  {
    if (paramif1 != null) {
      detach();
    }
    if ((!paramBoolean) && (this.aU == 0)) {
      clear();
    }
    if (paramif2 != null) {
      ˊ(paramif2);
    }
  }
  
  public void ٴ(RecyclerView.ˑ paramˑ)
  {
    int i = paramˑ.getItemViewType();
    ArrayList localArrayList = ᒻ(i);
    if (this.aT.get(i) <= localArrayList.size()) {
      return;
    }
    paramˑ.ڌ();
    localArrayList.add(paramˑ);
  }
  
  public RecyclerView.ˑ ᐢ(int paramInt)
  {
    ArrayList localArrayList = (ArrayList)this.aS.get(paramInt);
    if ((localArrayList != null) && (!localArrayList.isEmpty()))
    {
      paramInt = localArrayList.size() - 1;
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)localArrayList.get(paramInt);
      localArrayList.remove(paramInt);
      return localˑ;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.á¾¾
 * JD-Core Version:    0.7.0.1
 */