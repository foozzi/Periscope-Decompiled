package o;

final class ż
  implements Comparable<ż>
{
  public final long sJ;
  public final boolean zw;
  public final č[] zx;
  
  public ż(long paramLong, boolean paramBoolean, č[] paramArrayOfč)
  {
    this.sJ = paramLong;
    this.zw = paramBoolean;
    this.zx = paramArrayOfč;
  }
  
  public int ˊ(ż paramż)
  {
    long l = this.sJ - paramż.sJ;
    if (l == 0L) {
      return 0;
    }
    if (l > 0L) {
      return 1;
    }
    return -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Å¼
 * JD-Core Version:    0.7.0.1
 */