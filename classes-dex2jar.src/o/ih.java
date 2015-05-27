package o;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ih
  implements gl
{
  private final gt JZ;
  private final boolean Kq;
  
  public ih(gt paramgt, boolean paramBoolean)
  {
    this.JZ = paramgt;
    this.Kq = paramBoolean;
  }
  
  private gk<?> ˊ(fl paramfl, Type paramType)
  {
    if ((paramType == Boolean.TYPE) || (paramType == Boolean.class)) {
      return ir.Mh;
    }
    return paramfl.ˊ(jy.ʽ(paramType));
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    Object localObject = paramjy.V();
    if (!Map.class.isAssignableFrom(paramjy.U())) {
      return null;
    }
    localObject = gs.ˋ((Type)localObject, gs.getRawType((Type)localObject));
    gk localgk1 = ˊ(paramfl, localObject[0]);
    gk localgk2 = paramfl.ˊ(jy.ʽ(localObject[1]));
    paramjy = this.JZ.ˋ(paramjy);
    return new if(paramfl, localObject[0], localgk1, localObject[1], localgk2, paramjy);
  }
  
  final class if<K, V>
    extends gk<Map<K, V>>
  {
    private final ho<? extends Map<K, V>> LE;
    private final gk<K> LM;
    private final gk<V> LN;
    
    public if(Type paramType1, gk<K> paramgk, Type paramType2, gk<V> paramgk1, ho<? extends Map<K, V>> paramho)
    {
      this.LM = new iq(paramType1, paramType2, paramgk);
      this.LN = new iq(paramType1, paramho, paramgk1);
      Object localObject;
      this.LE = localObject;
    }
    
    private String ᐝ(fw paramfw)
    {
      if (paramfw.p())
      {
        paramfw = paramfw.t();
        if (paramfw.w()) {
          return String.valueOf(paramfw.g());
        }
        if (paramfw.v()) {
          return Boolean.toString(paramfw.m());
        }
        if (paramfw.x()) {
          return paramfw.h();
        }
        throw new AssertionError();
      }
      if (paramfw.q()) {
        return "null";
      }
      throw new AssertionError();
    }
    
    public void ˊ(kc paramkc, Map<K, V> paramMap)
    {
      if (paramMap == null)
      {
        paramkc.T();
        return;
      }
      if (!ih.ˊ(ih.this))
      {
        paramkc.R();
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          localObject = (Map.Entry)paramMap.next();
          paramkc.ᒢ(String.valueOf(((Map.Entry)localObject).getKey()));
          this.LN.ˊ(paramkc, ((Map.Entry)localObject).getValue());
        }
        paramkc.S();
        return;
      }
      int i = 0;
      Object localObject = new ArrayList(paramMap.size());
      ArrayList localArrayList = new ArrayList(paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        fw localfw = this.LM.ᴶ(localEntry.getKey());
        ((List)localObject).add(localfw);
        localArrayList.add(localEntry.getValue());
        int j;
        if ((localfw.n()) || (localfw.o())) {
          j = 1;
        } else {
          j = 0;
        }
        i |= j;
      }
      if (i != 0)
      {
        paramkc.P();
        i = 0;
        while (i < ((List)localObject).size())
        {
          paramkc.P();
          hq.ˋ((fw)((List)localObject).get(i), paramkc);
          this.LN.ˊ(paramkc, localArrayList.get(i));
          paramkc.Q();
          i += 1;
        }
        paramkc.Q();
        return;
      }
      paramkc.R();
      i = 0;
      while (i < ((List)localObject).size())
      {
        paramkc.ᒢ(ᐝ((fw)((List)localObject).get(i)));
        this.LN.ˊ(paramkc, localArrayList.get(i));
        i += 1;
      }
      paramkc.S();
    }
    
    public Map<K, V> ͺ(jz paramjz)
    {
      Object localObject = paramjz.J();
      if (localObject == kb.NB)
      {
        paramjz.nextNull();
        return null;
      }
      Map localMap = (Map)this.LE.C();
      if (localObject == kb.Nt)
      {
        paramjz.beginArray();
        while (paramjz.hasNext())
        {
          paramjz.beginArray();
          localObject = this.LM.ˋ(paramjz);
          if (localMap.put(localObject, this.LN.ˋ(paramjz)) != null) {
            throw new gf("duplicate key: " + localObject);
          }
          paramjz.endArray();
        }
        paramjz.endArray();
        return localMap;
      }
      paramjz.beginObject();
      while (paramjz.hasNext())
      {
        hi.Lb.ʻ(paramjz);
        localObject = this.LM.ˋ(paramjz);
        if (localMap.put(localObject, this.LN.ˋ(paramjz)) != null) {
          throw new gf("duplicate key: " + localObject);
        }
      }
      paramjz.endObject();
      return localMap;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ih
 * JD-Core Version:    0.7.0.1
 */