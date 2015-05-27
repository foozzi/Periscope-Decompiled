package o;

import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class jk
  extends gk<fw>
{
  public void ˊ(kc paramkc, fw paramfw)
  {
    if ((paramfw == null) || (paramfw.q()))
    {
      paramkc.T();
      return;
    }
    if (paramfw.p())
    {
      paramfw = paramfw.t();
      if (paramfw.w()) {
        paramkc.ˊ(paramfw.g());
      } else if (paramfw.v()) {
        paramkc.ˁ(paramfw.m());
      } else {
        paramkc.ᖮ(paramfw.h());
      }
      return;
    }
    if (paramfw.n())
    {
      paramkc.P();
      paramfw = paramfw.s().iterator();
      while (paramfw.hasNext()) {
        ˊ(paramkc, (fw)paramfw.next());
      }
      paramkc.Q();
      return;
    }
    if (paramfw.o())
    {
      paramkc.R();
      paramfw = paramfw.r().entrySet().iterator();
      while (paramfw.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramfw.next();
        paramkc.ᒢ((String)localEntry.getKey());
        ˊ(paramkc, (fw)localEntry.getValue());
      }
      paramkc.S();
      return;
    }
    throw new IllegalArgumentException("Couldn't write " + paramfw.getClass());
  }
  
  public fw ᴵ(jz paramjz)
  {
    Object localObject;
    switch (ir.1.LP[paramjz.J().ordinal()])
    {
    default: 
      break;
    case 3: 
      return new gc(paramjz.nextString());
    case 1: 
      return new gc(new hj(paramjz.nextString()));
    case 2: 
      return new gc(Boolean.valueOf(paramjz.nextBoolean()));
    case 4: 
      paramjz.nextNull();
      return fy.Ku;
    case 5: 
      localObject = new ft();
      paramjz.beginArray();
      while (paramjz.hasNext()) {
        ((ft)localObject).ˎ(ᴵ(paramjz));
      }
      paramjz.endArray();
      return localObject;
    case 6: 
      localObject = new fz();
      paramjz.beginObject();
      while (paramjz.hasNext()) {
        ((fz)localObject).ˊ(paramjz.nextName(), ᴵ(paramjz));
      }
      paramjz.endObject();
      return localObject;
    }
    throw new IllegalArgumentException();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jk
 * JD-Core Version:    0.7.0.1
 */