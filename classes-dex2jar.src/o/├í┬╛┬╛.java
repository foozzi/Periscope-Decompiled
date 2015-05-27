package o;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

public class ι
  extends Activity
{
  static final String FRAGMENTS_TAG = "android:support:fragments";
  private static final int HONEYCOMB = 11;
  static final int MSG_REALLY_STOPPED = 1;
  static final int MSG_RESUME_PENDING = 2;
  private static final String TAG = "FragmentActivity";
  ﹴ<String, ᴵ> mAllLoaderManagers;
  boolean mCheckedForLoaderManager;
  final con mContainer = new ʿ(this);
  boolean mCreated;
  public final ˉ mFragments = new ˉ();
  final Handler mHandler = new ʾ(this);
  ᴵ mLoaderManager;
  boolean mLoadersStarted;
  boolean mOptionsMenuInvalidated;
  boolean mReallyStopped;
  boolean mResumed;
  public boolean mRetaining;
  boolean mStopped;
  
  private void dumpViewHierarchy(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null)
    {
      paramPrintWriter.println("null");
      return;
    }
    paramPrintWriter.println(viewToString(paramView));
    if (!(paramView instanceof ViewGroup)) {
      return;
    }
    paramView = (ViewGroup)paramView;
    int j = paramView.getChildCount();
    if (j <= 0) {
      return;
    }
    paramString = paramString + "  ";
    int i = 0;
    while (i < j)
    {
      dumpViewHierarchy(paramString, paramPrintWriter, paramView.getChildAt(i));
      i += 1;
    }
  }
  
  private static String viewToString(View paramView)
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    switch (paramView.getVisibility())
    {
    default: 
      break;
    case 0: 
      localStringBuilder.append('V');
      break;
    case 4: 
      localStringBuilder.append('I');
      break;
    case 8: 
      localStringBuilder.append('G');
      break;
    }
    localStringBuilder.append('.');
    char c;
    if (paramView.isFocusable()) {
      c = 'F';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    if (paramView.isEnabled()) {
      c = 'E';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    if (paramView.willNotDraw()) {
      c = '.';
    } else {
      c = 'D';
    }
    localStringBuilder.append(c);
    if (paramView.isHorizontalScrollBarEnabled()) {
      c = 'H';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    if (paramView.isVerticalScrollBarEnabled()) {
      c = 'V';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    if (paramView.isClickable()) {
      c = 'C';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    if (paramView.isLongClickable()) {
      c = 'L';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    localStringBuilder.append(' ');
    if (paramView.isFocused()) {
      c = 'F';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    if (paramView.isSelected()) {
      c = 'S';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    if (paramView.isPressed()) {
      c = 'P';
    } else {
      c = '.';
    }
    localStringBuilder.append(c);
    localStringBuilder.append(' ');
    localStringBuilder.append(paramView.getLeft());
    localStringBuilder.append(',');
    localStringBuilder.append(paramView.getTop());
    localStringBuilder.append('-');
    localStringBuilder.append(paramView.getRight());
    localStringBuilder.append(',');
    localStringBuilder.append(paramView.getBottom());
    int i = paramView.getId();
    if (i != -1)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(Integer.toHexString(i));
      Object localObject = paramView.getResources();
      if ((i != 0) && (localObject != null))
      {
        switch (0xFF000000 & i)
        {
        default: 
          break;
        case 2130706432: 
          paramView = "app";
          break;
        case 16777216: 
          paramView = "android";
          break;
        }
        try
        {
          paramView = ((Resources)localObject).getResourcePackageName(i);
          String str = ((Resources)localObject).getResourceTypeName(i);
          localObject = ((Resources)localObject).getResourceEntryName(i);
          localStringBuilder.append(" ");
          localStringBuilder.append(paramView);
          localStringBuilder.append(":");
          localStringBuilder.append(str);
          localStringBuilder.append("/");
          localStringBuilder.append((String)localObject);
        }
        catch (Resources.NotFoundException paramView) {}
      }
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  void doReallyStop(boolean paramBoolean)
  {
    if (!this.mReallyStopped)
    {
      this.mReallyStopped = true;
      this.mRetaining = paramBoolean;
      this.mHandler.removeMessages(1);
      onReallyStop();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = Build.VERSION.SDK_INT;
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.mCreated);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.mResumed);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.mStopped);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.mReallyStopped);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(this.mLoadersStarted);
    if (this.mLoaderManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
      paramPrintWriter.println(":");
      this.mLoaderManager.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    this.mFragments.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    dumpViewHierarchy(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }
  
  public Object getLastCustomNonConfigurationInstance()
  {
    ι.if localif = (ι.if)getLastNonConfigurationInstance();
    if (localif != null) {
      return localif.ᐟ;
    }
    return null;
  }
  
  public ᴵ getLoaderManager(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mAllLoaderManagers == null) {
      this.mAllLoaderManagers = new ﹴ();
    }
    ᴵ localᴵ = (ᴵ)this.mAllLoaderManagers.get(paramString);
    if (localᴵ == null)
    {
      if (paramBoolean2)
      {
        localᴵ = new ᴵ(paramString, this, paramBoolean1);
        this.mAllLoaderManagers.put(paramString, localᴵ);
        return localᴵ;
      }
    }
    else {
      localᴵ.ˊ(this);
    }
    return localᴵ;
  }
  
  public ˈ getSupportFragmentManager()
  {
    return this.mFragments;
  }
  
  public ٴ getSupportLoaderManager()
  {
    if (this.mLoaderManager != null) {
      return this.mLoaderManager;
    }
    this.mCheckedForLoaderManager = true;
    this.mLoaderManager = getLoaderManager("(root)", this.mLoadersStarted, true);
    return this.mLoaderManager;
  }
  
  void invalidateSupportFragment(String paramString)
  {
    if (this.mAllLoaderManagers != null)
    {
      ᴵ localᴵ = (ᴵ)this.mAllLoaderManagers.get(paramString);
      if ((localᴵ != null) && (!localᴵ.mRetaining))
      {
        localᴵ.ᴵ();
        this.mAllLoaderManagers.remove(paramString);
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.mFragments.ι();
    int i = paramInt1 >> 16;
    if (i != 0)
    {
      i -= 1;
      if ((this.mFragments.ᴸ == null) || (i < 0) || (i >= this.mFragments.ᴸ.size()))
      {
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      Fragment localFragment = (Fragment)this.mFragments.ᴸ.get(i);
      if (localFragment == null)
      {
        Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      localFragment.onActivityResult(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttachFragment(Fragment paramFragment) {}
  
  public void onBackPressed()
  {
    if (!this.mFragments.popBackStackImmediate()) {
      supportFinishAfterTransition();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mFragments.dispatchConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    this.mFragments.ˊ(this, this.mContainer, null);
    if (getLayoutInflater().getFactory() == null) {
      getLayoutInflater().setFactory(this);
    }
    super.onCreate(paramBundle);
    ι.if localif = (ι.if)getLastNonConfigurationInstance();
    if (localif != null) {
      this.mAllLoaderManagers = localif.ᒽ;
    }
    if (paramBundle != null)
    {
      Parcelable localParcelable = paramBundle.getParcelable("android:support:fragments");
      ˉ localˉ = this.mFragments;
      if (localif != null) {
        paramBundle = localif.ᐪ;
      } else {
        paramBundle = null;
      }
      localˉ.ˊ(localParcelable, paramBundle);
    }
    this.mFragments.ʾ();
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool1 = super.onCreatePanelMenu(paramInt, paramMenu);
      boolean bool2 = this.mFragments.ˊ(paramMenu, getMenuInflater());
      if (Build.VERSION.SDK_INT >= 11) {
        return bool1 | bool2;
      }
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString)) {
      return super.onCreateView(paramString, paramContext, paramAttributeSet);
    }
    View localView = this.mFragments.onCreateView(null, paramString, paramContext, paramAttributeSet);
    if (localView == null) {
      return super.onCreateView(paramString, paramContext, paramAttributeSet);
    }
    return localView;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    doReallyStop(false);
    this.mFragments.ˑ();
    if (this.mLoaderManager != null) {
      this.mLoaderManager.ᴵ();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    this.mFragments.ـ();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return this.mFragments.ˊ(paramMenuItem);
    case 6: 
      return this.mFragments.ˋ(paramMenuItem);
    }
    return false;
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.mFragments.ι();
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      this.mFragments.ˋ(paramMenu);
    }
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  public void onPause()
  {
    super.onPause();
    this.mResumed = false;
    if (this.mHandler.hasMessages(2))
    {
      this.mHandler.removeMessages(2);
      onResumeFragments();
    }
    this.mFragments.ˉ();
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    this.mHandler.removeMessages(2);
    onResumeFragments();
    this.mFragments.ʻ();
  }
  
  protected boolean onPrepareOptionsPanel(View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(0, paramView, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.mOptionsMenuInvalidated)
      {
        this.mOptionsMenuInvalidated = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      return onPrepareOptionsPanel(paramView, paramMenu) | this.mFragments.ˊ(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  void onReallyStop()
  {
    if (this.mLoadersStarted)
    {
      this.mLoadersStarted = false;
      if (this.mLoaderManager != null) {
        if (!this.mRetaining) {
          this.mLoaderManager.ﾞ();
        } else {
          this.mLoaderManager.ʹ();
        }
      }
    }
    this.mFragments.ˌ();
  }
  
  public void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(2);
    this.mResumed = true;
    this.mFragments.ʻ();
  }
  
  protected void onResumeFragments()
  {
    this.mFragments.dispatchResume();
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  public final Object onRetainNonConfigurationInstance()
  {
    if (this.mStopped) {
      doReallyStop(true);
    }
    Object localObject1 = onRetainCustomNonConfigurationInstance();
    ArrayList localArrayList = this.mFragments.ʽ();
    int k = 0;
    int m = 0;
    if (this.mAllLoaderManagers != null)
    {
      int n = this.mAllLoaderManagers.size();
      localObject2 = new ᴵ[n];
      int i = n - 1;
      while (i >= 0)
      {
        localObject2[i] = ((ᴵ)this.mAllLoaderManagers.valueAt(i));
        i -= 1;
      }
      int j = 0;
      i = m;
      for (;;)
      {
        k = i;
        if (j >= n) {
          break;
        }
        Object localObject3 = localObject2[j];
        if (localObject3.mRetaining)
        {
          i = 1;
        }
        else
        {
          localObject3.ᴵ();
          this.mAllLoaderManagers.remove(localObject3.mWho);
        }
        j += 1;
      }
    }
    if ((localArrayList == null) && (k == 0) && (localObject1 == null)) {
      return null;
    }
    Object localObject2 = new ι.if();
    ((ι.if)localObject2).יּ = null;
    ((ι.if)localObject2).ᐟ = localObject1;
    ((ι.if)localObject2).ᐡ = null;
    ((ι.if)localObject2).ᐪ = localArrayList;
    ((ι.if)localObject2).ᒽ = this.mAllLoaderManagers;
    return localObject2;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = this.mFragments.ͺ();
    if (localParcelable != null) {
      paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    this.mStopped = false;
    this.mReallyStopped = false;
    this.mHandler.removeMessages(1);
    if (!this.mCreated)
    {
      this.mCreated = true;
      this.mFragments.ʿ();
    }
    this.mFragments.ι();
    this.mFragments.ʻ();
    if (!this.mLoadersStarted)
    {
      this.mLoadersStarted = true;
      if (this.mLoaderManager != null)
      {
        this.mLoaderManager.ﹳ();
      }
      else if (!this.mCheckedForLoaderManager)
      {
        this.mLoaderManager = getLoaderManager("(root)", this.mLoadersStarted, false);
        if ((this.mLoaderManager != null) && (!this.mLoaderManager.וֹ)) {
          this.mLoaderManager.ﹳ();
        }
      }
      this.mCheckedForLoaderManager = true;
    }
    this.mFragments.ˈ();
    if (this.mAllLoaderManagers != null)
    {
      int j = this.mAllLoaderManagers.size();
      ᴵ[] arrayOfᴵ = new ᴵ[j];
      int i = j - 1;
      while (i >= 0)
      {
        arrayOfᴵ[i] = ((ᴵ)this.mAllLoaderManagers.valueAt(i));
        i -= 1;
      }
      i = 0;
      while (i < j)
      {
        ᴵ localᴵ = arrayOfᴵ[i];
        localᴵ.ՙ();
        localᴵ.ٴ();
        i += 1;
      }
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    this.mStopped = true;
    this.mHandler.sendEmptyMessage(1);
    this.mFragments.dispatchStop();
  }
  
  public void setEnterSharedElementCallback(ᕀ paramᕀ)
  {
    if.ˊ(this, paramᕀ);
  }
  
  public void setExitSharedElementCallback(ᕀ paramᕀ)
  {
    if.ˋ(this, paramᕀ);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0)) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, paramInt);
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
    {
      super.startActivityForResult(paramIntent, -1);
      return;
    }
    if ((0xFFFF0000 & paramInt) != 0) {
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    }
    super.startActivityForResult(paramIntent, (paramFragment.mIndex + 1 << 16) + (0xFFFF & paramInt));
  }
  
  public void supportFinishAfterTransition()
  {
    if.ˊ(this);
  }
  
  public void supportInvalidateOptionsMenu()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ˋ.ˏ(this);
      return;
    }
    this.mOptionsMenuInvalidated = true;
  }
  
  public void supportPostponeEnterTransition()
  {
    if.ˋ(this);
  }
  
  public void supportStartPostponedEnterTransition()
  {
    if.ˎ(this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¾¾
 * JD-Core Version:    0.7.0.1
 */