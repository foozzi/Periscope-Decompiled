package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import o.ʽ;
import o.ˈ;
import o.ˉ;
import o.ͺ;
import o.ٴ;
import o.ᔉ;
import o.ᕀ;
import o.ᴵ;
import o.ᵓ;
import o.ᵕ;
import o.ι;
import o.ﹴ;

public class Fragment
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  static final int ACTIVITY_CREATED = 2;
  static final int CREATED = 1;
  static final int INITIALIZING = 0;
  static final int RESUMED = 5;
  static final int STARTED = 4;
  static final int STOPPED = 3;
  static final Object USE_DEFAULT_TRANSITION = new Object();
  private static final ﹴ<String, Class<?>> sClassMap = new ﹴ();
  public ι mActivity;
  public boolean mAdded;
  Boolean mAllowEnterTransitionOverlap;
  Boolean mAllowReturnTransitionOverlap;
  public View mAnimatingAway;
  Bundle mArguments;
  public int mBackStackNesting;
  public boolean mCalled;
  boolean mCheckedForLoaderManager;
  public ˉ mChildFragmentManager;
  public ViewGroup mContainer;
  public int mContainerId;
  public boolean mDeferStart;
  public boolean mDetached;
  Object mEnterTransition = null;
  public ᕀ mEnterTransitionCallback = null;
  Object mExitTransition = null;
  public ᕀ mExitTransitionCallback = null;
  public int mFragmentId;
  public ˉ mFragmentManager;
  public boolean mFromLayout;
  public boolean mHasMenu;
  public boolean mHidden;
  public boolean mInLayout;
  public int mIndex = -1;
  public View mInnerView;
  public ᴵ mLoaderManager;
  boolean mLoadersStarted;
  public boolean mMenuVisible = true;
  public int mNextAnim;
  public Fragment mParentFragment;
  Object mReenterTransition = USE_DEFAULT_TRANSITION;
  public boolean mRemoving;
  public boolean mRestored;
  public boolean mResumed;
  public boolean mRetainInstance;
  public boolean mRetaining;
  Object mReturnTransition = USE_DEFAULT_TRANSITION;
  public Bundle mSavedFragmentState;
  public SparseArray<Parcelable> mSavedViewState;
  Object mSharedElementEnterTransition = null;
  Object mSharedElementReturnTransition = USE_DEFAULT_TRANSITION;
  public int mState = 0;
  public int mStateAfterAnimating;
  public String mTag;
  public Fragment mTarget;
  public int mTargetIndex = -1;
  public int mTargetRequestCode;
  public boolean mUserVisibleHint = true;
  public View mView;
  public String mWho;
  
  public static Fragment instantiate(Context paramContext, String paramString)
  {
    return instantiate(paramContext, paramString, null);
  }
  
  public static Fragment instantiate(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Class localClass2 = (Class)sClassMap.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        sClassMap.put(paramString, localClass1);
      }
      paramContext = (Fragment)localClass1.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(paramContext.getClass().getClassLoader());
        paramContext.mArguments = paramBundle;
      }
      return paramContext;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new if("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new if("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new if("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an" + " empty constructor that is public", paramContext);
    }
  }
  
  public static boolean isSupportFragmentClass(Context paramContext, String paramString)
  {
    try
    {
      Class localClass2 = (Class)sClassMap.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        sClassMap.put(paramString, localClass1);
      }
      boolean bool = Fragment.class.isAssignableFrom(localClass1);
      return bool;
    }
    catch (ClassNotFoundException paramContext) {}
    return false;
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(this.mFragmentId));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(this.mContainerId));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(this.mTag);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(this.mState);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.mIndex);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(this.mWho);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(this.mBackStackNesting);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(this.mAdded);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(this.mRemoving);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(this.mResumed);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(this.mFromLayout);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(this.mInLayout);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(this.mHidden);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(this.mDetached);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(this.mMenuVisible);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(this.mHasMenu);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(this.mRetainInstance);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(this.mRetaining);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(this.mUserVisibleHint);
    if (this.mFragmentManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(this.mFragmentManager);
    }
    if (this.mActivity != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mActivity=");
      paramPrintWriter.println(this.mActivity);
    }
    if (this.mParentFragment != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(this.mParentFragment);
    }
    if (this.mArguments != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(this.mArguments);
    }
    if (this.mSavedFragmentState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(this.mSavedFragmentState);
    }
    if (this.mSavedViewState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(this.mSavedViewState);
    }
    if (this.mTarget != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(this.mTarget);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(this.mTargetRequestCode);
    }
    if (this.mNextAnim != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(this.mNextAnim);
    }
    if (this.mContainer != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(this.mContainer);
    }
    if (this.mView != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(this.mView);
    }
    if (this.mInnerView != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(this.mView);
    }
    if (this.mAnimatingAway != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(this.mAnimatingAway);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(this.mStateAfterAnimating);
    }
    if (this.mLoaderManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      this.mLoaderManager.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    if (this.mChildFragmentManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Child " + this.mChildFragmentManager + ":");
      this.mChildFragmentManager.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  public Fragment findFragmentByWho(String paramString)
  {
    if (paramString.equals(this.mWho)) {
      return this;
    }
    if (this.mChildFragmentManager != null) {
      return this.mChildFragmentManager.findFragmentByWho(paramString);
    }
    return null;
  }
  
  public final ι getActivity()
  {
    return this.mActivity;
  }
  
  public boolean getAllowEnterTransitionOverlap()
  {
    if (this.mAllowEnterTransitionOverlap == null) {
      return true;
    }
    return this.mAllowEnterTransitionOverlap.booleanValue();
  }
  
  public boolean getAllowReturnTransitionOverlap()
  {
    if (this.mAllowReturnTransitionOverlap == null) {
      return true;
    }
    return this.mAllowReturnTransitionOverlap.booleanValue();
  }
  
  public final Bundle getArguments()
  {
    return this.mArguments;
  }
  
  public final ˈ getChildFragmentManager()
  {
    if (this.mChildFragmentManager == null)
    {
      instantiateChildFragmentManager();
      if (this.mState >= 5) {
        this.mChildFragmentManager.dispatchResume();
      } else if (this.mState >= 4) {
        this.mChildFragmentManager.ˈ();
      } else if (this.mState >= 2) {
        this.mChildFragmentManager.ʿ();
      } else if (this.mState >= 1) {
        this.mChildFragmentManager.ʾ();
      }
    }
    return this.mChildFragmentManager;
  }
  
  public Object getEnterTransition()
  {
    return this.mEnterTransition;
  }
  
  public Object getExitTransition()
  {
    return this.mExitTransition;
  }
  
  public final ˈ getFragmentManager()
  {
    return this.mFragmentManager;
  }
  
  public final int getId()
  {
    return this.mFragmentId;
  }
  
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    paramBundle = this.mActivity.getLayoutInflater().cloneInContext(this.mActivity);
    getChildFragmentManager();
    ᔉ.ˊ(paramBundle, this.mChildFragmentManager.ᐧ());
    return paramBundle;
  }
  
  public ٴ getLoaderManager()
  {
    if (this.mLoaderManager != null) {
      return this.mLoaderManager;
    }
    if (this.mActivity == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.mCheckedForLoaderManager = true;
    this.mLoaderManager = this.mActivity.getLoaderManager(this.mWho, this.mLoadersStarted, true);
    return this.mLoaderManager;
  }
  
  public final Fragment getParentFragment()
  {
    return this.mParentFragment;
  }
  
  public Object getReenterTransition()
  {
    if (this.mReenterTransition == USE_DEFAULT_TRANSITION) {
      return getExitTransition();
    }
    return this.mReenterTransition;
  }
  
  public final Resources getResources()
  {
    if (this.mActivity == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    return this.mActivity.getResources();
  }
  
  public final boolean getRetainInstance()
  {
    return this.mRetainInstance;
  }
  
  public Object getReturnTransition()
  {
    if (this.mReturnTransition == USE_DEFAULT_TRANSITION) {
      return getEnterTransition();
    }
    return this.mReturnTransition;
  }
  
  public Object getSharedElementEnterTransition()
  {
    return this.mSharedElementEnterTransition;
  }
  
  public Object getSharedElementReturnTransition()
  {
    if (this.mSharedElementReturnTransition == USE_DEFAULT_TRANSITION) {
      return getSharedElementEnterTransition();
    }
    return this.mSharedElementReturnTransition;
  }
  
  public final String getString(int paramInt)
  {
    return getResources().getString(paramInt);
  }
  
  public final String getString(int paramInt, Object... paramVarArgs)
  {
    return getResources().getString(paramInt, paramVarArgs);
  }
  
  public final String getTag()
  {
    return this.mTag;
  }
  
  public final Fragment getTargetFragment()
  {
    return this.mTarget;
  }
  
  public final int getTargetRequestCode()
  {
    return this.mTargetRequestCode;
  }
  
  public final CharSequence getText(int paramInt)
  {
    return getResources().getText(paramInt);
  }
  
  public boolean getUserVisibleHint()
  {
    return this.mUserVisibleHint;
  }
  
  public View getView()
  {
    return this.mView;
  }
  
  public final boolean hasOptionsMenu()
  {
    return this.mHasMenu;
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
  
  public void initState()
  {
    this.mIndex = -1;
    this.mWho = null;
    this.mAdded = false;
    this.mRemoving = false;
    this.mResumed = false;
    this.mFromLayout = false;
    this.mInLayout = false;
    this.mRestored = false;
    this.mBackStackNesting = 0;
    this.mFragmentManager = null;
    this.mChildFragmentManager = null;
    this.mActivity = null;
    this.mFragmentId = 0;
    this.mContainerId = 0;
    this.mTag = null;
    this.mHidden = false;
    this.mDetached = false;
    this.mRetaining = false;
    this.mLoaderManager = null;
    this.mLoadersStarted = false;
    this.mCheckedForLoaderManager = false;
  }
  
  void instantiateChildFragmentManager()
  {
    this.mChildFragmentManager = new ˉ();
    this.mChildFragmentManager.ˊ(this.mActivity, new ʽ(this), this);
  }
  
  public final boolean isAdded()
  {
    return (this.mActivity != null) && (this.mAdded);
  }
  
  public final boolean isDetached()
  {
    return this.mDetached;
  }
  
  public final boolean isHidden()
  {
    return this.mHidden;
  }
  
  public final boolean isInBackStack()
  {
    return this.mBackStackNesting > 0;
  }
  
  public final boolean isInLayout()
  {
    return this.mInLayout;
  }
  
  public final boolean isMenuVisible()
  {
    return this.mMenuVisible;
  }
  
  public final boolean isRemoving()
  {
    return this.mRemoving;
  }
  
  public final boolean isResumed()
  {
    return this.mResumed;
  }
  
  public final boolean isVisible()
  {
    return (isAdded()) && (!isHidden()) && (this.mView != null) && (this.mView.getWindowToken() != null) && (this.mView.getVisibility() == 0);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void onAttach(Activity paramActivity)
  {
    this.mCalled = true;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.mCalled = true;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  public Animation onCreateAnimation(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater) {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }
  
  public void onDestroy()
  {
    this.mCalled = true;
    if (!this.mCheckedForLoaderManager)
    {
      this.mCheckedForLoaderManager = true;
      this.mLoaderManager = this.mActivity.getLoaderManager(this.mWho, this.mLoadersStarted, false);
    }
    if (this.mLoaderManager != null) {
      this.mLoaderManager.ᴵ();
    }
  }
  
  public void onDestroyOptionsMenu() {}
  
  public void onDestroyView()
  {
    this.mCalled = true;
  }
  
  public void onDetach()
  {
    this.mCalled = true;
  }
  
  public void onHiddenChanged(boolean paramBoolean) {}
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  public void onLowMemory()
  {
    this.mCalled = true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onOptionsMenuClosed(Menu paramMenu) {}
  
  public void onPause()
  {
    this.mCalled = true;
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu) {}
  
  public void onResume()
  {
    this.mCalled = true;
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {}
  
  public void onStart()
  {
    this.mCalled = true;
    if (!this.mLoadersStarted)
    {
      this.mLoadersStarted = true;
      if (!this.mCheckedForLoaderManager)
      {
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = this.mActivity.getLoaderManager(this.mWho, this.mLoadersStarted, false);
      }
      if (this.mLoaderManager != null) {
        this.mLoaderManager.ﹳ();
      }
    }
  }
  
  public void onStop()
  {
    this.mCalled = true;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle) {}
  
  public void onViewStateRestored(Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  public void performActivityCreated(Bundle paramBundle)
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ι();
    }
    this.mCalled = false;
    onActivityCreated(paramBundle);
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onActivityCreated()");
    }
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ʿ();
    }
  }
  
  public void performConfigurationChanged(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchConfigurationChanged(paramConfiguration);
    }
  }
  
  public boolean performContextItemSelected(MenuItem paramMenuItem)
  {
    if (!this.mHidden)
    {
      if (onContextItemSelected(paramMenuItem)) {
        return true;
      }
      if ((this.mChildFragmentManager != null) && (this.mChildFragmentManager.ˋ(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  public void performCreate(Bundle paramBundle)
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ι();
    }
    this.mCalled = false;
    onCreate(paramBundle);
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onCreate()");
    }
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelable("android:support:fragments");
      if (paramBundle != null)
      {
        if (this.mChildFragmentManager == null) {
          instantiateChildFragmentManager();
        }
        this.mChildFragmentManager.ˊ(paramBundle, null);
        this.mChildFragmentManager.ʾ();
      }
    }
  }
  
  public boolean performCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!this.mHidden)
    {
      boolean bool1 = bool3;
      if (this.mHasMenu)
      {
        bool1 = bool3;
        if (this.mMenuVisible)
        {
          bool1 = true;
          onCreateOptionsMenu(paramMenu, paramMenuInflater);
        }
      }
      bool2 = bool1;
      if (this.mChildFragmentManager != null) {
        bool2 = bool1 | this.mChildFragmentManager.ˊ(paramMenu, paramMenuInflater);
      }
    }
    return bool2;
  }
  
  public View performCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ι();
    }
    return onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void performDestroy()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ˑ();
    }
    this.mCalled = false;
    onDestroy();
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onDestroy()");
    }
  }
  
  public void performDestroyView()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ˍ();
    }
    this.mCalled = false;
    onDestroyView();
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onDestroyView()");
    }
    if (this.mLoaderManager != null) {
      this.mLoaderManager.י();
    }
  }
  
  public void performLowMemory()
  {
    onLowMemory();
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ـ();
    }
  }
  
  public boolean performOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!this.mHidden)
    {
      if ((this.mHasMenu) && (this.mMenuVisible) && (onOptionsItemSelected(paramMenuItem))) {
        return true;
      }
      if ((this.mChildFragmentManager != null) && (this.mChildFragmentManager.ˊ(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  public void performOptionsMenuClosed(Menu paramMenu)
  {
    if (!this.mHidden)
    {
      if ((this.mHasMenu) && (this.mMenuVisible)) {
        onOptionsMenuClosed(paramMenu);
      }
      if (this.mChildFragmentManager != null) {
        this.mChildFragmentManager.ˋ(paramMenu);
      }
    }
  }
  
  public void performPause()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ˉ();
    }
    this.mCalled = false;
    onPause();
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onPause()");
    }
  }
  
  public boolean performPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!this.mHidden)
    {
      boolean bool1 = bool3;
      if (this.mHasMenu)
      {
        bool1 = bool3;
        if (this.mMenuVisible)
        {
          bool1 = true;
          onPrepareOptionsMenu(paramMenu);
        }
      }
      bool2 = bool1;
      if (this.mChildFragmentManager != null) {
        bool2 = bool1 | this.mChildFragmentManager.ˊ(paramMenu);
      }
    }
    return bool2;
  }
  
  public void performReallyStop()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ˌ();
    }
    if (this.mLoadersStarted)
    {
      this.mLoadersStarted = false;
      if (!this.mCheckedForLoaderManager)
      {
        this.mCheckedForLoaderManager = true;
        this.mLoaderManager = this.mActivity.getLoaderManager(this.mWho, this.mLoadersStarted, false);
      }
      if (this.mLoaderManager != null)
      {
        if (!this.mActivity.mRetaining)
        {
          this.mLoaderManager.ﾞ();
          return;
        }
        this.mLoaderManager.ʹ();
      }
    }
  }
  
  public void performResume()
  {
    if (this.mChildFragmentManager != null)
    {
      this.mChildFragmentManager.ι();
      this.mChildFragmentManager.ʻ();
    }
    this.mCalled = false;
    onResume();
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onResume()");
    }
    if (this.mChildFragmentManager != null)
    {
      this.mChildFragmentManager.dispatchResume();
      this.mChildFragmentManager.ʻ();
    }
  }
  
  public void performSaveInstanceState(Bundle paramBundle)
  {
    onSaveInstanceState(paramBundle);
    if (this.mChildFragmentManager != null)
    {
      Parcelable localParcelable = this.mChildFragmentManager.ͺ();
      if (localParcelable != null) {
        paramBundle.putParcelable("android:support:fragments", localParcelable);
      }
    }
  }
  
  public void performStart()
  {
    if (this.mChildFragmentManager != null)
    {
      this.mChildFragmentManager.ι();
      this.mChildFragmentManager.ʻ();
    }
    this.mCalled = false;
    onStart();
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onStart()");
    }
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.ˈ();
    }
    if (this.mLoaderManager != null) {
      this.mLoaderManager.ٴ();
    }
  }
  
  public void performStop()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchStop();
    }
    this.mCalled = false;
    onStop();
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onStop()");
    }
  }
  
  public void registerForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(this);
  }
  
  public final void restoreViewState(Bundle paramBundle)
  {
    if (this.mSavedViewState != null)
    {
      this.mInnerView.restoreHierarchyState(this.mSavedViewState);
      this.mSavedViewState = null;
    }
    this.mCalled = false;
    onViewStateRestored(paramBundle);
    if (!this.mCalled) {
      throw new ᵕ("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }
  }
  
  public void setAllowEnterTransitionOverlap(boolean paramBoolean)
  {
    this.mAllowEnterTransitionOverlap = Boolean.valueOf(paramBoolean);
  }
  
  public void setAllowReturnTransitionOverlap(boolean paramBoolean)
  {
    this.mAllowReturnTransitionOverlap = Boolean.valueOf(paramBoolean);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    if (this.mIndex >= 0) {
      throw new IllegalStateException("Fragment already active");
    }
    this.mArguments = paramBundle;
  }
  
  public void setEnterSharedElementCallback(ᕀ paramᕀ)
  {
    this.mEnterTransitionCallback = paramᕀ;
  }
  
  public void setEnterTransition(Object paramObject)
  {
    this.mEnterTransition = paramObject;
  }
  
  public void setExitSharedElementCallback(ᕀ paramᕀ)
  {
    this.mExitTransitionCallback = paramᕀ;
  }
  
  public void setExitTransition(Object paramObject)
  {
    this.mExitTransition = paramObject;
  }
  
  public void setHasOptionsMenu(boolean paramBoolean)
  {
    if (this.mHasMenu != paramBoolean)
    {
      this.mHasMenu = paramBoolean;
      if ((isAdded()) && (!isHidden())) {
        this.mActivity.supportInvalidateOptionsMenu();
      }
    }
  }
  
  public final void setIndex(int paramInt, Fragment paramFragment)
  {
    this.mIndex = paramInt;
    if (paramFragment != null)
    {
      this.mWho = (paramFragment.mWho + ":" + this.mIndex);
      return;
    }
    this.mWho = ("android:fragment:" + this.mIndex);
  }
  
  public void setInitialSavedState(SavedState paramSavedState)
  {
    if (this.mIndex >= 0) {
      throw new IllegalStateException("Fragment already active");
    }
    if ((paramSavedState != null) && (paramSavedState.ᵣ != null)) {
      paramSavedState = paramSavedState.ᵣ;
    } else {
      paramSavedState = null;
    }
    this.mSavedFragmentState = paramSavedState;
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    if (this.mMenuVisible != paramBoolean)
    {
      this.mMenuVisible = paramBoolean;
      if ((this.mHasMenu) && (isAdded()) && (!isHidden())) {
        this.mActivity.supportInvalidateOptionsMenu();
      }
    }
  }
  
  public void setReenterTransition(Object paramObject)
  {
    this.mReenterTransition = paramObject;
  }
  
  public void setRetainInstance(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.mParentFragment != null)) {
      throw new IllegalStateException("Can't retain fragements that are nested in other fragments");
    }
    this.mRetainInstance = paramBoolean;
  }
  
  public void setReturnTransition(Object paramObject)
  {
    this.mReturnTransition = paramObject;
  }
  
  public void setSharedElementEnterTransition(Object paramObject)
  {
    this.mSharedElementEnterTransition = paramObject;
  }
  
  public void setSharedElementReturnTransition(Object paramObject)
  {
    this.mSharedElementReturnTransition = paramObject;
  }
  
  public void setTargetFragment(Fragment paramFragment, int paramInt)
  {
    this.mTarget = paramFragment;
    this.mTargetRequestCode = paramInt;
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    if ((!this.mUserVisibleHint) && (paramBoolean) && (this.mState < 4)) {
      this.mFragmentManager.ˋ(this);
    }
    this.mUserVisibleHint = paramBoolean;
    if (!paramBoolean) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    this.mDeferStart = paramBoolean;
  }
  
  public void startActivity(Intent paramIntent)
  {
    if (this.mActivity == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.mActivity.startActivityFromFragment(this, paramIntent, -1);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if (this.mActivity == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.mActivity.startActivityFromFragment(this, paramIntent, paramInt);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    ᵓ.ˊ(this, localStringBuilder);
    if (this.mIndex >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.mIndex);
    }
    if (this.mFragmentId != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.mFragmentId));
    }
    if (this.mTag != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.mTag);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void unregisterForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(null);
  }
  
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new ͺ();
    final Bundle ᵣ;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      this.ᵣ = paramParcel.readBundle();
      if ((paramClassLoader != null) && (this.ᵣ != null)) {
        this.ᵣ.setClassLoader(paramClassLoader);
      }
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeBundle(this.ᵣ);
    }
  }
  
  public static class if
    extends RuntimeException
  {
    public if(String paramString, Exception paramException)
    {
      super(paramException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.Fragment
 * JD-Core Version:    0.7.0.1
 */