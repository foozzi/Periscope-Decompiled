package o;

import java.io.IOException;

public abstract class gk<T>
{
  public abstract void ˊ(kc paramkc, T paramT);
  
  public abstract T ˋ(jz paramjz);
  
  public final fw ᴶ(T paramT)
  {
    try
    {
      ie localie = new ie();
      ˊ(localie, paramT);
      paramT = localie.N();
      return paramT;
    }
    catch (IOException paramT)
    {
      throw new fx(paramT);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gk
 * JD-Core Version:    0.7.0.1
 */