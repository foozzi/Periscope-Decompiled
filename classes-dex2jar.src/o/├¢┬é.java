package o;

import android.annotation.TargetApi;
import java.util.Arrays;

@TargetApi(21)
public final class ۂ
{
  private final int[] sL;
  private final int sM;
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ۂ)) {
      return false;
    }
    paramObject = (ۂ)paramObject;
    return (Arrays.equals(this.sL, paramObject.sL)) && (this.sM == paramObject.sM);
  }
  
  public int hashCode()
  {
    return this.sM + Arrays.hashCode(this.sL) * 31;
  }
  
  public String toString()
  {
    return "AudioCapabilities[maxChannelCount=" + this.sM + ", supportedEncodings=" + Arrays.toString(this.sL) + "]";
  }
  
  public boolean ז(int paramInt)
  {
    return Arrays.binarySearch(this.sL, paramInt) >= 0;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Û
 * JD-Core Version:    0.7.0.1
 */