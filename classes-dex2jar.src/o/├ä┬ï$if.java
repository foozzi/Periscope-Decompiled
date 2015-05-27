package o;

import java.util.Queue;

final class ċ$if<A>
{
  private static final Queue<if<?>> jL = ﾕ.ᵘ(0);
  private A eb;
  private int height;
  private int width;
  
  private void ʻ(A paramA, int paramInt1, int paramInt2)
  {
    this.eb = paramA;
    this.width = paramInt1;
    this.height = paramInt2;
  }
  
  static <A> if<A> ᐝ(A paramA, int paramInt1, int paramInt2)
  {
    if localif2 = (if)jL.poll();
    if localif1 = localif2;
    if (localif2 == null) {
      localif1 = new if();
    }
    localif1.ʻ(paramA, paramInt1, paramInt2);
    return localif1;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof if))
    {
      paramObject = (if)paramObject;
      return (this.width == paramObject.width) && (this.height == paramObject.height) && (this.eb.equals(paramObject.eb));
    }
    return false;
  }
  
  public int hashCode()
  {
    return (this.height * 31 + this.width) * 31 + this.eb.hashCode();
  }
  
  public void release()
  {
    jL.offer(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ä.if
 * JD-Core Version:    0.7.0.1
 */