package o;

import android.os.Bundle;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

final class ᴵ$if
  implements יּ.if<Object>
{
  boolean mRetaining;
  boolean ʺ;
  Object Ι;
  boolean І;
  boolean і;
  boolean ї;
  if Ӏ;
  boolean เ;
  boolean וֹ;
  final int ﹷ;
  final Bundle ﹻ;
  ٴ.if<Object> ﹼ;
  יּ<Object> ﺑ;
  boolean ﻧ;
  
  public ᴵ$if(int paramInt, Bundle paramBundle, ٴ.if<Object> paramif)
  {
    this.ﹷ = paramBundle;
    this.ﹻ = paramif;
    Object localObject;
    this.ﹼ = localObject;
  }
  
  void destroy()
  {
    if (ᴵ.DEBUG) {
      Log.v("LoaderManager", "  Destroying: " + this);
    }
    this.เ = true;
    boolean bool = this.ʺ;
    this.ʺ = false;
    String str;
    if ((this.ﹼ != null) && (this.ﺑ != null) && (this.ﻧ) && (bool))
    {
      if (ᴵ.DEBUG) {
        Log.v("LoaderManager", "  Reseting: " + this);
      }
      str = null;
      if (this.ײ.mActivity != null)
      {
        str = this.ײ.mActivity.mFragments.Ꭵ;
        this.ײ.mActivity.mFragments.Ꭵ = "onLoaderReset";
      }
    }
    try
    {
      this.ﹼ.ˊ(this.ﺑ);
      if (this.ײ.mActivity != null) {
        this.ײ.mActivity.mFragments.Ꭵ = str;
      }
    }
    finally
    {
      if (this.ײ.mActivity != null) {
        this.ײ.mActivity.mFragments.Ꭵ = str;
      }
    }
    this.ﻧ = false;
    if (this.ﺑ != null)
    {
      if (this.ї)
      {
        this.ї = false;
        this.ﺑ.ˊ(this);
      }
      this.ﺑ.reset();
    }
    if (this.Ӏ != null) {
      this.Ӏ.destroy();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.ﹷ);
    paramPrintWriter.print(" mArgs=");
    paramPrintWriter.println(this.ﹻ);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mCallbacks=");
    paramPrintWriter.println(this.ﹼ);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mLoader=");
    paramPrintWriter.println(this.ﺑ);
    if (this.ﺑ != null) {
      this.ﺑ.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if ((this.ﻧ) || (this.ʺ))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHaveData=");
      paramPrintWriter.print(this.ﻧ);
      paramPrintWriter.print("  mDeliveredData=");
      paramPrintWriter.println(this.ʺ);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mData=");
      paramPrintWriter.println(this.Ι);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mStarted=");
    paramPrintWriter.print(this.וֹ);
    paramPrintWriter.print(" mReportNextStart=");
    paramPrintWriter.print(this.і);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.เ);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetaining=");
    paramPrintWriter.print(this.mRetaining);
    paramPrintWriter.print(" mRetainingStarted=");
    paramPrintWriter.print(this.І);
    paramPrintWriter.print(" mListenerRegistered=");
    paramPrintWriter.println(this.ї);
    if (this.Ӏ != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Pending Loader ");
      paramPrintWriter.print(this.Ӏ);
      paramPrintWriter.println(":");
      this.Ӏ.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  void start()
  {
    if ((this.mRetaining) && (this.І))
    {
      this.וֹ = true;
      return;
    }
    if (this.וֹ) {
      return;
    }
    this.וֹ = true;
    if (ᴵ.DEBUG) {
      Log.v("LoaderManager", "  Starting: " + this);
    }
    if ((this.ﺑ == null) && (this.ﹼ != null)) {
      this.ﺑ = this.ﹼ.ˊ(this.ﹷ, this.ﹻ);
    }
    if (this.ﺑ != null)
    {
      if ((this.ﺑ.getClass().isMemberClass()) && (!Modifier.isStatic(this.ﺑ.getClass().getModifiers()))) {
        throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.ﺑ);
      }
      if (!this.ї)
      {
        this.ﺑ.ˊ(this.ﹷ, this);
        this.ї = true;
      }
      this.ﺑ.startLoading();
    }
  }
  
  void stop()
  {
    if (ᴵ.DEBUG) {
      Log.v("LoaderManager", "  Stopping: " + this);
    }
    this.וֹ = false;
    if ((!this.mRetaining) && (this.ﺑ != null) && (this.ї))
    {
      this.ї = false;
      this.ﺑ.ˊ(this);
      this.ﺑ.stopLoading();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append("LoaderInfo{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" #");
    localStringBuilder.append(this.ﹷ);
    localStringBuilder.append(" : ");
    ᵓ.ˊ(this.ﺑ, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  public void ˋ(יּ<Object> paramיּ, Object paramObject)
  {
    if (ᴵ.DEBUG) {
      Log.v("LoaderManager", "onLoadComplete: " + this);
    }
    if (this.เ)
    {
      if (ᴵ.DEBUG) {
        Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
      }
      return;
    }
    if (this.ײ.ᵧ.get(this.ﹷ) != this)
    {
      if (ᴵ.DEBUG) {
        Log.v("LoaderManager", "  Ignoring load complete -- not active");
      }
      return;
    }
    if localif = this.Ӏ;
    if (localif != null)
    {
      if (ᴵ.DEBUG) {
        Log.v("LoaderManager", "  Switching to pending loader: " + localif);
      }
      this.Ӏ = null;
      this.ײ.ᵧ.put(this.ﹷ, null);
      destroy();
      this.ײ.ˊ(localif);
      return;
    }
    if ((this.Ι != paramObject) || (!this.ﻧ))
    {
      this.Ι = paramObject;
      this.ﻧ = true;
      if (this.וֹ) {
        ˎ(paramיּ, paramObject);
      }
    }
    paramיּ = (if)this.ײ.וּ.get(this.ﹷ);
    if ((paramיּ != null) && (paramיּ != this))
    {
      paramיּ.ʺ = false;
      paramיּ.destroy();
      this.ײ.וּ.remove(this.ﹷ);
    }
    if ((this.ײ.mActivity != null) && (!this.ײ.ᐨ())) {
      this.ײ.mActivity.mFragments.ˏ();
    }
  }
  
  void ˎ(יּ<Object> paramיּ, Object paramObject)
  {
    if (this.ﹼ != null)
    {
      String str = null;
      if (this.ײ.mActivity != null)
      {
        str = this.ײ.mActivity.mFragments.Ꭵ;
        this.ײ.mActivity.mFragments.Ꭵ = "onLoadFinished";
      }
      try
      {
        if (ᴵ.DEBUG) {
          Log.v("LoaderManager", "  onLoadFinished in " + paramיּ + ": " + paramיּ.dataToString(paramObject));
        }
        this.ﹼ.ˊ(paramיּ, paramObject);
      }
      finally
      {
        if (this.ײ.mActivity != null) {
          this.ײ.mActivity.mFragments.Ꭵ = str;
        }
      }
      this.ʺ = true;
    }
  }
  
  void ՙ()
  {
    if (this.mRetaining)
    {
      if (ᴵ.DEBUG) {
        Log.v("LoaderManager", "  Finished Retaining: " + this);
      }
      this.mRetaining = false;
      if ((this.וֹ != this.І) && (!this.וֹ)) {
        stop();
      }
    }
    if ((this.וֹ) && (this.ﻧ) && (!this.і)) {
      ˎ(this.ﺑ, this.Ι);
    }
  }
  
  void ᵎ()
  {
    if (ᴵ.DEBUG) {
      Log.v("LoaderManager", "  Retaining: " + this);
    }
    this.mRetaining = true;
    this.І = this.וֹ;
    this.וֹ = false;
    this.ﹼ = null;
  }
  
  void ᵔ()
  {
    if ((this.וֹ) && (this.і))
    {
      this.і = false;
      if (this.ﻧ) {
        ˎ(this.ﺑ, this.Ι);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´µ.if
 * JD-Core Version:    0.7.0.1
 */