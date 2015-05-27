package o;

public final class ῗ$if
  implements Comparable<Long>
{
  public final long tN;
  public final String url;
  public final boolean wH;
  public final boolean yn;
  public final double yo;
  public final String yp;
  public final String yq;
  public final int yr;
  public final int ys;
  
  public ῗ$if(String paramString1, double paramDouble, boolean paramBoolean1, long paramLong, boolean paramBoolean2, String paramString2, String paramString3, int paramInt1, int paramInt2)
  {
    this.url = paramString1;
    this.yo = paramDouble;
    this.yn = paramBoolean1;
    this.tN = paramLong;
    this.wH = paramBoolean2;
    this.yp = paramString2;
    this.yq = paramString3;
    this.yr = paramInt1;
    this.ys = paramInt2;
  }
  
  public int compareTo(Long paramLong)
  {
    if (this.tN > paramLong.longValue()) {
      return 1;
    }
    if (this.tN < paramLong.longValue()) {
      return -1;
    }
    return 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¿.if
 * JD-Core Version:    0.7.0.1
 */