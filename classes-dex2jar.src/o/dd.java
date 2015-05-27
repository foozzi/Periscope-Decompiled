package o;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

public class dd
{
  private static Context IB;
  private static cj IC;
  
  private static void ʳ(Context paramContext)
  {
    int i = ძ.ٴ(paramContext);
    switch (i)
    {
    default: 
      break;
    case 0: 
      return;
    }
    throw new Ⴡ(i);
  }
  
  private static cj ʴ(Context paramContext)
  {
    if (Ṿ())
    {
      Log.i(dd.class.getSimpleName(), "Making Creator statically");
      return (cj)ˎ(Ὑ());
    }
    Log.i(dd.class.getSimpleName(), "Making Creator dynamically");
    return cj.if.ᵎ((IBinder)ˊ(ᵔ(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
  }
  
  private static <T> T ˊ(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = ˎ(((ClassLoader)ﺧ.ᔈ(paramClassLoader)).loadClass(paramString));
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      throw new IllegalStateException("Unable to find dynamic class " + paramString);
    }
  }
  
  private static <T> T ˎ(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new IllegalStateException("Unable to instantiate the dynamic class " + paramClass.getName());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalStateException("Unable to call the default constructor of " + paramClass.getName());
    }
  }
  
  private static Context ᵔ(Context paramContext)
  {
    if (IB == null) {
      if (Ṿ()) {
        IB = paramContext.getApplicationContext();
      } else {
        IB = ძ.ᵔ(paramContext);
      }
    }
    return IB;
  }
  
  public static boolean Ṿ()
  {
    return false;
  }
  
  private static Class<?> Ὑ()
  {
    try
    {
      if (Build.VERSION.SDK_INT < 15)
      {
        localClass = Class.forName("com.google.android.gms.maps.internal.CreatorImplGmm6");
        return localClass;
      }
      Class localClass = Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException(localClassNotFoundException);
    }
  }
  
  public static cj ｰ(Context paramContext)
  {
    ﺧ.ᔈ(paramContext);
    if (IC != null) {
      return IC;
    }
    ʳ(paramContext);
    IC = ʴ(paramContext);
    try
    {
      IC.ˊ(ﱡ.ᗮ(ᵔ(paramContext).getResources()), 7095000);
    }
    catch (RemoteException paramContext)
    {
      throw new di(paramContext);
    }
    return IC;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.dd
 * JD-Core Version:    0.7.0.1
 */