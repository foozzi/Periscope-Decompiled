package o;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class ﭕ$if
  implements Comparable<if>
{
  public final ResolveInfo resolveInfo;
  public float weight;
  
  public ﭕ$if(ﭕ paramﭕ, ResolveInfo paramResolveInfo)
  {
    this.resolveInfo = paramResolveInfo;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if (getClass() != paramObject.getClass()) {
      return false;
    }
    paramObject = (if)paramObject;
    return Float.floatToIntBits(this.weight) == Float.floatToIntBits(paramObject.weight);
  }
  
  public int hashCode()
  {
    return Float.floatToIntBits(this.weight) + 31;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("resolveInfo:").append(this.resolveInfo.toString());
    localStringBuilder.append("; weight:").append(new BigDecimal(this.weight));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public int ˊ(if paramif)
  {
    return Float.floatToIntBits(paramif.weight) - Float.floatToIntBits(this.weight);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­.if
 * JD-Core Version:    0.7.0.1
 */