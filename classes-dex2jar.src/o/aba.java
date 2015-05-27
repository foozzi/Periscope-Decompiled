package o;

import android.location.Location;

public class aba
{
  public static boolean ˋ(double paramDouble1, double paramDouble2)
  {
    return (paramDouble1 != 0.0D) || (paramDouble2 != 0.0D);
  }
  
  public static boolean ˏ(Location paramLocation)
  {
    return (paramLocation != null) && (ˋ(paramLocation.getLatitude(), paramLocation.getLongitude()));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aba
 * JD-Core Version:    0.7.0.1
 */