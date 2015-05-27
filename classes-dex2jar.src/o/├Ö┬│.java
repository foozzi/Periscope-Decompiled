package o;

import android.content.Context;

public class ٳ
{
  public ٲ ˊ(Context paramContext, ٲ.if paramif)
  {
    int i;
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      return new ژ(paramContext, paramif);
    }
    return new ใ();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ù³
 * JD-Core Version:    0.7.0.1
 */