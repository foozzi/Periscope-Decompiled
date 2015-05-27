package o;

public class Ꮣ<T>
  implements ڔ<T>
{
  protected final T data;
  
  public Ꮣ(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("Data must not be null");
    }
    this.data = paramT;
  }
  
  public final T get()
  {
    return this.data;
  }
  
  public final int getSize()
  {
    return 1;
  }
  
  public void recycle() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á
 * JD-Core Version:    0.7.0.1
 */