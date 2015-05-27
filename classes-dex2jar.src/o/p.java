package o;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;

public class p
  implements aw
{
  public ᒵ<Status> ˊ(ᒴ paramᒴ, LocationRequest paramLocationRequest, ay paramay)
  {
    return paramᒴ.ˋ(new q(this, paramᒴ, paramLocationRequest, paramay));
  }
  
  public ᒵ<Status> ˊ(ᒴ paramᒴ, ay paramay)
  {
    return paramᒴ.ˋ(new r(this, paramᒴ, paramay));
  }
  
  static abstract class if
    extends az.if<Status>
  {
    public if(ᒴ paramᒴ)
    {
      super();
    }
    
    public Status ˏ(Status paramStatus)
    {
      return paramStatus;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.p
 * JD-Core Version:    0.7.0.1
 */