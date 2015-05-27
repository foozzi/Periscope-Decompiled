package o;

import com.google.android.gms.location.DetectedActivity;
import java.util.Comparator;

public final class au
  implements Comparator<DetectedActivity>
{
  public int ˊ(DetectedActivity paramDetectedActivity1, DetectedActivity paramDetectedActivity2)
  {
    int i = Integer.valueOf(paramDetectedActivity2.Ɔ()).compareTo(Integer.valueOf(paramDetectedActivity1.Ɔ()));
    if (i == 0) {
      return Integer.valueOf(paramDetectedActivity1.getType()).compareTo(Integer.valueOf(paramDetectedActivity2.getType()));
    }
    return i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.au
 * JD-Core Version:    0.7.0.1
 */