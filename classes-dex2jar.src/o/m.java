package o;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;

public class m
  extends ヾ<u>
{
  protected final ab<u> FV = new n(this);
  private final String FX;
  
  public m(Context paramContext, Looper paramLooper, ᒴ.ˊ paramˊ, ᒴ.ˋ paramˋ, String paramString)
  {
    super(paramContext, paramLooper, 23, paramˊ, paramˋ);
    this.FX = paramString;
  }
  
  protected u ʽ(IBinder paramIBinder)
  {
    return u.if.ι(paramIBinder);
  }
  
  protected String ᘣ()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected String ᘦ()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
  
  protected Bundle ᴉ()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", this.FX);
    return localBundle;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.m
 * JD-Core Version:    0.7.0.1
 */