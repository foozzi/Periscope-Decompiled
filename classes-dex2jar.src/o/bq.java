package o;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.maps.GoogleMapOptions;

public class bq
  extends FrameLayout
{
  private final bq.ˊ Ii;
  
  public bq(Context paramContext)
  {
    super(paramContext);
    this.Ii = new bq.ˊ(this, paramContext, null);
  }
  
  public bq(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.Ii = new bq.ˊ(this, paramContext, GoogleMapOptions.ˋ(paramContext, paramAttributeSet));
  }
  
  public bq(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.Ii = new bq.ˊ(this, paramContext, GoogleMapOptions.ˋ(paramContext, paramAttributeSet));
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    this.Ii.onCreate(paramBundle);
    if (this.Ii.ァ() == null) {
      ﭴ.ˊ(this);
    }
  }
  
  public final void onDestroy()
  {
    this.Ii.onDestroy();
  }
  
  public final void onLowMemory()
  {
    this.Ii.onLowMemory();
  }
  
  public final void onPause()
  {
    this.Ii.onPause();
  }
  
  public final void onResume()
  {
    this.Ii.onResume();
  }
  
  public void ˊ(bt parambt)
  {
    ﺧ.ᐪ("getMapAsync() must be called on the main thread");
    this.Ii.ˊ(parambt);
  }
  
  static class if
    implements cf
  {
    private final ViewGroup Ij;
    private final bz Ik;
    private View Il;
    
    public if(ViewGroup paramViewGroup, bz parambz)
    {
      this.Ik = ((bz)ﺧ.ᔈ(parambz));
      this.Ij = ((ViewGroup)ﺧ.ᔈ(paramViewGroup));
    }
    
    public void onCreate(Bundle paramBundle)
    {
      try
      {
        this.Ik.onCreate(paramBundle);
        this.Il = ((View)ﱡ.ˊ(this.Ik.ᐱ()));
        this.Ij.removeAllViews();
        this.Ij.addView(this.Il);
        return;
      }
      catch (RemoteException paramBundle)
      {
        throw new di(paramBundle);
      }
    }
    
    public void onDestroy()
    {
      try
      {
        this.Ik.onDestroy();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new di(localRemoteException);
      }
    }
    
    public void onLowMemory()
    {
      try
      {
        this.Ik.onLowMemory();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new di(localRemoteException);
      }
    }
    
    public void onPause()
    {
      try
      {
        this.Ik.onPause();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new di(localRemoteException);
      }
    }
    
    public void onResume()
    {
      try
      {
        this.Ik.onResume();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new di(localRemoteException);
      }
    }
    
    public void ˊ(bt parambt)
    {
      try
      {
        this.Ik.ˊ(new br(this, parambt));
        return;
      }
      catch (RemoteException parambt)
      {
        throw new di(parambt);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.bq
 * JD-Core Version:    0.7.0.1
 */