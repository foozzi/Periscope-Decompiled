package o;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class zp
{
  private final ot bny;
  private zw brW;
  private zw brX;
  private HashMap<String, xh> brY = new HashMap();
  private HashMap<String, anf> brZ = new HashMap();
  
  public zp(ot paramot)
  {
    this.bny = paramot;
    this.brX = new if(this.brY);
    this.brW = new zp.ˊ(this.brY);
  }
  
  private void ˊ(xh paramxh)
  {
    xh localxh = (xh)this.brY.get(paramxh.id);
    if ((localxh != null) && (localxh.boV)) {
      paramxh.boV = true;
    }
    this.brY.put(paramxh.id, paramxh);
  }
  
  public void logout()
  {
    this.brW.clear();
    this.brX.clear();
    this.brZ.clear();
    this.brY.clear();
  }
  
  public zw uW()
  {
    return this.brX;
  }
  
  public zw uX()
  {
    return this.brW;
  }
  
  public void uY()
  {
    this.bny.ˣ(aak.bua);
  }
  
  public void uZ()
  {
    this.bny.ˣ(aak.btW);
  }
  
  public void ˊ(String paramString, anf paramanf)
  {
    this.brZ.put(paramString, paramanf);
  }
  
  public void ˊ(List<xh> paramList1, List<xh> paramList2, List<xh> paramList3)
  {
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    HashSet localHashSet3 = new HashSet();
    paramList3 = paramList3.iterator();
    while (paramList3.hasNext()) {
      ˊ((xh)paramList3.next());
    }
    paramList1 = paramList1.iterator();
    while (paramList1.hasNext())
    {
      paramList3 = (xh)paramList1.next();
      if (paramList3.boU) {
        localHashSet2.add(anh.ᵖ(paramList3.id));
      }
      ˊ(paramList3);
    }
    paramList1 = paramList2.iterator();
    while (paramList1.hasNext())
    {
      paramList2 = (xh)paramList1.next();
      if (paramList2.uh()) {
        localHashSet1.add(anh.ᵖ(paramList2.id));
      } else if (paramList2.boU) {
        localHashSet2.add(anh.ᵖ(paramList2.id));
      } else {
        localHashSet3.add(anh.ᵖ(paramList2.id));
      }
      ˊ(paramList2);
    }
    paramList1 = new HashSet();
    paramList1.addAll(localHashSet1);
    paramList1.addAll(localHashSet2);
    paramList1.addAll(localHashSet3);
    this.brW.ʻ(paramList1);
    uZ();
  }
  
  public void ˋ(xh paramxh)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramxh);
    ᐧ(localArrayList);
  }
  
  public void ˏ(String paramString, int paramInt1, int paramInt2)
  {
    this.brZ.put(paramString, anf.ۥ(paramInt2, 0, paramInt1));
  }
  
  public void ـ(List<xh> paramList)
  {
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      xh localxh = (xh)paramList.next();
      localHashSet.add(anh.ᵖ(localxh.id));
      this.brY.put(localxh.id, localxh);
    }
    this.brX.ʻ(localHashSet);
    uY();
  }
  
  public void ᐧ(List<xh> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      xh localxh1 = (xh)paramList.next();
      xh localxh2 = (xh)this.brY.get(localxh1.id);
      if (localxh2 != null)
      {
        if (((localxh2.uh()) || (localxh2.boX)) && (!localxh1.uh())) {
          localxh1.boX = true;
        }
        if (localxh2.boV) {
          localxh1.boV = true;
        }
      }
      this.brY.put(localxh1.id, localxh1);
    }
    this.bny.ˣ(aak.btX);
  }
  
  public xh ị(String paramString)
  {
    return (xh)this.brY.get(paramString);
  }
  
  public anf ゝ(String paramString)
  {
    return (anf)this.brZ.get(paramString);
  }
  
  static class if
    extends zw
  {
    public if(Map<String, xh> paramMap)
    {
      super(3);
    }
    
    public String id()
    {
      return "global_provider";
    }
    
    protected boolean ˎ(xh paramxh)
    {
      return paramxh.boV;
    }
    
    public void ᐝ(Collection<anh> paramCollection) {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zp
 * JD-Core Version:    0.7.0.1
 */