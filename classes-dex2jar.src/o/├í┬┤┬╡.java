package o;

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class ᴵ
  extends ٴ
{
  static boolean DEBUG = false;
  ι mActivity;
  boolean mRetaining;
  final String mWho;
  final ﹸ<ᴵ.if> ᵧ = new ﹸ();
  final ﹸ<ᴵ.if> וּ = new ﹸ();
  boolean וֹ;
  boolean ﹲ;
  
  ᴵ(String paramString, ι paramι, boolean paramBoolean)
  {
    this.mWho = paramString;
    this.mActivity = paramι;
    this.וֹ = paramBoolean;
  }
  
  private ᴵ.if ˎ(int paramInt, Bundle paramBundle, ٴ.if<Object> paramif)
  {
    ᴵ.if localif = new ᴵ.if(this, paramInt, paramBundle, paramif);
    localif.ﺑ = paramif.ˊ(paramInt, paramBundle);
    return localif;
  }
  
  private ᴵ.if ˏ(int paramInt, Bundle paramBundle, ٴ.if<Object> paramif)
  {
    try
    {
      this.ﹲ = true;
      paramBundle = ˎ(paramInt, paramBundle, paramif);
      ˊ(paramBundle);
      return paramBundle;
    }
    finally
    {
      this.ﹲ = false;
    }
  }
  
  public void destroyLoader(int paramInt)
  {
    if (this.ﹲ) {
      throw new IllegalStateException("Called while creating a loader");
    }
    if (DEBUG) {
      Log.v("LoaderManager", "destroyLoader in " + this + " of " + paramInt);
    }
    int i = this.ᵧ.indexOfKey(paramInt);
    ᴵ.if localif;
    if (i >= 0)
    {
      localif = (ᴵ.if)this.ᵧ.valueAt(i);
      this.ᵧ.removeAt(i);
      localif.destroy();
    }
    paramInt = this.וּ.indexOfKey(paramInt);
    if (paramInt >= 0)
    {
      localif = (ᴵ.if)this.וּ.valueAt(paramInt);
      this.וּ.removeAt(paramInt);
      localif.destroy();
    }
    if ((this.mActivity != null) && (!ᐨ())) {
      this.mActivity.mFragments.ˏ();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    String str;
    int i;
    ᴵ.if localif;
    if (this.ᵧ.size() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Active Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < this.ᵧ.size())
      {
        localif = (ᴵ.if)this.ᵧ.valueAt(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.ᵧ.keyAt(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localif.toString());
        localif.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
    if (this.וּ.size() > 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Inactive Loaders:");
      str = paramString + "    ";
      i = 0;
      while (i < this.וּ.size())
      {
        localif = (ᴵ.if)this.וּ.valueAt(i);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(this.וּ.keyAt(i));
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localif.toString());
        localif.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("LoaderManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    ᵓ.ˊ(this.mActivity, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  public void ʹ()
  {
    if (DEBUG) {
      Log.v("LoaderManager", "Retaining in " + this);
    }
    if (!this.וֹ)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doRetain when not started: " + this, localRuntimeException);
      return;
    }
    this.mRetaining = true;
    this.וֹ = false;
    int i = this.ᵧ.size() - 1;
    while (i >= 0)
    {
      ((ᴵ.if)this.ᵧ.valueAt(i)).ᵎ();
      i -= 1;
    }
  }
  
  public <D> יּ<D> ʽ(int paramInt)
  {
    if (this.ﹲ) {
      throw new IllegalStateException("Called while creating a loader");
    }
    ᴵ.if localif = (ᴵ.if)this.ᵧ.get(paramInt);
    if (localif != null)
    {
      if (localif.Ӏ != null) {
        return localif.Ӏ.ﺑ;
      }
      return localif.ﺑ;
    }
    return null;
  }
  
  public <D> יּ<D> ˊ(int paramInt, Bundle paramBundle, ٴ.if<D> paramif)
  {
    if (this.ﹲ) {
      throw new IllegalStateException("Called while creating a loader");
    }
    ᴵ.if localif = (ᴵ.if)this.ᵧ.get(paramInt);
    if (DEBUG) {
      Log.v("LoaderManager", "initLoader in " + this + ": args=" + paramBundle);
    }
    if (localif == null)
    {
      paramif = ˏ(paramInt, paramBundle, paramif);
      paramBundle = paramif;
      if (DEBUG)
      {
        Log.v("LoaderManager", "  Created new loader " + paramif);
        paramBundle = paramif;
      }
    }
    else
    {
      if (DEBUG) {
        Log.v("LoaderManager", "  Re-using existing loader " + localif);
      }
      localif.ﹼ = paramif;
      paramBundle = localif;
    }
    if ((paramBundle.ﻧ) && (this.וֹ)) {
      paramBundle.ˎ(paramBundle.ﺑ, paramBundle.Ι);
    }
    return paramBundle.ﺑ;
  }
  
  void ˊ(ᴵ.if paramif)
  {
    this.ᵧ.put(paramif.ﹷ, paramif);
    if (this.וֹ) {
      paramif.start();
    }
  }
  
  void ˊ(ι paramι)
  {
    this.mActivity = paramι;
  }
  
  public <D> יּ<D> ˋ(int paramInt, Bundle paramBundle, ٴ.if<D> paramif)
  {
    if (this.ﹲ) {
      throw new IllegalStateException("Called while creating a loader");
    }
    ᴵ.if localif1 = (ᴵ.if)this.ᵧ.get(paramInt);
    if (DEBUG) {
      Log.v("LoaderManager", "restartLoader in " + this + ": args=" + paramBundle);
    }
    if (localif1 != null)
    {
      ᴵ.if localif2 = (ᴵ.if)this.וּ.get(paramInt);
      if (localif2 != null)
      {
        if (localif1.ﻧ)
        {
          if (DEBUG) {
            Log.v("LoaderManager", "  Removing last inactive loader: " + localif1);
          }
          localif2.ʺ = false;
          localif2.destroy();
          localif1.ﺑ.abandon();
          this.וּ.put(paramInt, localif1);
        }
        else if (!localif1.וֹ)
        {
          if (DEBUG) {
            Log.v("LoaderManager", "  Current loader is stopped; replacing");
          }
          this.ᵧ.put(paramInt, null);
          localif1.destroy();
        }
        else
        {
          if (localif1.Ӏ != null)
          {
            if (DEBUG) {
              Log.v("LoaderManager", "  Removing pending loader: " + localif1.Ӏ);
            }
            localif1.Ӏ.destroy();
            localif1.Ӏ = null;
          }
          if (DEBUG) {
            Log.v("LoaderManager", "  Enqueuing as new pending loader");
          }
          localif1.Ӏ = ˎ(paramInt, paramBundle, paramif);
          return localif1.Ӏ.ﺑ;
        }
      }
      else
      {
        if (DEBUG) {
          Log.v("LoaderManager", "  Making last loader inactive: " + localif1);
        }
        localif1.ﺑ.abandon();
        this.וּ.put(paramInt, localif1);
      }
    }
    return ˏ(paramInt, paramBundle, paramif).ﺑ;
  }
  
  void ՙ()
  {
    if (this.mRetaining)
    {
      if (DEBUG) {
        Log.v("LoaderManager", "Finished Retaining in " + this);
      }
      this.mRetaining = false;
      int i = this.ᵧ.size() - 1;
      while (i >= 0)
      {
        ((ᴵ.if)this.ᵧ.valueAt(i)).ՙ();
        i -= 1;
      }
    }
  }
  
  public void י()
  {
    int i = this.ᵧ.size() - 1;
    while (i >= 0)
    {
      ((ᴵ.if)this.ᵧ.valueAt(i)).і = true;
      i -= 1;
    }
  }
  
  public void ٴ()
  {
    int i = this.ᵧ.size() - 1;
    while (i >= 0)
    {
      ((ᴵ.if)this.ᵧ.valueAt(i)).ᵔ();
      i -= 1;
    }
  }
  
  public boolean ᐨ()
  {
    boolean bool2 = false;
    int j = this.ᵧ.size();
    int i = 0;
    while (i < j)
    {
      ᴵ.if localif = (ᴵ.if)this.ᵧ.valueAt(i);
      boolean bool1;
      if ((localif.וֹ) && (!localif.ʺ)) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      bool2 |= bool1;
      i += 1;
    }
    return bool2;
  }
  
  public void ᴵ()
  {
    if (!this.mRetaining)
    {
      if (DEBUG) {
        Log.v("LoaderManager", "Destroying Active in " + this);
      }
      i = this.ᵧ.size() - 1;
      while (i >= 0)
      {
        ((ᴵ.if)this.ᵧ.valueAt(i)).destroy();
        i -= 1;
      }
      this.ᵧ.clear();
    }
    if (DEBUG) {
      Log.v("LoaderManager", "Destroying Inactive in " + this);
    }
    int i = this.וּ.size() - 1;
    while (i >= 0)
    {
      ((ᴵ.if)this.וּ.valueAt(i)).destroy();
      i -= 1;
    }
    this.וּ.clear();
  }
  
  public void ﹳ()
  {
    if (DEBUG) {
      Log.v("LoaderManager", "Starting in " + this);
    }
    if (this.וֹ)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStart when already started: " + this, localRuntimeException);
      return;
    }
    this.וֹ = true;
    int i = this.ᵧ.size() - 1;
    while (i >= 0)
    {
      ((ᴵ.if)this.ᵧ.valueAt(i)).start();
      i -= 1;
    }
  }
  
  public void ﾞ()
  {
    if (DEBUG) {
      Log.v("LoaderManager", "Stopping in " + this);
    }
    if (!this.וֹ)
    {
      RuntimeException localRuntimeException = new RuntimeException("here");
      localRuntimeException.fillInStackTrace();
      Log.w("LoaderManager", "Called doStop when not started: " + this, localRuntimeException);
      return;
    }
    int i = this.ᵧ.size() - 1;
    while (i >= 0)
    {
      ((ᴵ.if)this.ᵧ.valueAt(i)).stop();
      i -= 1;
    }
    this.וֹ = false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´µ
 * JD-Core Version:    0.7.0.1
 */