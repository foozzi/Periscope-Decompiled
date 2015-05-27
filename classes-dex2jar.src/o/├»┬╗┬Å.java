package o;

public abstract class ﻏ<T>
{
  private static final Object Fi = new Object();
  private static ﻏ.if Fj = null;
  private static int Fk = 0;
  protected final String Fl;
  protected final T Fm;
  private T Fn = null;
  
  protected ﻏ(String paramString, T paramT)
  {
    this.Fl = paramString;
    this.Fm = paramT;
  }
  
  public static boolean isInitialized()
  {
    return Fj != null;
  }
  
  public static ﻏ<Integer> ˊ(String paramString, Integer paramInteger)
  {
    return new ｋ(paramString, paramInteger);
  }
  
  public static ﻏ<Long> ˊ(String paramString, Long paramLong)
  {
    return new ﻛ(paramString, paramLong);
  }
  
  public static ﻏ<Boolean> ˏ(String paramString, boolean paramBoolean)
  {
    return new ﻐ(paramString, Boolean.valueOf(paramBoolean));
  }
  
  public static ﻏ<String> ͺ(String paramString1, String paramString2)
  {
    return new ﾇ(paramString1, paramString2);
  }
  
  public static int ッ()
  {
    return Fk;
  }
  
  public final T get()
  {
    if (this.Fn != null) {
      return this.Fn;
    }
    return ᔇ(this.Fl);
  }
  
  protected abstract T ᔇ(String paramString);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï»
 * JD-Core Version:    0.7.0.1
 */