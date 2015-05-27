package o;

import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

class pd
{
  private static final Map<String, List<pc>> Uw = new HashMap();
  private final Map<Class<?>, Class<?>> Ux = new ConcurrentHashMap();
  
  pd(List<Class<?>> paramList)
  {
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        Class localClass = (Class)paramList.next();
        this.Ux.put(localClass, localClass);
      }
    }
  }
  
  List<pc> ˑ(Class<?> arg1)
  {
    String str1 = ???.getName();
    synchronized (Uw)
    {
      localObject3 = (List)Uw.get(str1);
    }
    if (localObject3 != null) {
      return localObject3;
    }
    ArrayList localArrayList = new ArrayList();
    Object localObject3 = ???;
    HashSet localHashSet = new HashSet();
    StringBuilder localStringBuilder = new StringBuilder();
    while (localObject3 != null)
    {
      ??? = ((Class)localObject3).getName();
      if ((((String)???).startsWith("java.")) || (((String)???).startsWith("javax.")) || (((String)???).startsWith("android."))) {
        break;
      }
      Method[] arrayOfMethod = ((Class)localObject3).getDeclaredMethods();
      int j = arrayOfMethod.length;
      int i = 0;
      while (i < j)
      {
        Method localMethod = arrayOfMethod[i];
        String str2 = localMethod.getName();
        if (str2.startsWith("onEvent"))
        {
          int k = localMethod.getModifiers();
          if (((k & 0x1) != 0) && ((k & 0x1448) == 0))
          {
            Object localObject4 = localMethod.getParameterTypes();
            if (localObject4.length == 1)
            {
              ??? = str2.substring("onEvent".length());
              if (((String)???).length() == 0)
              {
                ??? = pf.UB;
              }
              else if (((String)???).equals("MainThread"))
              {
                ??? = pf.UC;
              }
              else if (((String)???).equals("BackgroundThread"))
              {
                ??? = pf.UD;
              }
              else if (((String)???).equals("Async"))
              {
                ??? = pf.UE;
              }
              else
              {
                if (this.Ux.containsKey(localObject3)) {
                  break label453;
                }
                throw new ow("Illegal onEvent method, check for typos: " + localMethod);
              }
              localObject4 = localObject4[0];
              localStringBuilder.setLength(0);
              localStringBuilder.append(str2);
              localStringBuilder.append('>').append(((Class)localObject4).getName());
              if (localHashSet.add(localStringBuilder.toString())) {
                localArrayList.add(new pc(localMethod, (pf)???, (Class)localObject4));
              }
            }
          }
          else if (!this.Ux.containsKey(localObject3))
          {
            Log.d(ot.TAG, "Skipping method (not public, static or abstract): " + localObject3 + "." + str2);
          }
        }
        label453:
        i += 1;
      }
      localObject3 = ((Class)localObject3).getSuperclass();
    }
    if (localArrayList.isEmpty()) {
      throw new ow("Subscriber " + ??? + " has no public methods called " + "onEvent");
    }
    synchronized (Uw)
    {
      Uw.put(str1, localArrayList);
      return localArrayList;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pd
 * JD-Core Version:    0.7.0.1
 */