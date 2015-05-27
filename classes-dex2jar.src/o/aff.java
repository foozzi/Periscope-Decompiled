package o;

import android.location.Location;

class aff
  implements afi.if
{
  aff(aet paramaet) {}
  
  public void ᐝ(Location paramLocation)
  {
    if ((aet.ᐧ(this.bBV) == null) || (aet.ι(this.bBV) == null))
    {
      akk.ᐨ("RTMP", "channel not set up yet!");
      return;
    }
    paramLocation = ant.ˊ(aet.ι(this.bBV), akn.AB(), Double.valueOf(paramLocation.getLatitude()), Double.valueOf(paramLocation.getLongitude()));
    aet.ᐨ(this.bBV).log("sending message: lat, long");
    aet.ʾ(this.bBV).ˊ(aet.ᐧ(this.bBV), paramLocation);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aff
 * JD-Core Version:    0.7.0.1
 */