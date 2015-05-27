package o;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ii
  extends gk<Object>
{
  public static final gl LA = new ij();
  private final fl gson;
  
  private ii(fl paramfl)
  {
    this.gson = paramfl;
  }
  
  public void ˊ(kc paramkc, Object paramObject)
  {
    if (paramObject == null)
    {
      paramkc.T();
      return;
    }
    gk localgk = this.gson.ᐝ(paramObject.getClass());
    if ((localgk instanceof ii))
    {
      paramkc.R();
      paramkc.S();
      return;
    }
    localgk.ˊ(paramkc, paramObject);
  }
  
  public Object ˋ(jz paramjz)
  {
    Object localObject = paramjz.J();
    switch (1.LP[localObject.ordinal()])
    {
    default: 
      break;
    case 1: 
      localObject = new ArrayList();
      paramjz.beginArray();
      while (paramjz.hasNext()) {
        ((List)localObject).add(ˋ(paramjz));
      }
      paramjz.endArray();
      return localObject;
    case 2: 
      localObject = new hk();
      paramjz.beginObject();
      while (paramjz.hasNext()) {
        ((Map)localObject).put(paramjz.nextName(), ˋ(paramjz));
      }
      paramjz.endObject();
      return localObject;
    case 3: 
      return paramjz.nextString();
    case 4: 
      return Double.valueOf(paramjz.nextDouble());
    case 5: 
      return Boolean.valueOf(paramjz.nextBoolean());
    case 6: 
      paramjz.nextNull();
      return null;
    }
    throw new IllegalStateException();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ii
 * JD-Core Version:    0.7.0.1
 */