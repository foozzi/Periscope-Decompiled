package o;

import android.content.Context;

public class pv<T>
  extends pu<T>
{
  private T Kx;
  
  public pv()
  {
    this(null);
  }
  
  public pv(pw<T> parampw)
  {
    super(parampw);
  }
  
  protected void ˊ(Context paramContext, T paramT)
  {
    this.Kx = paramT;
  }
  
  protected T ˮ(Context paramContext)
  {
    return this.Kx;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pv
 * JD-Core Version:    0.7.0.1
 */