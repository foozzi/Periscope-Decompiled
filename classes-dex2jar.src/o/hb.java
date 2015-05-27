package o;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

class hb
  implements ho<T>
{
  hb(gt paramgt, Type paramType) {}
  
  public T C()
  {
    if ((this.KJ instanceof ParameterizedType))
    {
      Type localType = ((ParameterizedType)this.KJ).getActualTypeArguments()[0];
      if ((localType instanceof Class)) {
        return EnumSet.noneOf((Class)localType);
      }
      throw new fx("Invalid EnumSet type: " + this.KJ.toString());
    }
    throw new fx("Invalid EnumSet type: " + this.KJ.toString());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.hb
 * JD-Core Version:    0.7.0.1
 */