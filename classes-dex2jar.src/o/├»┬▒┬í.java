package o;

import java.lang.reflect.Field;

public final class ﱡ<T>
  extends ﱟ.if
{
  private final T Fh;
  
  private ﱡ(T paramT)
  {
    this.Fh = paramT;
  }
  
  public static <T> T ˊ(ﱟ paramﱟ)
  {
    if ((paramﱟ instanceof ﱡ)) {
      return ((ﱡ)paramﱟ).Fh;
    }
    paramﱟ = paramﱟ.asBinder();
    Object localObject = paramﱟ.getClass().getDeclaredFields();
    if (localObject.length == 1)
    {
      localObject = localObject[0];
      if (!((Field)localObject).isAccessible())
      {
        ((Field)localObject).setAccessible(true);
        try
        {
          paramﱟ = ((Field)localObject).get(paramﱟ);
          return paramﱟ;
        }
        catch (NullPointerException paramﱟ)
        {
          throw new IllegalArgumentException("Binder object is null.", paramﱟ);
        }
        catch (IllegalArgumentException paramﱟ)
        {
          throw new IllegalArgumentException("remoteBinder is the wrong class.", paramﱟ);
        }
        catch (IllegalAccessException paramﱟ)
        {
          throw new IllegalArgumentException("Could not access the field in remoteBinder.", paramﱟ);
        }
      }
      throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class.");
    }
    throw new IllegalArgumentException("The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class.");
  }
  
  public static <T> ﱟ ᗮ(T paramT)
  {
    return new ﱡ(paramT);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï±¡
 * JD-Core Version:    0.7.0.1
 */