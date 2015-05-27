package o;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.util.Log;

public class ʌ<T>
  implements ɽ<Integer, T>
{
  private final Resources jM;
  private final ɽ<Uri, T> js;
  
  public ʌ(Context paramContext, ɽ<Uri, T> paramɽ)
  {
    this(paramContext.getResources(), paramɽ);
  }
  
  public ʌ(Resources paramResources, ɽ<Uri, T> paramɽ)
  {
    this.jM = paramResources;
    this.js = paramɽ;
  }
  
  public Į<T> ˊ(Integer paramInteger, int paramInt1, int paramInt2)
  {
    Object localObject2 = null;
    Object localObject1;
    try
    {
      localObject1 = Uri.parse("android.resource://" + this.jM.getResourcePackageName(paramInteger.intValue()) + '/' + this.jM.getResourceTypeName(paramInteger.intValue()) + '/' + this.jM.getResourceEntryName(paramInteger.intValue()));
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      localObject1 = localObject2;
      if (Log.isLoggable("ResourceLoader", 5))
      {
        Log.w("ResourceLoader", "Received invalid resource id: " + paramInteger, localNotFoundException);
        localObject1 = localObject2;
      }
    }
    if (localObject1 != null) {
      return this.js.ˎ(localObject1, paramInt1, paramInt2);
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ê
 * JD-Core Version:    0.7.0.1
 */