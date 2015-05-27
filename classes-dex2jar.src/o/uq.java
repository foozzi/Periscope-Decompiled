package o;

import java.io.OutputStream;

final class uq
  implements uz
{
  uq(vb paramvb, OutputStream paramOutputStream) {}
  
  public void close()
  {
    this.ZQ.close();
  }
  
  public void flush()
  {
    this.ZQ.flush();
  }
  
  public vb timeout()
  {
    return this.ZP;
  }
  
  public String toString()
  {
    return "sink(" + this.ZQ + ")";
  }
  
  public void write(ue paramue, long paramLong)
  {
    vd.checkOffsetAndCount(paramue.size, 0L, paramLong);
    while (paramLong > 0L)
    {
      this.ZP.throwIfReached();
      ux localux = paramue.ZG;
      int i = (int)Math.min(paramLong, localux.limit - localux.pos);
      this.ZQ.write(localux.fw, localux.pos, i);
      localux.pos += i;
      paramLong -= i;
      paramue.size -= i;
      if (localux.pos == localux.limit)
      {
        paramue.ZG = localux.et();
        uy.ˋ(localux);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uq
 * JD-Core Version:    0.7.0.1
 */