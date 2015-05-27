package o;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;

public class ᴝ
  extends Fragment
  implements DialogInterface.OnCancelListener, ٴ.if<ConnectionResult>
{
  private boolean Dr;
  private int Ds = -1;
  private ConnectionResult Dt;
  private final Handler Du = new Handler(Looper.getMainLooper());
  private final SparseArray<ᴝ.ˊ> Dv = new SparseArray();
  
  private void ˊ(int paramInt, ConnectionResult paramConnectionResult)
  {
    if (!this.Dr)
    {
      this.Dr = true;
      this.Ds = paramInt;
      this.Dt = paramConnectionResult;
      this.Du.post(new ᴝ.ˋ(this, paramInt, paramConnectionResult));
    }
  }
  
  private void ˋ(int paramInt, ConnectionResult paramConnectionResult)
  {
    Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
    Object localObject = (ᴝ.ˊ)this.Dv.get(paramInt);
    if (localObject != null)
    {
      ᓑ(paramInt);
      localObject = ((ᴝ.ˊ)localObject).Dz;
      if (localObject != null) {
        ((ᒴ.ˋ)localObject).ˊ(paramConnectionResult);
      }
    }
    ᒏ();
  }
  
  public static ᴝ ˎ(ι paramι)
  {
    ﺧ.ᐪ("Must be called from main thread of process");
    ˈ localˈ = paramι.getSupportFragmentManager();
    try
    {
      paramι = (ᴝ)localˈ.findFragmentByTag("GmsSupportLifecycleFragment");
    }
    catch (ClassCastException paramι)
    {
      throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", paramι);
    }
    Object localObject;
    if (paramι != null)
    {
      localObject = paramι;
      if (!paramι.isRemoving()) {}
    }
    else
    {
      localObject = new ᴝ();
      localˈ.ˋ().ˊ((Fragment)localObject, "GmsSupportLifecycleFragment").commit();
      localˈ.executePendingTransactions();
    }
    return localObject;
  }
  
  private void ᒏ()
  {
    this.Dr = false;
    this.Ds = -1;
    this.Dt = null;
    ٴ localٴ = getLoaderManager();
    int i = 0;
    while (i < this.Dv.size())
    {
      int j = this.Dv.keyAt(i);
      ᴝ.if localif = ᔆ(j);
      if ((localif != null) && (localif.ᒰ()))
      {
        localٴ.destroyLoader(j);
        localٴ.ˊ(j, null, this);
      }
      i += 1;
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 0;
    switch (paramInt1)
    {
    default: 
      paramInt1 = i;
      break;
    case 2: 
      paramInt1 = i;
      if (ძ.ٴ(getActivity()) == 0) {
        paramInt1 = 1;
      }
      break;
    case 1: 
      paramInt1 = i;
      if (paramInt2 == -1) {
        paramInt1 = 1;
      }
      break;
    }
    if (paramInt1 != 0)
    {
      ᒏ();
      return;
    }
    ˋ(this.Ds, this.Dt);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    int i = 0;
    while (i < this.Dv.size())
    {
      int j = this.Dv.keyAt(i);
      paramActivity = ᔆ(j);
      if ((paramActivity != null) && (((ᴝ.ˊ)this.Dv.valueAt(i)).Dw != paramActivity.Dw)) {
        getLoaderManager().ˋ(j, null, this);
      } else {
        getLoaderManager().ˊ(j, null, this);
      }
      i += 1;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    ˋ(this.Ds, this.Dt);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      this.Dr = paramBundle.getBoolean("resolving_error", false);
      this.Ds = paramBundle.getInt("failed_client_id", -1);
      if (this.Ds >= 0) {
        this.Dt = new ConnectionResult(paramBundle.getInt("failed_status"), (PendingIntent)paramBundle.getParcelable("failed_resolution"));
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("resolving_error", this.Dr);
    if (this.Ds >= 0)
    {
      paramBundle.putInt("failed_client_id", this.Ds);
      paramBundle.putInt("failed_status", this.Dt.getErrorCode());
      paramBundle.putParcelable("failed_resolution", this.Dt.ט());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!this.Dr)
    {
      int i = 0;
      while (i < this.Dv.size())
      {
        getLoaderManager().ˊ(this.Dv.keyAt(i), null, this);
        i += 1;
      }
    }
  }
  
  public יּ<ConnectionResult> ˊ(int paramInt, Bundle paramBundle)
  {
    return new ᴝ.if(getActivity(), ((ᴝ.ˊ)this.Dv.get(paramInt)).Dw);
  }
  
  public void ˊ(int paramInt, ᒴ paramᒴ, ᒴ.ˋ paramˋ)
  {
    ﺧ.ʼ(paramᒴ, "GoogleApiClient instance cannot be null");
    boolean bool;
    if (this.Dv.indexOfKey(paramInt) < 0) {
      bool = true;
    } else {
      bool = false;
    }
    ﺧ.ˎ(bool, "Already managing a GoogleApiClient with id " + paramInt);
    paramᒴ = new ᴝ.ˊ(paramᒴ, paramˋ, null);
    this.Dv.put(paramInt, paramᒴ);
    if (getActivity() != null)
    {
      ٴ.enableDebugLogging(false);
      getLoaderManager().ˊ(paramInt, null, this);
    }
  }
  
  public void ˊ(יּ<ConnectionResult> paramיּ) {}
  
  public void ˊ(יּ<ConnectionResult> paramיּ, ConnectionResult paramConnectionResult)
  {
    if (!paramConnectionResult.չ()) {
      ˊ(paramיּ.getId(), paramConnectionResult);
    }
  }
  
  public ᒴ ᒼ(int paramInt)
  {
    if (getActivity() != null)
    {
      ᴝ.if localif = ᔆ(paramInt);
      if (localif != null) {
        return localif.Dw;
      }
    }
    return null;
  }
  
  public void ᓑ(int paramInt)
  {
    this.Dv.remove(paramInt);
    getLoaderManager().destroyLoader(paramInt);
  }
  
  ᴝ.if ᔆ(int paramInt)
  {
    try
    {
      ᴝ.if localif = (ᴝ.if)getLoaderManager().ʽ(paramInt);
      return localif;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new IllegalStateException("Unknown loader in SupportLifecycleFragment", localClassCastException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */