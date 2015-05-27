package o;

import java.math.BigInteger;

public final class gc
  extends fw
{
  private static final Class<?>[] Kw = { Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class };
  private Object Kx;
  
  public gc(Boolean paramBoolean)
  {
    setValue(paramBoolean);
  }
  
  public gc(Number paramNumber)
  {
    setValue(paramNumber);
  }
  
  gc(Object paramObject)
  {
    setValue(paramObject);
  }
  
  public gc(String paramString)
  {
    setValue(paramString);
  }
  
  private static boolean ˊ(gc paramgc)
  {
    if ((paramgc.Kx instanceof Number))
    {
      paramgc = (Number)paramgc.Kx;
      return ((paramgc instanceof BigInteger)) || ((paramgc instanceof Long)) || ((paramgc instanceof Integer)) || ((paramgc instanceof Short)) || ((paramgc instanceof Byte));
    }
    return false;
  }
  
  private static boolean ᵋ(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return true;
    }
    paramObject = paramObject.getClass();
    Class[] arrayOfClass = Kw;
    int j = arrayOfClass.length;
    int i = 0;
    while (i < j)
    {
      if (arrayOfClass[i].isAssignableFrom(paramObject)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (gc)paramObject;
    if (this.Kx == null) {
      return paramObject.Kx == null;
    }
    if ((ˊ(this)) && (ˊ(paramObject))) {
      return g().longValue() == paramObject.g().longValue();
    }
    if (((this.Kx instanceof Number)) && ((paramObject.Kx instanceof Number)))
    {
      double d1 = g().doubleValue();
      double d2 = paramObject.g().doubleValue();
      return (d1 == d2) || ((Double.isNaN(d1)) && (Double.isNaN(d2)));
    }
    return this.Kx.equals(paramObject.Kx);
  }
  
  public Number g()
  {
    if ((this.Kx instanceof String)) {
      return new hj((String)this.Kx);
    }
    return (Number)this.Kx;
  }
  
  public String h()
  {
    if (w()) {
      return g().toString();
    }
    if (v()) {
      return u().toString();
    }
    return (String)this.Kx;
  }
  
  public int hashCode()
  {
    if (this.Kx == null) {
      return 31;
    }
    long l;
    if (ˊ(this))
    {
      l = g().longValue();
      return (int)(l >>> 32 ^ l);
    }
    if ((this.Kx instanceof Number))
    {
      l = Double.doubleToLongBits(g().doubleValue());
      return (int)(l >>> 32 ^ l);
    }
    return this.Kx.hashCode();
  }
  
  public double i()
  {
    if (w()) {
      return g().doubleValue();
    }
    return Double.parseDouble(h());
  }
  
  public BigInteger j()
  {
    if ((this.Kx instanceof BigInteger)) {
      return (BigInteger)this.Kx;
    }
    return new BigInteger(this.Kx.toString());
  }
  
  public long k()
  {
    if (w()) {
      return g().longValue();
    }
    return Long.parseLong(h());
  }
  
  public int l()
  {
    if (w()) {
      return g().intValue();
    }
    return Integer.parseInt(h());
  }
  
  public boolean m()
  {
    if (v()) {
      return u().booleanValue();
    }
    return Boolean.parseBoolean(h());
  }
  
  void setValue(Object paramObject)
  {
    if ((paramObject instanceof Character))
    {
      this.Kx = String.valueOf(((Character)paramObject).charValue());
      return;
    }
    boolean bool;
    if (((paramObject instanceof Number)) || (ᵋ(paramObject))) {
      bool = true;
    } else {
      bool = false;
    }
    gr.יּ(bool);
    this.Kx = paramObject;
  }
  
  Boolean u()
  {
    return (Boolean)this.Kx;
  }
  
  public boolean v()
  {
    return this.Kx instanceof Boolean;
  }
  
  public boolean w()
  {
    return this.Kx instanceof Number;
  }
  
  public boolean x()
  {
    return this.Kx instanceof String;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.gc
 * JD-Core Version:    0.7.0.1
 */