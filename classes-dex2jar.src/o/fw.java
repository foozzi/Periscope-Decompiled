package o;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.math.BigInteger;

public abstract class fw
{
  public Number g()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public String h()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public double i()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public BigInteger j()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public long k()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public int l()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public boolean m()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public boolean n()
  {
    return this instanceof ft;
  }
  
  public boolean o()
  {
    return this instanceof fz;
  }
  
  public boolean p()
  {
    return this instanceof gc;
  }
  
  public boolean q()
  {
    return this instanceof fy;
  }
  
  public fz r()
  {
    if (o()) {
      return (fz)this;
    }
    throw new IllegalStateException("Not a JSON Object: " + this);
  }
  
  public ft s()
  {
    if (n()) {
      return (ft)this;
    }
    throw new IllegalStateException("This is not a JSON Array.");
  }
  
  public gc t()
  {
    if (p()) {
      return (gc)this;
    }
    throw new IllegalStateException("This is not a JSON Primitive.");
  }
  
  public String toString()
  {
    try
    {
      Object localObject = new StringWriter();
      kc localkc = new kc((Writer)localObject);
      localkc.setLenient(true);
      hq.ˋ(this, localkc);
      localObject = ((StringWriter)localObject).toString();
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
  
  Boolean u()
  {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fw
 * JD-Core Version:    0.7.0.1
 */