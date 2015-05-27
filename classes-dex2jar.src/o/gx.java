package o;

import java.lang.reflect.Type;

class gx
  implements ho<T>
{
  private final hr KL = hr.H();
  
  gx(gt paramgt, Class paramClass, Type paramType) {}
  
  public T C()
  {
    try
    {
      Object localObject = this.KL.ʾ(this.KM);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new RuntimeException("Unable to invoke no-args constructor for " + this.KJ + ". " + "Register an InstanceCreator with Gson for this type may fix this problem.", localException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gx
 * JD-Core Version:    0.7.0.1
 */