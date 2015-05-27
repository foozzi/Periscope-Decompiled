package o;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class ie
  extends kc
{
  private static final Writer LI = new ig();
  private static final gc LJ = new gc("closed");
  private final List<fw> LH = new ArrayList();
  private String LK;
  private fw LL = fy.Ku;
  
  public ie()
  {
    super(LI);
  }
  
  private fw O()
  {
    return (fw)this.LH.get(this.LH.size() - 1);
  }
  
  private void ˏ(fw paramfw)
  {
    if (this.LK != null)
    {
      if ((!paramfw.q()) || (ag())) {
        ((fz)O()).ˊ(this.LK, paramfw);
      }
      this.LK = null;
      return;
    }
    if (this.LH.isEmpty())
    {
      this.LL = paramfw;
      return;
    }
    fw localfw = O();
    if ((localfw instanceof ft))
    {
      ((ft)localfw).ˎ(paramfw);
      return;
    }
    throw new IllegalStateException();
  }
  
  public fw N()
  {
    if (!this.LH.isEmpty()) {
      throw new IllegalStateException("Expected one JSON element but was " + this.LH);
    }
    return this.LL;
  }
  
  public kc P()
  {
    ft localft = new ft();
    ˏ(localft);
    this.LH.add(localft);
    return this;
  }
  
  public kc Q()
  {
    if ((this.LH.isEmpty()) || (this.LK != null)) {
      throw new IllegalStateException();
    }
    if ((O() instanceof ft))
    {
      this.LH.remove(this.LH.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public kc R()
  {
    fz localfz = new fz();
    ˏ(localfz);
    this.LH.add(localfz);
    return this;
  }
  
  public kc S()
  {
    if ((this.LH.isEmpty()) || (this.LK != null)) {
      throw new IllegalStateException();
    }
    if ((O() instanceof fz))
    {
      this.LH.remove(this.LH.size() - 1);
      return this;
    }
    throw new IllegalStateException();
  }
  
  public kc T()
  {
    ˏ(fy.Ku);
    return this;
  }
  
  public void close()
  {
    if (!this.LH.isEmpty()) {
      throw new IOException("Incomplete document");
    }
    this.LH.add(LJ);
  }
  
  public void flush() {}
  
  public kc ˁ(boolean paramBoolean)
  {
    ˏ(new gc(Boolean.valueOf(paramBoolean)));
    return this;
  }
  
  public kc ˊ(Number paramNumber)
  {
    if (paramNumber == null) {
      return T();
    }
    if (!isLenient())
    {
      double d = paramNumber.doubleValue();
      if ((Double.isNaN(d)) || (Double.isInfinite(d))) {
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber);
      }
    }
    ˏ(new gc(paramNumber));
    return this;
  }
  
  public kc ᐩ(long paramLong)
  {
    ˏ(new gc(Long.valueOf(paramLong)));
    return this;
  }
  
  public kc ᒢ(String paramString)
  {
    if ((this.LH.isEmpty()) || (this.LK != null)) {
      throw new IllegalStateException();
    }
    if ((O() instanceof fz))
    {
      this.LK = paramString;
      return this;
    }
    throw new IllegalStateException();
  }
  
  public kc ᖮ(String paramString)
  {
    if (paramString == null) {
      return T();
    }
    ˏ(new gc(paramString));
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ie
 * JD-Core Version:    0.7.0.1
 */