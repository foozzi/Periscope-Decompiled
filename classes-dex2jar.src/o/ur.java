package o;

import java.io.InputStream;

final class ur
  implements va
{
  ur(vb paramvb, InputStream paramInputStream) {}
  
  public void close()
  {
    this.ZR.close();
  }
  
  public long read(ue paramue, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (paramLong == 0L) {
      return 0L;
    }
    this.ZP.throwIfReached();
    ux localux = paramue.ľ(1);
    int i = (int)Math.min(paramLong, 2048 - localux.limit);
    i = this.ZR.read(localux.fw, localux.limit, i);
    if (i == -1) {
      return -1L;
    }
    localux.limit += i;
    paramue.size += i;
    return i;
  }
  
  public vb timeout()
  {
    return this.ZP;
  }
  
  public String toString()
  {
    return "source(" + this.ZR + ")";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ur
 * JD-Core Version:    0.7.0.1
 */