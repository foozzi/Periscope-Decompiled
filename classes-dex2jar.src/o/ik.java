package o;

import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ik
  implements gl
{
  private final gt JZ;
  private final hg Ki;
  private final fk Kk;
  
  public ik(gt paramgt, fk paramfk, hg paramhg)
  {
    this.JZ = paramgt;
    this.Kk = paramfk;
    this.Ki = paramhg;
  }
  
  static String ˊ(fk paramfk, Field paramField)
  {
    go localgo = (go)paramField.getAnnotation(go.class);
    if (localgo == null) {
      return paramfk.ˊ(paramField);
    }
    return localgo.value();
  }
  
  private Map<String, ik.ˊ> ˊ(fl paramfl, jy<?> paramjy, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType1 = paramjy.V();
    while (paramClass != Object.class)
    {
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = arrayOfField[i];
        boolean bool1 = ˊ((Field)localObject, true);
        boolean bool2 = ˊ((Field)localObject, false);
        if ((bool1) || (bool2))
        {
          ((Field)localObject).setAccessible(true);
          Type localType2 = gs.resolve(paramjy.V(), paramClass, ((Field)localObject).getGenericType());
          localObject = ˊ(paramfl, (Field)localObject, ˋ((Field)localObject), jy.ʽ(localType2), bool1, bool2);
          localObject = (ik.ˊ)localLinkedHashMap.put(((ik.ˊ)localObject).name, localObject);
          if (localObject != null) {
            throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + ((ik.ˊ)localObject).name);
          }
        }
        i += 1;
      }
      paramjy = jy.ʽ(gs.resolve(paramjy.V(), paramClass, paramClass.getGenericSuperclass()));
      paramClass = paramjy.U();
    }
    return localLinkedHashMap;
  }
  
  private gk<?> ˊ(fl paramfl, Field paramField, jy<?> paramjy)
  {
    paramField = (gn)paramField.getAnnotation(gn.class);
    if (paramField != null)
    {
      paramField = ib.ˊ(this.JZ, paramfl, paramjy, paramField);
      if (paramField != null) {
        return paramField;
      }
    }
    return paramfl.ˊ(paramjy);
  }
  
  private ik.ˊ ˊ(fl paramfl, Field paramField, String paramString, jy<?> paramjy, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new il(this, paramString, paramBoolean1, paramBoolean2, paramfl, paramField, paramjy, hp.ʼ(paramjy.U()));
  }
  
  static boolean ˊ(Field paramField, boolean paramBoolean, hg paramhg)
  {
    return (!paramhg.ˊ(paramField.getType(), paramBoolean)) && (!paramhg.ˊ(paramField, paramBoolean));
  }
  
  private String ˋ(Field paramField)
  {
    return ˊ(this.Kk, paramField);
  }
  
  public <T> gk<T> ˊ(fl paramfl, jy<T> paramjy)
  {
    Class localClass = paramjy.U();
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new if(this.JZ.ˋ(paramjy), ˊ(paramfl, paramjy, localClass), null);
  }
  
  public boolean ˊ(Field paramField, boolean paramBoolean)
  {
    return ˊ(paramField, paramBoolean, this.Ki);
  }
  
  public static final class if<T>
    extends gk<T>
  {
    private final ho<T> LE;
    private final Map<String, ik.ˊ> LW;
    
    private if(ho<T> paramho, Map<String, ik.ˊ> paramMap)
    {
      this.LE = paramho;
      this.LW = paramMap;
    }
    
    public void ˊ(kc paramkc, T paramT)
    {
      if (paramT == null)
      {
        paramkc.T();
        return;
      }
      paramkc.R();
      try
      {
        Iterator localIterator = this.LW.values().iterator();
        while (localIterator.hasNext())
        {
          ik.ˊ localˊ = (ik.ˊ)localIterator.next();
          if (localˊ.ı(paramT))
          {
            paramkc.ᒢ(localˊ.name);
            localˊ.ˊ(paramkc, paramT);
          }
        }
      }
      catch (IllegalAccessException paramkc)
      {
        throw new AssertionError();
      }
      paramkc.S();
    }
    
    public T ˋ(jz paramjz)
    {
      if (paramjz.J() == kb.NB)
      {
        paramjz.nextNull();
        return null;
      }
      Object localObject1 = this.LE.C();
      try
      {
        paramjz.beginObject();
        while (paramjz.hasNext())
        {
          Object localObject2 = paramjz.nextName();
          localObject2 = (ik.ˊ)this.LW.get(localObject2);
          if ((localObject2 == null) || (!((ik.ˊ)localObject2).LY)) {
            paramjz.skipValue();
          } else {
            ((ik.ˊ)localObject2).ˊ(paramjz, localObject1);
          }
        }
      }
      catch (IllegalStateException paramjz)
      {
        throw new gf(paramjz);
      }
      catch (IllegalAccessException paramjz)
      {
        throw new AssertionError(paramjz);
      }
      paramjz.endObject();
      return localObject1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ik
 * JD-Core Version:    0.7.0.1
 */