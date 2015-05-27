package o;

import java.io.IOException;

class ub
  implements uz
{
  ub(ua paramua, uz paramuz) {}
  
  public void close()
  {
    this.ZB.enter();
    try
    {
      this.ZA.close();
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
  
  public void flush()
  {
    this.ZB.enter();
    try
    {
      this.ZA.flush();
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
  
  public vb timeout()
  {
    return this.ZB;
  }
  
  public String toString()
  {
    return "AsyncTimeout.sink(" + this.ZA + ")";
  }
  
  public void write(ue paramue, long paramLong)
  {
    this.ZB.enter();
    try
    {
      this.ZA.write(paramue, paramLong);
      this.ZB.exit(true);
      return;
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
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ub
 * JD-Core Version:    0.7.0.1
 */