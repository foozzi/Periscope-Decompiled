package o;

import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.internal.zzpg;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.location.LocationRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class w
{
  private final ab<u> FV;
  private ContentProviderClient Gc = null;
  private boolean Gd = false;
  private Map<ay, w.ˊ> Ge = new HashMap();
  private Map<Object, w.ˋ> Gf = new HashMap();
  private final Context mContext;
  
  public w(Context paramContext, ab<u> paramab)
  {
    this.mContext = paramContext;
    this.FV = paramab;
  }
  
  private w.ˊ ˊ(ay paramay, Looper paramLooper)
  {
    if (paramLooper == null) {
      ﺧ.ʼ(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
    }
    synchronized (this.Ge)
    {
      w.ˊ localˊ2 = (w.ˊ)this.Ge.get(paramay);
      w.ˊ localˊ1 = localˊ2;
      if (localˊ2 == null) {
        localˊ1 = new w.ˊ(paramay, paramLooper);
      }
      this.Ge.put(paramay, localˊ1);
      return localˊ1;
    }
  }
  
  public void removeAllListeners()
  {
    label170:
    label173:
    for (;;)
    {
      try
      {
        synchronized (this.Ge)
        {
          Iterator localIterator = this.Ge.values().iterator();
          Object localObject2;
          if (localIterator.hasNext())
          {
            localObject2 = (w.ˊ)localIterator.next();
            if (localObject2 == null) {
              break label170;
            }
            ((u)this.FV.ᴝ()).ˊ(zzpi.ˋ((bf)localObject2));
            break label170;
          }
          this.Ge.clear();
          localIterator = this.Gf.values().iterator();
          if (localIterator.hasNext())
          {
            localObject2 = (w.ˋ)localIterator.next();
            if (localObject2 == null) {
              break label173;
            }
            ((u)this.FV.ᴝ()).ˊ(zzpi.ˊ((bg)localObject2));
            break label173;
          }
          this.Gf.clear();
        }
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new IllegalStateException(localRemoteException);
      }
    }
  }
  
  public void ˊ(LocationRequest paramLocationRequest, ay paramay, Looper paramLooper)
  {
    this.FV.ᴘ();
    paramay = ˊ(paramay, paramLooper);
    ((u)this.FV.ᴝ()).ˊ(zzpi.ˋ(zzpg.ˊ(paramLocationRequest), paramay));
  }
  
  public void ˊ(ay paramay)
  {
    this.FV.ᴘ();
    ﺧ.ʼ(paramay, "Invalid null listener");
    synchronized (this.Ge)
    {
      paramay = (w.ˊ)this.Ge.remove(paramay);
      if ((this.Gc != null) && (this.Ge.isEmpty()))
      {
        this.Gc.release();
        this.Gc = null;
      }
      if (paramay != null)
      {
        paramay.release();
        ((u)this.FV.ᴝ()).ˊ(zzpi.ˋ(paramay));
      }
      return;
    }
  }
  
  public void ᔇ(boolean paramBoolean)
  {
    this.FV.ᴘ();
    ((u)this.FV.ᴝ()).ᔇ(paramBoolean);
    this.Gd = paramBoolean;
  }
  
  public void ｒ()
  {
    if (this.Gd) {
      try
      {
        ᔇ(false);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new IllegalStateException(localRemoteException);
      }
    }
  }
  
  static class if
    extends Handler
  {
    private final ay Gg;
    
    public if(ay paramay)
    {
      this.Gg = paramay;
    }
    
    public if(ay paramay, Looper paramLooper)
    {
      super();
      this.Gg = paramay;
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        break;
      case 1: 
        paramMessage = new Location((Location)paramMessage.obj);
        this.Gg.onLocationChanged(paramMessage);
        return;
      }
      Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.w
 * JD-Core Version:    0.7.0.1
 */