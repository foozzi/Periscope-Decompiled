package o;

import android.content.Context;

public abstract class pu<T>
  implements pw<T>
{
  private final pw<T> Vm;
  
  public pu()
  {
    this(null);
  }
  
  public pu(pw<T> parampw)
  {
    this.Vm = parampw;
  }
  
  private void ˋ(Context paramContext, T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException();
    }
    ˊ(paramContext, paramT);
  }
  
  public final T ˊ(Context paramContext, px<T> parampx)
  {
    try
    {
      Object localObject2 = ˮ(paramContext);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        if (this.Vm != null) {
          parampx = this.Vm.ˊ(paramContext, parampx);
        } else {
          parampx = parampx.י(paramContext);
        }
        ˋ(paramContext, parampx);
        localObject1 = parampx;
      }
      return localObject1;
    }
    finally {}
  }
  
  protected abstract void ˊ(Context paramContext, T paramT);
  
  protected abstract T ˮ(Context paramContext);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.pu
 * JD-Core Version:    0.7.0.1
 */