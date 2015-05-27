package o;

import java.io.IOException;

class uc
  implements va
{
  uc(ua paramua, va paramva) {}
  
  public void close()
  {
    try
    {
      this.ZC.close();
      this.ZB.exit(true);
      return;
    }
    catch (IOException localIOException)
    {
      throw this.ZB.exit(localIOException);
    }
    finally
    {
      this.ZB.exit(false);
    }
  }
  
  public long read(ue paramue, long paramLong)
  {
    this.ZB.enter();
    try
    {
      paramLong = this.ZC.read(paramue, paramLong);
      this.ZB.exit(true);
      return paramLong;
    }
    catch (IOException paramue)
    {
      throw this.ZB.exit(paramue);
    }
    finally
    {
      this.ZB.exit(false);
    }
  }
  
  public vb timeout()
  {
    return this.ZB;
  }
  
  public String toString()
  {
    return "AsyncTimeout.source(" + this.ZC + ")";
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uc
 * JD-Core Version:    0.7.0.1
 */