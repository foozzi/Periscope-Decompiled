package o;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

public class ot
{
  public static String TAG = "Event";
  private static final ov TK = new ov();
  private static final Map<Class<?>, List<Class<?>>> TL = new HashMap();
  private final Map<Class<?>, CopyOnWriteArrayList<pe>> TM = new HashMap();
  private final Map<Object, List<Class<?>>> TN = new HashMap();
  private final Map<Class<?>, Object> TO = new ConcurrentHashMap();
  private final ThreadLocal<if> TP = new ou(this);
  private final ox TQ = new ox(this, Looper.getMainLooper(), 10);
  private final os TR = new os(this);
  private final or TS = new or(this);
  private final pd TT;
  private final boolean TU;
  private final boolean TV;
  private final boolean TW;
  private final boolean TX;
  private final boolean TY;
  private final boolean TZ;
  private final ExecutorService executorService;
  
  public ot()
  {
    this(TK);
  }
  
  ot(ov paramov)
  {
    this.TT = new pd(paramov.Ui);
    this.TV = paramov.TV;
    this.TW = paramov.TW;
    this.TX = paramov.TX;
    this.TY = paramov.TY;
    this.TU = paramov.TU;
    this.TZ = paramov.TZ;
    this.executorService = paramov.executorService;
  }
  
  public static ov bW()
  {
    return new ov();
  }
  
  private void ˊ(Object paramObject, Class<?> paramClass)
  {
    paramClass = (List)this.TM.get(paramClass);
    if (paramClass != null)
    {
      int j = paramClass.size();
      int i = 0;
      while (i < j)
      {
        pe localpe = (pe)paramClass.get(i);
        int k = j;
        int m = i;
        if (localpe.Uy == paramObject)
        {
          localpe.UA = false;
          paramClass.remove(i);
          m = i - 1;
          k = j - 1;
        }
        i = m + 1;
        j = k;
      }
    }
  }
  
  private void ˊ(Object paramObject, if paramif)
  {
    Class localClass = paramObject.getClass();
    boolean bool = false;
    if (this.TZ)
    {
      List localList = ˍ(localClass);
      int j = localList.size();
      int i = 0;
      while (i < j)
      {
        bool |= ˊ(paramObject, paramif, (Class)localList.get(i));
        i += 1;
      }
    }
    else
    {
      bool = ˊ(paramObject, paramif, localClass);
    }
    if (!bool)
    {
      if (this.TW) {
        Log.d(TAG, "No subscribers registered for event " + localClass);
      }
      if ((this.TY) && (localClass != oy.class) && (localClass != pb.class)) {
        ˣ(new oy(this, paramObject));
      }
    }
  }
  
  private void ˊ(Object arg1, pc parampc, boolean paramBoolean, int paramInt)
  {
    Class localClass = parampc.Uu;
    Object localObject = (CopyOnWriteArrayList)this.TM.get(localClass);
    pe localpe = new pe(???, parampc, paramInt);
    if (localObject == null)
    {
      parampc = new CopyOnWriteArrayList();
      this.TM.put(localClass, parampc);
    }
    else
    {
      parampc = (pc)localObject;
      if (((CopyOnWriteArrayList)localObject).contains(localpe)) {
        throw new ow("Subscriber " + ???.getClass() + " already registered to event " + localClass);
      }
    }
    int i = parampc.size();
    paramInt = 0;
    while (paramInt <= i)
    {
      if ((paramInt == i) || (localpe.priority > ((pe)parampc.get(paramInt)).priority))
      {
        parampc.add(paramInt, localpe);
        break;
      }
      paramInt += 1;
    }
    localObject = (List)this.TN.get(???);
    parampc = (pc)localObject;
    if (localObject == null)
    {
      parampc = new ArrayList();
      this.TN.put(???, parampc);
    }
    parampc.add(localClass);
    if (paramBoolean)
    {
      synchronized (this.TO)
      {
        parampc = this.TO.get(localClass);
      }
      if (parampc != null)
      {
        if (Looper.getMainLooper() == Looper.myLooper()) {
          paramBoolean = true;
        } else {
          paramBoolean = false;
        }
        ˊ(localpe, parampc, paramBoolean);
      }
    }
  }
  
  private void ˊ(Object paramObject, boolean paramBoolean, int paramInt)
  {
    try
    {
      Iterator localIterator = this.TT.ˑ(paramObject.getClass()).iterator();
      while (localIterator.hasNext()) {
        ˊ(paramObject, (pc)localIterator.next(), paramBoolean, paramInt);
      }
      return;
    }
    finally {}
  }
  
  static void ˊ(List<Class<?>> paramList, Class<?>[] paramArrayOfClass)
  {
    int j = paramArrayOfClass.length;
    int i = 0;
    while (i < j)
    {
      Class<?> localClass = paramArrayOfClass[i];
      if (!paramList.contains(localClass))
      {
        paramList.add(localClass);
        ˊ(paramList, localClass.getInterfaces());
      }
      i += 1;
    }
  }
  
  private void ˊ(pe parampe, Object paramObject, Throwable paramThrowable)
  {
    if ((paramObject instanceof pb))
    {
      if (this.TV)
      {
        Log.e(TAG, "SubscriberExceptionEvent subscriber " + parampe.Uy.getClass() + " threw an exception", paramThrowable);
        parampe = (pb)paramObject;
        Log.e(TAG, "Initial event " + parampe.Ur + " caused exception in " + parampe.Us, parampe.Uq);
      }
    }
    else
    {
      if (this.TU) {
        throw new ow("Invoking subscriber failed", paramThrowable);
      }
      if (this.TV) {
        Log.e(TAG, "Could not dispatch event: " + paramObject.getClass() + " to subscribing class " + parampe.Uy.getClass(), paramThrowable);
      }
      if (this.TX) {
        ˣ(new pb(this, paramThrowable, paramObject, parampe.Uy));
      }
    }
  }
  
  private void ˊ(pe parampe, Object paramObject, boolean paramBoolean)
  {
    switch (1.Ub[parampe.Uz.Ut.ordinal()])
    {
    default: 
      break;
    case 1: 
      ˋ(parampe, paramObject);
      return;
    case 2: 
      if (paramBoolean)
      {
        ˋ(parampe, paramObject);
        return;
      }
      this.TQ.ˊ(parampe, paramObject);
      return;
    case 3: 
      if (paramBoolean)
      {
        this.TR.ˊ(parampe, paramObject);
        return;
      }
      ˋ(parampe, paramObject);
      return;
    case 4: 
      this.TS.ˊ(parampe, paramObject);
      return;
    }
    throw new IllegalStateException("Unknown thread mode: " + parampe.Uz.Ut);
  }
  
  private boolean ˊ(Object paramObject, if paramif, Class<?> paramClass)
  {
    try
    {
      paramClass = (CopyOnWriteArrayList)this.TM.get(paramClass);
    }
    finally
    {
      paramObject = finally;
      throw paramObject;
    }
    if ((paramClass != null) && (!paramClass.isEmpty()))
    {
      paramClass = paramClass.iterator();
      if (paramClass.hasNext())
      {
        pe localpe = (pe)paramClass.next();
        paramif.Ug = paramObject;
        paramif.Uf = localpe;
        boolean bool;
        try
        {
          ˊ(localpe, paramObject, paramif.Ue);
          bool = paramif.canceled;
          paramif.Ug = null;
          paramif.Uf = null;
          paramif.canceled = false;
        }
        finally
        {
          paramif.Ug = null;
          paramif.Uf = null;
          paramif.canceled = false;
        }
      }
      return true;
    }
    return false;
  }
  
  private List<Class<?>> ˍ(Class<?> paramClass)
  {
    synchronized (TL)
    {
      Object localObject2 = (List)TL.get(paramClass);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = new ArrayList();
        for (localObject1 = paramClass; localObject1 != null; localObject1 = ((Class)localObject1).getSuperclass())
        {
          ((List)localObject2).add(localObject1);
          ˊ((List)localObject2, ((Class)localObject1).getInterfaces());
        }
        TL.put(paramClass, localObject2);
        localObject1 = localObject2;
      }
      return localObject1;
    }
  }
  
  ExecutorService getExecutorService()
  {
    return this.executorService;
  }
  
  public void ʲ(Object paramObject)
  {
    ˊ(paramObject, false, 0);
  }
  
  void ˊ(oz paramoz)
  {
    Object localObject = paramoz.Ug;
    pe localpe = paramoz.Uf;
    oz.ˋ(paramoz);
    if (localpe.UA) {
      ˋ(localpe, localObject);
    }
  }
  
  void ˋ(pe parampe, Object paramObject)
  {
    try
    {
      parampe.Uz.method.invoke(parampe.Uy, new Object[] { paramObject });
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      ˊ(parampe, paramObject, localInvocationTargetException.getCause());
      return;
    }
    catch (IllegalAccessException parampe)
    {
      throw new IllegalStateException("Unexpected exception", parampe);
    }
  }
  
  public void ː(Object paramObject)
  {
    try
    {
      Object localObject = (List)this.TN.get(paramObject);
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          ˊ(paramObject, (Class)((Iterator)localObject).next());
        }
        this.TN.remove(paramObject);
      }
      else
      {
        Log.w(TAG, "Subscriber to unregister was not registered before: " + paramObject.getClass());
      }
      return;
    }
    finally {}
  }
  
  public void ˣ(Object paramObject)
  {
    if localif = (if)this.TP.get();
    List localList = localif.Uc;
    localList.add(paramObject);
    if (!localif.Ud)
    {
      boolean bool;
      if (Looper.getMainLooper() == Looper.myLooper()) {
        bool = true;
      } else {
        bool = false;
      }
      localif.Ue = bool;
      localif.Ud = true;
      if (localif.canceled) {
        throw new ow("Internal error. Abort state was not reset");
      }
      try
      {
        while (!localList.isEmpty()) {
          ˊ(localList.remove(0), localif);
        }
        return;
      }
      finally
      {
        localif.Ud = false;
        localif.Ue = false;
      }
    }
  }
  
  static final class if
  {
    final List<Object> Uc = new ArrayList();
    boolean Ud;
    boolean Ue;
    pe Uf;
    Object Ug;
    boolean canceled;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ot
 * JD-Core Version:    0.7.0.1
 */