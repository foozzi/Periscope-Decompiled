package o;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

class gz
  implements ho<T>
{
  gz(gt paramgt, Constructor paramConstructor) {}
  
  public T C()
  {
    try
    {
      Object localObject = this.KO.newInstance(null);
      return localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException("Failed to invoke " + this.KO + " with no args", localInstantiationException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Failed to invoke " + this.KO + " with no args", localInvocationTargetException.getTargetException());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gz
 * JD-Core Version:    0.7.0.1
 */