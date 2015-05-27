package o;

import java.util.ArrayList;
import java.util.List;

public final class ﺟ$if
{
  private final List<String> EM;
  private final Object EN;
  
  private ﺟ$if(Object paramObject)
  {
    this.EN = ﺧ.ᔈ(paramObject);
    this.EM = new ArrayList();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(100).append(this.EN.getClass().getSimpleName()).append('{');
    int j = this.EM.size();
    int i = 0;
    while (i < j)
    {
      localStringBuilder.append((String)this.EM.get(i));
      if (i < j - 1) {
        localStringBuilder.append(", ");
      }
      i += 1;
    }
    return '}';
  }
  
  public if ˊ(String paramString, Object paramObject)
  {
    this.EM.add((String)ﺧ.ᔈ(paramString) + "=" + String.valueOf(paramObject));
    return this;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ïº.if
 * JD-Core Version:    0.7.0.1
 */