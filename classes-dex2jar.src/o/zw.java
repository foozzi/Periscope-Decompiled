package o;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class zw
  implements zz<anh>
{
  protected final Map<String, xh> bsh;
  private final int bsi;
  private final Set<zz.if> bsj = new HashSet();
  private final if bsk;
  protected int bsl;
  private ArrayList<anh> ﮂ = new ArrayList();
  
  public zw(Map<String, xh> paramMap, int paramInt)
  {
    this.bsh = paramMap;
    this.bsi = paramInt;
    this.bsk = new if();
  }
  
  private void sort()
  {
    zy localzy = new zy(this.bsh);
    zq[] arrayOfzq = zq.bsf;
    int j = arrayOfzq.length;
    int i = 0;
    while (i < j)
    {
      zq localzq = arrayOfzq[i];
      Collections.sort(this.ﮂ, localzy.ˊ(localzq));
      i += 1;
    }
    Collections.sort(this.ﮂ, this.bsk);
  }
  
  private void va()
  {
    if (this.bsi > 0)
    {
      int j = Math.min(vc(), this.bsi);
      int i = 0;
      while (i < j)
      {
        xh localxh = ｪ(i);
        if ((localxh != null) && (localxh.uh()) && (ˎ(localxh))) {
          this.ﮂ.set(i, anh.ˊ(anh.if.bNK, localxh.id));
        }
        i += 1;
      }
    }
  }
  
  public void clear()
  {
    this.ﮂ.clear();
  }
  
  public List<anh> vb()
  {
    return this.ﮂ;
  }
  
  public int vc()
  {
    return this.ﮂ.size();
  }
  
  public int vd()
  {
    return this.bsl;
  }
  
  public final void ʻ(Collection<anh> paramCollection)
  {
    int i = this.ﮂ.size();
    this.ﮂ.clear();
    this.ﮂ.addAll(paramCollection);
    sort();
    va();
    ᐝ(paramCollection);
    int j = this.ﮂ.size();
    paramCollection = this.bsj.iterator();
    while (paramCollection.hasNext())
    {
      zz.if localif = (zz.if)paramCollection.next();
      if (i == 0) {
        localif.ᐟ(0, j);
      } else {
        localif.onDataSetChanged();
      }
    }
  }
  
  public void ˊ(zz.if paramif)
  {
    this.bsj.add(paramif);
  }
  
  public void ˋ(zz.if paramif)
  {
    this.bsj.remove(paramif);
  }
  
  protected abstract boolean ˎ(xh paramxh);
  
  protected abstract void ᐝ(Collection<anh> paramCollection);
  
  public xh ー(String paramString)
  {
    if (anw.ᐨ(paramString)) {
      return (xh)this.bsh.get(paramString);
    }
    return null;
  }
  
  public xh ｪ(int paramInt)
  {
    return ー(ﾃ(paramInt).BW());
  }
  
  public anh ﾃ(int paramInt)
  {
    return (anh)this.ﮂ.get(paramInt);
  }
  
  class if
    implements Comparator<anh>
  {
    if() {}
    
    public int ˊ(anh paramanh1, anh paramanh2)
    {
      paramanh1 = (xh)zw.this.bsh.get(paramanh1.BW());
      paramanh2 = (xh)zw.this.bsh.get(paramanh2.BW());
      if ((paramanh1 != null) && (paramanh2 != null)) {
        return Boolean.valueOf(zw.this.ˎ(paramanh1)).compareTo(Boolean.valueOf(zw.this.ˎ(paramanh2))) * -1;
      }
      if (paramanh1 != null) {
        return -1;
      }
      return 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zw
 * JD-Core Version:    0.7.0.1
 */