package o;

public abstract class ani
{
  public static ani ˊ(long paramLong, int paramInt1, int paramInt2)
  {
    return new anc(paramLong, paramInt1, paramInt2);
  }
  
  public abstract long BX();
  
  public abstract int BY();
  
  public abstract int BZ();
  
  public float Cd()
  {
    if (BY() > 0) {
      return 1.0F - BZ() / BY();
    }
    return (0.0F / 0.0F);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ani
 * JD-Core Version:    0.7.0.1
 */