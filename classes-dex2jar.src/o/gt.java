package o;

import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

public final class gt
{
  private final Map<Type, fs<?>> Kl;
  
  public gt(Map<Type, fs<?>> paramMap)
  {
    this.Kl = paramMap;
  }
  
  private <T> ho<T> ʻ(Class<? super T> paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredConstructor(new Class[0]);
      if (!paramClass.isAccessible()) {
        paramClass.setAccessible(true);
      }
      paramClass = new gz(this, paramClass);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  private <T> ho<T> ˎ(Type paramType, Class<? super T> paramClass)
  {
    if (Collection.class.isAssignableFrom(paramClass))
    {
      if (SortedSet.class.isAssignableFrom(paramClass)) {
        return new ha(this);
      }
      if (EnumSet.class.isAssignableFrom(paramClass)) {
        return new hb(this, paramType);
      }
      if (Set.class.isAssignableFrom(paramClass)) {
        return new hc(this);
      }
      if (Queue.class.isAssignableFrom(paramClass)) {
        return new hd(this);
      }
      return new he(this);
    }
    if (Map.class.isAssignableFrom(paramClass))
    {
      if (SortedMap.class.isAssignableFrom(paramClass)) {
        return new hf(this);
      }
      if (((paramType instanceof ParameterizedType)) && (!String.class.isAssignableFrom(jy.ʽ(((ParameterizedType)paramType).getActualTypeArguments()[0]).U()))) {
        return new gv(this);
      }
      return new gw(this);
    }
    return null;
  }
  
  private <T> ho<T> ˏ(Type paramType, Class<? super T> paramClass)
  {
    return new gx(this, paramClass, paramType);
  }
  
  public String toString()
  {
    return this.Kl.toString();
  }
  
  public <T> ho<T> ˋ(jy<T> paramjy)
  {
    Type localType = paramjy.V();
    paramjy = paramjy.U();
    Object localObject = (fs)this.Kl.get(localType);
    if (localObject != null) {
      return new gu(this, (fs)localObject, localType);
    }
    localObject = (fs)this.Kl.get(paramjy);
    if (localObject != null) {
      return new gy(this, (fs)localObject, localType);
    }
    localObject = ʻ(paramjy);
    if (localObject != null) {
      return localObject;
    }
    localObject = ˎ(localType, paramjy);
    if (localObject != null) {
      return localObject;
    }
    return ˏ(localType, paramjy);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gt
 * JD-Core Version:    0.7.0.1
 */