package o;

import android.content.ComponentName;
import java.math.BigDecimal;

public final class ﭕ$ˋ
{
  public final long time;
  public final float weight;
  public final ComponentName ᘂ;
  
  public ﭕ$ˋ(ComponentName paramComponentName, long paramLong, float paramFloat)
  {
    this.ᘂ = paramComponentName;
    this.time = paramLong;
    this.weight = paramFloat;
  }
  
  public ﭕ$ˋ(String paramString, long paramLong, float paramFloat)
  {
    this(ComponentName.unflattenFromString(paramString), paramLong, paramFloat);
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
    paramObject = (ˋ)paramObject;
    if (this.ᘂ == null)
    {
      if (paramObject.ᘂ != null) {
        return false;
      }
    }
    else if (!this.ᘂ.equals(paramObject.ᘂ)) {
      return false;
    }
    if (this.time != paramObject.time) {
      return false;
    }
    return Float.floatToIntBits(this.weight) == Float.floatToIntBits(paramObject.weight);
  }
  
  public int hashCode()
  {
    int i;
    if (this.ᘂ == null) {
      i = 0;
    } else {
      i = this.ᘂ.hashCode();
    }
    return ((i + 31) * 31 + (int)(this.time ^ this.time >>> 32)) * 31 + Float.floatToIntBits(this.weight);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("; activity:").append(this.ᘂ);
    localStringBuilder.append("; time:").append(this.time);
    localStringBuilder.append("; weight:").append(new BigDecimal(this.weight));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­.Ë
 * JD-Core Version:    0.7.0.1
 */