package o;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class hp
{
  private static final Map<Class<?>, Class<?>> Ls;
  private static final Map<Class<?>, Class<?>> Lt;
  
  static
  {
    HashMap localHashMap1 = new HashMap(16);
    HashMap localHashMap2 = new HashMap(16);
    ˊ(localHashMap1, localHashMap2, Boolean.TYPE, Boolean.class);
    ˊ(localHashMap1, localHashMap2, Byte.TYPE, Byte.class);
    ˊ(localHashMap1, localHashMap2, Character.TYPE, Character.class);
    ˊ(localHashMap1, localHashMap2, Double.TYPE, Double.class);
    ˊ(localHashMap1, localHashMap2, Float.TYPE, Float.class);
    ˊ(localHashMap1, localHashMap2, Integer.TYPE, Integer.class);
    ˊ(localHashMap1, localHashMap2, Long.TYPE, Long.class);
    ˊ(localHashMap1, localHashMap2, Short.TYPE, Short.class);
    ˊ(localHashMap1, localHashMap2, Void.TYPE, Void.class);
    Ls = Collections.unmodifiableMap(localHashMap1);
    Lt = Collections.unmodifiableMap(localHashMap2);
  }
  
  public static boolean ʼ(Type paramType)
  {
    return Ls.containsKey(paramType);
  }
  
  private static void ˊ(Map<Class<?>, Class<?>> paramMap1, Map<Class<?>, Class<?>> paramMap2, Class<?> paramClass1, Class<?> paramClass2)
  {
    paramMap1.put(paramClass1, paramClass2);
    paramMap2.put(paramClass2, paramClass1);
  }
  
  public static <T> Class<T> ι(Class<T> paramClass)
  {
    Class localClass = (Class)Ls.get(gr.יּ(paramClass));
    if (localClass == null) {
      return paramClass;
    }
    return localClass;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hp
 * JD-Core Version:    0.7.0.1
 */