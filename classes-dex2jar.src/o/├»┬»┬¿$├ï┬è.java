package o;

public class ﯨ$ˊ<T>
  implements ﯨ.if<T>
{
  private final Object[] 一;
  private int גּ;
  
  public ﯨ$ˊ(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("The max pool size must be > 0");
    }
    this.一 = new Object[paramInt];
  }
  
  private boolean ᐝ(T paramT)
  {
    int i = 0;
    while (i < this.גּ)
    {
      if (this.一[i] == paramT) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean ˏ(T paramT)
  {
    if (ᐝ(paramT)) {
      throw new IllegalStateException("Already in the pool!");
    }
    if (this.גּ < this.一.length)
    {
      this.一[this.גּ] = paramT;
      this.גּ += 1;
      return true;
    }
    return false;
  }
  
  public T ᐩ()
  {
    if (this.גּ > 0)
    {
      int i = this.גּ - 1;
      Object localObject = this.一[i];
      this.一[i] = null;
      this.גּ -= 1;
      return localObject;
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï¯¨.Ë
 * JD-Core Version:    0.7.0.1
 */