package o;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public final class ic
  extends jz
{
  private static final Reader LF = new id();
  private static final Object LG = new Object();
  private final List<Object> LH = new ArrayList();
  
  public ic(fw paramfw)
  {
    super(LF);
    this.LH.add(paramfw);
  }
  
  private Object K()
  {
    return this.LH.get(this.LH.size() - 1);
  }
  
  private Object L()
  {
    return this.LH.remove(this.LH.size() - 1);
  }
  
  private void ˊ(kb paramkb)
  {
    if (J() != paramkb) {
      throw new IllegalStateException("Expected " + paramkb + " but was " + J());
    }
  }
  
  public kb J()
  {
    if (this.LH.isEmpty()) {
      return kb.NC;
    }
    Object localObject = K();
    if ((localObject instanceof Iterator))
    {
      boolean bool = this.LH.get(this.LH.size() - 2) instanceof fz;
      localObject = (Iterator)localObject;
      if (((Iterator)localObject).hasNext())
      {
        if (bool) {
          return kb.Nx;
        }
        this.LH.add(((Iterator)localObject).next());
        return J();
      }
      if (bool) {
        return kb.Nw;
      }
      return kb.Nu;
    }
    if ((localObject instanceof fz)) {
      return kb.Nv;
    }
    if ((localObject instanceof ft)) {
      return kb.Nt;
    }
    if ((localObject instanceof gc))
    {
      localObject = (gc)localObject;
      if (((gc)localObject).x()) {
        return kb.Ny;
      }
      if (((gc)localObject).v()) {
        return kb.NA;
      }
      if (((gc)localObject).w()) {
        return kb.Nz;
      }
      throw new AssertionError();
    }
    if ((localObject instanceof fy)) {
      return kb.NB;
    }
    if (localObject == LG) {
      throw new IllegalStateException("JsonReader is closed");
    }
    throw new AssertionError();
  }
  
  public void M()
  {
    ˊ(kb.Nx);
    Map.Entry localEntry = (Map.Entry)((Iterator)K()).next();
    this.LH.add(localEntry.getValue());
    this.LH.add(new gc((String)localEntry.getKey()));
  }
  
  public void beginArray()
  {
    ˊ(kb.Nt);
    ft localft = (ft)K();
    this.LH.add(localft.iterator());
  }
  
  public void beginObject()
  {
    ˊ(kb.Nv);
    fz localfz = (fz)K();
    this.LH.add(localfz.entrySet().iterator());
  }
  
  public void close()
  {
    this.LH.clear();
    this.LH.add(LG);
  }
  
  public void endArray()
  {
    ˊ(kb.Nu);
    L();
    L();
  }
  
  public void endObject()
  {
    ˊ(kb.Nw);
    L();
    L();
  }
  
  public boolean hasNext()
  {
    kb localkb = J();
    return (localkb != kb.Nw) && (localkb != kb.Nu);
  }
  
  public boolean nextBoolean()
  {
    ˊ(kb.NA);
    return ((gc)L()).m();
  }
  
  public double nextDouble()
  {
    kb localkb = J();
    if ((localkb != kb.Nz) && (localkb != kb.Ny)) {
      throw new IllegalStateException("Expected " + kb.Nz + " but was " + localkb);
    }
    double d = ((gc)K()).i();
    if ((!isLenient()) && ((Double.isNaN(d)) || (Double.isInfinite(d)))) {
      throw new NumberFormatException("JSON forbids NaN and infinities: " + d);
    }
    L();
    return d;
  }
  
  public int nextInt()
  {
    kb localkb = J();
    if ((localkb != kb.Nz) && (localkb != kb.Ny)) {
      throw new IllegalStateException("Expected " + kb.Nz + " but was " + localkb);
    }
    int i = ((gc)K()).l();
    L();
    return i;
  }
  
  public long nextLong()
  {
    kb localkb = J();
    if ((localkb != kb.Nz) && (localkb != kb.Ny)) {
      throw new IllegalStateException("Expected " + kb.Nz + " but was " + localkb);
    }
    long l = ((gc)K()).k();
    L();
    return l;
  }
  
  public String nextName()
  {
    ˊ(kb.Nx);
    Map.Entry localEntry = (Map.Entry)((Iterator)K()).next();
    this.LH.add(localEntry.getValue());
    return (String)localEntry.getKey();
  }
  
  public void nextNull()
  {
    ˊ(kb.NB);
    L();
  }
  
  public String nextString()
  {
    kb localkb = J();
    if ((localkb != kb.Ny) && (localkb != kb.Nz)) {
      throw new IllegalStateException("Expected " + kb.Ny + " but was " + localkb);
    }
    return ((gc)L()).h();
  }
  
  public void skipValue()
  {
    if (J() == kb.Nx)
    {
      nextName();
      return;
    }
    L();
  }
  
  public String toString()
  {
    return getClass().getSimpleName();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ic
 * JD-Core Version:    0.7.0.1
 */