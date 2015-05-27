package o;

import java.util.Map.Entry;
import java.util.Set;

public final class fz
  extends fw
{
  private final hk<String, fw> Kv = new hk();
  
  private fw ᵀ(Object paramObject)
  {
    if (paramObject == null) {
      return fy.Ku;
    }
    return new gc(paramObject);
  }
  
  public Set<Map.Entry<String, fw>> entrySet()
  {
    return this.Kv.entrySet();
  }
  
  public boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof fz)) && (((fz)paramObject).Kv.equals(this.Kv)));
  }
  
  public boolean has(String paramString)
  {
    return this.Kv.containsKey(paramString);
  }
  
  public int hashCode()
  {
    return this.Kv.hashCode();
  }
  
  public void ʿ(String paramString1, String paramString2)
  {
    ˊ(paramString1, ᵀ(paramString2));
  }
  
  public void ˊ(String paramString, Number paramNumber)
  {
    ˊ(paramString, ᵀ(paramNumber));
  }
  
  public void ˊ(String paramString, fw paramfw)
  {
    Object localObject = paramfw;
    if (paramfw == null) {
      localObject = fy.Ku;
    }
    this.Kv.put(paramString, localObject);
  }
  
  public fw ۦ(String paramString)
  {
    return (fw)this.Kv.remove(paramString);
  }
  
  public fw เ(String paramString)
  {
    return (fw)this.Kv.get(paramString);
  }
  
  public gc Ꭵ(String paramString)
  {
    return (gc)this.Kv.get(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fz
 * JD-Core Version:    0.7.0.1
 */