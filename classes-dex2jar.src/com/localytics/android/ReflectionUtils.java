package com.localytics.android;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class ReflectionUtils
{
  private ReflectionUtils()
  {
    throw new UnsupportedOperationException("This class is non-instantiable");
  }
  
  private static <T> T helper(Object paramObject, Class<?> paramClass, String paramString1, String paramString2, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    if ((paramClass != null) || (paramObject != null)) {}
    try
    {
      paramClass = paramObject.getClass();
      break label24;
      paramClass = Class.forName(paramString1);
      label24:
      paramObject = paramClass.getMethod(paramString2, paramArrayOfClass).invoke(paramObject, paramArrayOfObject);
      return paramObject;
    }
    catch (NoSuchMethodException paramObject)
    {
      throw new RuntimeException(paramObject);
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException(paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      throw new RuntimeException(paramObject);
    }
    catch (ClassNotFoundException paramObject)
    {
      throw new RuntimeException(paramObject);
    }
  }
  
  static Object tryGetStaticField(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = Class.forName(paramString1).getField(paramString2).get(null);
      return paramString1;
    }
    catch (ClassNotFoundException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
    catch (NoSuchFieldException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
    catch (IllegalAccessException paramString1)
    {
      throw new RuntimeException(paramString1);
    }
  }
  
  static <T> T tryInvokeConstructor(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      paramString = Class.forName(paramString).getDeclaredConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
      return paramString;
    }
    catch (InstantiationException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (IllegalAccessException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (InvocationTargetException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (NoSuchMethodException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (ClassNotFoundException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  static <T> T tryInvokeInstance(Object paramObject, String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    return helper(paramObject, null, null, paramString, paramArrayOfClass, paramArrayOfObject);
  }
  
  static <T> T tryInvokeStatic(Class<?> paramClass, String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    return helper(null, paramClass, null, paramString, paramArrayOfClass, paramArrayOfObject);
  }
  
  static <T> T tryInvokeStatic(String paramString1, String paramString2, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    return helper(null, null, paramString1, paramString2, paramArrayOfClass, paramArrayOfObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.localytics.android.ReflectionUtils
 * JD-Core Version:    0.7.0.1
 */