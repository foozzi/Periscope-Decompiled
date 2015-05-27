package o;

import java.util.HashMap;
import java.util.Map;

class Ꮮ<K extends ᒧ, V>
{
  private final Ꮮ.if<K, V> ir = new Ꮮ.if();
  private final Map<K, Ꮮ.if<K, V>> is = new HashMap();
  
  private void ˊ(Ꮮ.if<K, V> paramif)
  {
    ˏ(paramif);
    paramif.ix = this.ir;
    paramif.iw = this.ir.iw;
    ˎ(paramif);
  }
  
  private void ˋ(Ꮮ.if<K, V> paramif)
  {
    ˏ(paramif);
    paramif.ix = this.ir.ix;
    paramif.iw = this.ir;
    ˎ(paramif);
  }
  
  private static <K, V> void ˎ(Ꮮ.if<K, V> paramif)
  {
    paramif.iw.ix = paramif;
    paramif.ix.iw = paramif;
  }
  
  private static <K, V> void ˏ(Ꮮ.if<K, V> paramif)
  {
    paramif.ix.iw = paramif.iw;
    paramif.iw.ix = paramif.ix;
  }
  
  public V removeLast()
  {
    for (Ꮮ.if localif = this.ir.ix; !localif.equals(this.ir); localif = localif.ix)
    {
      Object localObject = localif.removeLast();
      if (localObject != null) {
        return localObject;
      }
      ˏ(localif);
      this.is.remove(Ꮮ.if.ᐝ(localif));
      ((ᒧ)Ꮮ.if.ᐝ(localif)).ᒫ();
    }
    return null;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("GroupedLinkedMap( ");
    Ꮮ.if localif = this.ir.iw;
    int i = 0;
    while (!localif.equals(this.ir))
    {
      i = 1;
      localStringBuilder.append('{').append(Ꮮ.if.ᐝ(localif)).append(':').append(localif.size()).append("}, ");
      localif = localif.iw;
    }
    if (i != 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    return " )";
  }
  
  public void ˊ(K paramK, V paramV)
  {
    Ꮮ.if localif = (Ꮮ.if)this.is.get(paramK);
    if (localif == null)
    {
      localif = new Ꮮ.if(paramK);
      ˋ(localif);
      this.is.put(paramK, localif);
      paramK = localif;
    }
    else
    {
      paramK.ᒫ();
      paramK = localif;
    }
    paramK.add(paramV);
  }
  
  public V ˋ(K paramK)
  {
    Ꮮ.if localif = (Ꮮ.if)this.is.get(paramK);
    if (localif == null)
    {
      localif = new Ꮮ.if(paramK);
      this.is.put(paramK, localif);
      paramK = localif;
    }
    else
    {
      paramK.ᒫ();
      paramK = localif;
    }
    ˊ(paramK);
    return paramK.removeLast();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */