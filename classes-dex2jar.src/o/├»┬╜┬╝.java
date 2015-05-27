package o;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;

public class ｼ<T, Y>
{
  private final int iB;
  private int iD = 0;
  private final LinkedHashMap<T, Y> ng = new LinkedHashMap(100, 0.75F, true);
  private int ᴾ;
  
  public ｼ(int paramInt)
  {
    this.iB = paramInt;
    this.ᴾ = paramInt;
  }
  
  private void ᴧ()
  {
    trimToSize(this.ᴾ);
  }
  
  public Y get(T paramT)
  {
    return this.ng.get(paramT);
  }
  
  public Y put(T paramT, Y paramY)
  {
    if (ᐣ(paramY) >= this.ᴾ)
    {
      ᐝ(paramT, paramY);
      return null;
    }
    paramT = this.ng.put(paramT, paramY);
    if (paramY != null) {
      this.iD += ᐣ(paramY);
    }
    if (paramT != null) {
      this.iD -= ᐣ(paramT);
    }
    ᴧ();
    return paramT;
  }
  
  public Y remove(T paramT)
  {
    paramT = this.ng.remove(paramT);
    if (paramT != null) {
      this.iD -= ᐣ(paramT);
    }
    return paramT;
  }
  
  protected void trimToSize(int paramInt)
  {
    while (this.iD > paramInt)
    {
      Object localObject2 = (Map.Entry)this.ng.entrySet().iterator().next();
      Object localObject1 = ((Map.Entry)localObject2).getValue();
      this.iD -= ᐣ(localObject1);
      localObject2 = ((Map.Entry)localObject2).getKey();
      this.ng.remove(localObject2);
      ᐝ(localObject2, localObject1);
    }
  }
  
  protected void ᐝ(T paramT, Y paramY) {}
  
  protected int ᐣ(Y paramY)
  {
    return 1;
  }
  
  public void ᒪ()
  {
    trimToSize(0);
  }
  
  public int 丿()
  {
    return this.iD;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï½¼
 * JD-Core Version:    0.7.0.1
 */