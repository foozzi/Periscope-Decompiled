package o;

import android.content.Context;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.maps.GoogleMapOptions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class bq$ˊ
  extends ﭴ<bq.if>
{
  private final ViewGroup Io;
  protected ﺙ<bq.if> Ip;
  private final GoogleMapOptions Iq;
  private final List<bt> Ir = new ArrayList();
  private final Context mContext;
  
  bq$ˊ(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    this.Io = paramViewGroup;
    this.mContext = paramContext;
    this.Iq = paramGoogleMapOptions;
  }
  
  public void ˊ(bt parambt)
  {
    if (ァ() != null)
    {
      ((bq.if)ァ()).ˊ(parambt);
      return;
    }
    this.Ir.add(parambt);
  }
  
  protected void ˊ(ﺙ<bq.if> paramﺙ)
  {
    this.Ip = paramﺙ;
    ٽ();
  }
  
  public void ٽ()
  {
    if ((this.Ip != null) && (ァ() == null)) {
      try
      {
        Object localObject = dd.ｰ(this.mContext).ˊ(ﱡ.ᗮ(this.mContext), this.Iq);
        this.Ip.ˊ(new bq.if(this.Io, (bz)localObject));
        localObject = this.Ir.iterator();
        while (((Iterator)localObject).hasNext())
        {
          bt localbt = (bt)((Iterator)localObject).next();
          ((bq.if)ァ()).ˊ(localbt);
        }
        this.Ir.clear();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new di(localRemoteException);
      }
      catch (Ⴡ localჁ) {}
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bq.Ë
 * JD-Core Version:    0.7.0.1
 */