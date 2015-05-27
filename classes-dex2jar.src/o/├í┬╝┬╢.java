package o;

import android.util.SparseArray;

public final class ἶ
  implements ᒬ
{
  public final int tC;
  public final ব tD;
  public final long tN;
  private ʎ uK;
  private final ᒎ ub;
  private final SparseArray<ᒌ> ue;
  private volatile boolean uh;
  private boolean uj;
  private final boolean yh;
  private boolean yi;
  
  public ἶ(int paramInt, ব paramব, long paramLong, ᒎ paramᒎ, boolean paramBoolean)
  {
    this.tC = paramInt;
    this.tD = paramব;
    this.tN = paramLong;
    this.ub = paramᒎ;
    this.yh = paramBoolean;
    this.ue = new SparseArray();
  }
  
  public void clear()
  {
    int i = 0;
    while (i < this.ue.size())
    {
      ((ᒌ)this.ue.valueAt(i)).clear();
      i += 1;
    }
  }
  
  public int getTrackCount()
  {
    return this.ue.size();
  }
  
  public void ʻ(int paramInt, long paramLong)
  {
    ړ.ᐟ(Ⅴ());
    ((ᒌ)this.ue.valueAt(paramInt)).ٴ(paramLong);
  }
  
  public void ˊ(ʎ paramʎ)
  {
    this.uK = paramʎ;
    this.ub.ˊ(this);
  }
  
  public void ˊ(ᒲ paramᒲ) {}
  
  public final void ˊ(ἶ paramἶ)
  {
    if ((this.yi) || (!paramἶ.yh) || (!paramἶ.Ⅴ())) {
      return;
    }
    boolean bool = true;
    int j = getTrackCount();
    int i = 0;
    while (i < j)
    {
      bool &= ((ᒌ)this.ue.valueAt(i)).ˊ((ᒌ)paramἶ.ue.valueAt(i));
      i += 1;
    }
    this.yi = bool;
  }
  
  public boolean ˊ(int paramInt, ڋ paramڋ)
  {
    ړ.ᐟ(Ⅴ());
    return ((ᒌ)this.ue.valueAt(paramInt)).ˊ(paramڋ);
  }
  
  public int ˋ(ᒑ paramᒑ)
  {
    int i = this.ub.ˊ(paramᒑ, null);
    boolean bool;
    if (i != 1) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    return i;
  }
  
  public ᒳ ר(int paramInt)
  {
    ᒌ localᒌ = new ᒌ(this.uK);
    this.ue.put(paramInt, localᒌ);
    return localᒌ;
  }
  
  public long ᒬ()
  {
    long l = -9223372036854775808L;
    int i = 0;
    while (i < this.ue.size())
    {
      l = Math.max(l, ((ᒌ)this.ue.valueAt(i)).ᒬ());
      i += 1;
    }
    return l;
  }
  
  public void ᒯ()
  {
    this.uh = true;
  }
  
  public boolean Ⅴ()
  {
    if ((!this.uj) && (this.uh))
    {
      int i = 0;
      while (i < this.ue.size())
      {
        if (!((ᒌ)this.ue.valueAt(i)).ᒎ()) {
          return false;
        }
        i += 1;
      }
      this.uj = true;
    }
    return this.uj;
  }
  
  public ب ﭘ(int paramInt)
  {
    return ((ᒌ)this.ue.valueAt(paramInt)).ᒑ();
  }
  
  public boolean ﺒ(int paramInt)
  {
    ړ.ᐟ(Ⅴ());
    return !((ᒌ)this.ue.valueAt(paramInt)).isEmpty();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¼¶
 * JD-Core Version:    0.7.0.1
 */