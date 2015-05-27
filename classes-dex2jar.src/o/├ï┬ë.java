package o;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.BackStackState;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManagerState;
import android.support.v4.app.FragmentState;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class ˉ
  extends ˈ
  implements ᕑ
{
  public static boolean DEBUG = false;
  static final boolean ᔇ;
  static final Interpolator ᵌ = new DecelerateInterpolator(2.5F);
  static final Interpolator ᵓ = new DecelerateInterpolator(1.5F);
  static final Interpolator ᵙ = new AccelerateInterpolator(2.5F);
  static final Interpolator ᵛ = new AccelerateInterpolator(1.5F);
  ι mActivity;
  con mContainer;
  ArrayList<ˎ> ı;
  ArrayList<Integer> ǃ;
  ArrayList<ˈ.if> ʲ;
  int ː = 0;
  Fragment ˣ;
  boolean ו;
  boolean ۦ;
  boolean เ;
  String Ꭵ;
  boolean ᐤ;
  Bundle ᒡ = null;
  SparseArray<Parcelable> ᒢ = null;
  ArrayList<Runnable> ᔈ;
  Runnable ᖮ = new ˌ(this);
  Runnable[] ᗮ;
  boolean ᴶ;
  public ArrayList<Fragment> ᴸ;
  ArrayList<Fragment> ᵀ;
  ArrayList<Integer> ᵋ;
  ArrayList<ˎ> ᵗ;
  ArrayList<Fragment> ﾟ;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 11) {
      bool = true;
    } else {
      bool = false;
    }
    ᔇ = bool;
  }
  
  static Animation ˊ(Context paramContext, float paramFloat1, float paramFloat2)
  {
    paramContext = new AlphaAnimation(paramFloat1, paramFloat2);
    paramContext.setInterpolator(ᵓ);
    paramContext.setDuration(220L);
    return paramContext;
  }
  
  static Animation ˊ(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    paramContext = new AnimationSet(false);
    Object localObject = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    ((ScaleAnimation)localObject).setInterpolator(ᵌ);
    ((ScaleAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    localObject = new AlphaAnimation(paramFloat3, paramFloat4);
    ((AlphaAnimation)localObject).setInterpolator(ᵓ);
    ((AlphaAnimation)localObject).setDuration(220L);
    paramContext.addAnimation((Animation)localObject);
    return paramContext;
  }
  
  private void ˊ(RuntimeException paramRuntimeException)
  {
    Log.e("FragmentManager", paramRuntimeException.getMessage());
    Log.e("FragmentManager", "Activity state:");
    PrintWriter localPrintWriter = new PrintWriter(new ᵙ("FragmentManager"));
    if (this.mActivity != null) {
      try
      {
        this.mActivity.dump("  ", null, localPrintWriter, new String[0]);
      }
      catch (Exception localException1)
      {
        Log.e("FragmentManager", "Failed dumping state", localException1);
      }
    } else {
      try
      {
        dump("  ", null, localException1, new String[0]);
      }
      catch (Exception localException2)
      {
        Log.e("FragmentManager", "Failed dumping state", localException2);
      }
    }
    throw paramRuntimeException;
  }
  
  public static int ˋ(int paramInt, boolean paramBoolean)
  {
    switch (paramInt)
    {
    default: 
      return -1;
    case 4097: 
      if (paramBoolean) {
        paramInt = 1;
      } else {
        paramInt = 2;
      }
      return paramInt;
    case 8194: 
      if (paramBoolean) {
        paramInt = 3;
      } else {
        paramInt = 4;
      }
      return paramInt;
    }
    if (paramBoolean) {
      return 5;
    }
    return 6;
  }
  
  public static int ᐝ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 4097: 
      return 8194;
    case 8194: 
      return 4097;
    }
    return 4099;
  }
  
  private void ᐝ()
  {
    if (this.ۦ) {
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
    if (this.Ꭵ != null) {
      throw new IllegalStateException("Can not perform this action inside of " + this.Ꭵ);
    }
  }
  
  public void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.ᵀ != null)
    {
      int i = 0;
      while (i < this.ᵀ.size())
      {
        Fragment localFragment = (Fragment)this.ᵀ.get(i);
        if (localFragment != null) {
          localFragment.performConfigurationChanged(paramConfiguration);
        }
        i += 1;
      }
    }
  }
  
  public void dispatchResume()
  {
    this.ۦ = false;
    ˊ(5, false);
  }
  
  public void dispatchStop()
  {
    this.ۦ = true;
    ˊ(3, false);
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    String str = paramString + "    ";
    int j;
    int i;
    Object localObject;
    if (this.ᴸ != null)
    {
      j = this.ᴸ.size();
      if (j > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i = 0;
        while (i < j)
        {
          localObject = (Fragment)this.ᴸ.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localObject);
          if (localObject != null) {
            ((Fragment)localObject).dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          }
          i += 1;
        }
      }
    }
    if (this.ᵀ != null)
    {
      j = this.ᵀ.size();
      if (j > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        i = 0;
        while (i < j)
        {
          localObject = (Fragment)this.ᵀ.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((Fragment)localObject).toString());
          i += 1;
        }
      }
    }
    if (this.ﾟ != null)
    {
      j = this.ﾟ.size();
      if (j > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i = 0;
        while (i < j)
        {
          localObject = (Fragment)this.ﾟ.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((Fragment)localObject).toString());
          i += 1;
        }
      }
    }
    if (this.ᵗ != null)
    {
      j = this.ᵗ.size();
      if (j > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i = 0;
        while (i < j)
        {
          localObject = (ˎ)this.ᵗ.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(((ˎ)localObject).toString());
          ((ˎ)localObject).dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
          i += 1;
        }
      }
    }
    try
    {
      if (this.ı != null)
      {
        j = this.ı.size();
        if (j > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          i = 0;
          while (i < j)
          {
            paramFileDescriptor = (ˎ)this.ı.get(i);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(paramFileDescriptor);
            i += 1;
          }
        }
      }
      if ((this.ǃ != null) && (this.ǃ.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(this.ǃ.toArray()));
      }
    }
    finally {}
    if (this.ᔈ != null)
    {
      j = this.ᔈ.size();
      if (j > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Pending Actions:");
        i = 0;
        while (i < j)
        {
          paramFileDescriptor = (Runnable)this.ᔈ.get(i);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(paramFileDescriptor);
          i += 1;
        }
      }
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mActivity=");
    paramPrintWriter.println(this.mActivity);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mContainer=");
    paramPrintWriter.println(this.mContainer);
    if (this.ˣ != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mParent=");
      paramPrintWriter.println(this.ˣ);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(this.ː);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(this.ۦ);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.เ);
    if (this.ו)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(this.ו);
    }
    if (this.Ꭵ != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(this.Ꭵ);
    }
    if ((this.ᵋ != null) && (this.ᵋ.size() > 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mAvailIndices: ");
      paramPrintWriter.println(Arrays.toString(this.ᵋ.toArray()));
    }
  }
  
  public boolean executePendingTransactions()
  {
    return ʻ();
  }
  
  public Fragment findFragmentById(int paramInt)
  {
    int i;
    Fragment localFragment;
    if (this.ᵀ != null)
    {
      i = this.ᵀ.size() - 1;
      while (i >= 0)
      {
        localFragment = (Fragment)this.ᵀ.get(i);
        if ((localFragment != null) && (localFragment.mFragmentId == paramInt)) {
          return localFragment;
        }
        i -= 1;
      }
    }
    if (this.ᴸ != null)
    {
      i = this.ᴸ.size() - 1;
      while (i >= 0)
      {
        localFragment = (Fragment)this.ᴸ.get(i);
        if ((localFragment != null) && (localFragment.mFragmentId == paramInt)) {
          return localFragment;
        }
        i -= 1;
      }
    }
    return null;
  }
  
  public Fragment findFragmentByTag(String paramString)
  {
    int i;
    Fragment localFragment;
    if ((this.ᵀ != null) && (paramString != null))
    {
      i = this.ᵀ.size() - 1;
      while (i >= 0)
      {
        localFragment = (Fragment)this.ᵀ.get(i);
        if ((localFragment != null) && (paramString.equals(localFragment.mTag))) {
          return localFragment;
        }
        i -= 1;
      }
    }
    if ((this.ᴸ != null) && (paramString != null))
    {
      i = this.ᴸ.size() - 1;
      while (i >= 0)
      {
        localFragment = (Fragment)this.ᴸ.get(i);
        if ((localFragment != null) && (paramString.equals(localFragment.mTag))) {
          return localFragment;
        }
        i -= 1;
      }
    }
    return null;
  }
  
  public Fragment findFragmentByWho(String paramString)
  {
    if ((this.ᴸ != null) && (paramString != null))
    {
      int i = this.ᴸ.size() - 1;
      while (i >= 0)
      {
        Fragment localFragment = (Fragment)this.ᴸ.get(i);
        if (localFragment != null)
        {
          localFragment = localFragment.findFragmentByWho(paramString);
          if (localFragment != null) {
            return localFragment;
          }
        }
        i -= 1;
      }
    }
    return null;
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString)) {
      return null;
    }
    paramString = paramAttributeSet.getAttributeValue(null, "class");
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, ˉ.if.ﹾ);
    String str1 = paramString;
    if (paramString == null) {
      str1 = localTypedArray.getString(0);
    }
    int k = localTypedArray.getResourceId(1, -1);
    String str2 = localTypedArray.getString(2);
    localTypedArray.recycle();
    if (!Fragment.isSupportFragmentClass(this.mActivity, str1)) {
      return null;
    }
    int i;
    if (paramView != null) {
      i = paramView.getId();
    } else {
      i = 0;
    }
    if ((i == -1) && (k == -1) && (str2 == null)) {
      throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
    }
    if (k != -1) {
      paramString = findFragmentById(k);
    } else {
      paramString = null;
    }
    paramView = paramString;
    if (paramString == null)
    {
      paramView = paramString;
      if (str2 != null) {
        paramView = findFragmentByTag(str2);
      }
    }
    paramString = paramView;
    if (paramView == null)
    {
      paramString = paramView;
      if (i != -1) {
        paramString = findFragmentById(i);
      }
    }
    if (DEBUG) {
      Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(k) + " fname=" + str1 + " existing=" + paramString);
    }
    if (paramString == null)
    {
      paramView = Fragment.instantiate(paramContext, str1);
      paramView.mFromLayout = true;
      int j;
      if (k != 0) {
        j = k;
      } else {
        j = i;
      }
      paramView.mFragmentId = j;
      paramView.mContainerId = i;
      paramView.mTag = str2;
      paramView.mInLayout = true;
      paramView.mFragmentManager = this;
      paramView.onInflate(this.mActivity, paramAttributeSet, paramView.mSavedFragmentState);
      ˎ(paramView, true);
    }
    else
    {
      if (paramString.mInLayout) {
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(k) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(i) + " with another fragment for " + str1);
      }
      paramString.mInLayout = true;
      paramView = paramString;
      if (!paramString.mRetaining)
      {
        paramString.onInflate(this.mActivity, paramAttributeSet, paramString.mSavedFragmentState);
        paramView = paramString;
      }
    }
    if ((this.ː < 1) && (paramView.mFromLayout)) {
      ˊ(paramView, 1, 0, 0, false);
    } else {
      ˎ(paramView);
    }
    if (paramView.mView == null) {
      throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
    }
    if (k != 0) {
      paramView.mView.setId(k);
    }
    if (paramView.mView.getTag() == null) {
      paramView.mView.setTag(str2);
    }
    return paramView.mView;
  }
  
  public void popBackStack(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Bad id: " + paramInt1);
    }
    ˊ(new ˍ(this, paramInt1, paramInt2), false);
  }
  
  public boolean popBackStackImmediate()
  {
    ᐝ();
    executePendingTransactions();
    return ˊ(this.mActivity.mHandler, null, -1, 0);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (this.ˣ != null) {
      ᵓ.ˊ(this.ˣ, localStringBuilder);
    } else {
      ᵓ.ˊ(this.mActivity, localStringBuilder);
    }
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
  
  void ʻ(Fragment paramFragment)
  {
    if (paramFragment.mInnerView == null) {
      return;
    }
    if (this.ᒢ == null) {
      this.ᒢ = new SparseArray();
    } else {
      this.ᒢ.clear();
    }
    paramFragment.mInnerView.saveHierarchyState(this.ᒢ);
    if (this.ᒢ.size() > 0)
    {
      paramFragment.mSavedViewState = this.ᒢ;
      this.ᒢ = null;
    }
  }
  
  public boolean ʻ()
  {
    if (this.ᴶ) {
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    }
    if (Looper.myLooper() != this.mActivity.mHandler.getLooper()) {
      throw new IllegalStateException("Must be called from main thread of process");
    }
    int i;
    int j;
    for (boolean bool = false;; bool = true)
    {
      try
      {
        if (this.ᔈ != null)
        {
          i = this.ᔈ.size();
          if (i != 0) {}
        }
        else
        {
          break;
        }
        j = this.ᔈ.size();
        if ((this.ᗮ == null) || (this.ᗮ.length < j)) {
          this.ᗮ = new Runnable[j];
        }
        this.ᔈ.toArray(this.ᗮ);
        this.ᔈ.clear();
        this.mActivity.mHandler.removeCallbacks(this.ᖮ);
      }
      finally {}
      this.ᴶ = true;
      i = 0;
      while (i < j)
      {
        this.ᗮ[i].run();
        this.ᗮ[i] = null;
        i += 1;
      }
      this.ᴶ = false;
    }
    if (this.ᐤ)
    {
      j = 0;
      i = 0;
      while (i < this.ᴸ.size())
      {
        Fragment localFragment = (Fragment)this.ᴸ.get(i);
        int k = j;
        int m;
        if (localFragment != null)
        {
          k = j;
          if (localFragment.mLoaderManager != null) {
            m = j | localFragment.mLoaderManager.ᐨ();
          }
        }
        i += 1;
        j = m;
      }
      if (j == 0)
      {
        this.ᐤ = false;
        ˏ();
      }
    }
    return bool;
  }
  
  Bundle ʼ(Fragment paramFragment)
  {
    Object localObject2 = null;
    if (this.ᒡ == null) {
      this.ᒡ = new Bundle();
    }
    paramFragment.performSaveInstanceState(this.ᒡ);
    if (!this.ᒡ.isEmpty())
    {
      localObject2 = this.ᒡ;
      this.ᒡ = null;
    }
    if (paramFragment.mView != null) {
      ʻ(paramFragment);
    }
    Object localObject1 = localObject2;
    if (paramFragment.mSavedViewState != null)
    {
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = new Bundle();
      }
      ((Bundle)localObject1).putSparseParcelableArray("android:view_state", paramFragment.mSavedViewState);
    }
    localObject2 = localObject1;
    if (!paramFragment.mUserVisibleHint)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new Bundle();
      }
      ((Bundle)localObject2).putBoolean("android:user_visible_hint", paramFragment.mUserVisibleHint);
    }
    return localObject2;
  }
  
  void ʼ()
  {
    if (this.ʲ != null)
    {
      int i = 0;
      while (i < this.ʲ.size())
      {
        ((ˈ.if)this.ʲ.get(i)).onBackStackChanged();
        i += 1;
      }
    }
  }
  
  ArrayList<Fragment> ʽ()
  {
    Object localObject2 = null;
    Object localObject1 = null;
    if (this.ᴸ != null)
    {
      int i = 0;
      for (;;)
      {
        localObject2 = localObject1;
        if (i >= this.ᴸ.size()) {
          break;
        }
        Fragment localFragment = (Fragment)this.ᴸ.get(i);
        Object localObject3 = localObject1;
        if (localFragment != null)
        {
          localObject3 = localObject1;
          if (localFragment.mRetainInstance)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localFragment);
            localFragment.mRetaining = true;
            int j;
            if (localFragment.mTarget != null) {
              j = localFragment.mTarget.mIndex;
            } else {
              j = -1;
            }
            localFragment.mTargetIndex = j;
            localObject3 = localObject2;
            if (DEBUG)
            {
              Log.v("FragmentManager", "retainNonConfig: keeping retained " + localFragment);
              localObject3 = localObject2;
            }
          }
        }
        i += 1;
        localObject1 = localObject3;
      }
    }
    return localObject2;
  }
  
  public void ʾ()
  {
    this.ۦ = false;
    ˊ(1, false);
  }
  
  public void ʿ()
  {
    this.ۦ = false;
    ˊ(2, false);
  }
  
  public void ˈ()
  {
    this.ۦ = false;
    ˊ(4, false);
  }
  
  public void ˉ()
  {
    ˊ(4, false);
  }
  
  public int ˊ(ˎ paramˎ)
  {
    try
    {
      if ((this.ǃ == null) || (this.ǃ.size() <= 0))
      {
        if (this.ı == null) {
          this.ı = new ArrayList();
        }
        i = this.ı.size();
        if (DEBUG) {
          Log.v("FragmentManager", "Setting back stack index " + i + " to " + paramˎ);
        }
        this.ı.add(paramˎ);
        return i;
      }
      int i = ((Integer)this.ǃ.remove(this.ǃ.size() - 1)).intValue();
      if (DEBUG) {
        Log.v("FragmentManager", "Adding back stack index " + i + " with " + paramˎ);
      }
      this.ı.set(i, paramˎ);
      return i;
    }
    finally {}
  }
  
  public Fragment ˊ(Bundle paramBundle, String paramString)
  {
    int i = paramBundle.getInt(paramString, -1);
    if (i == -1) {
      return null;
    }
    if (i >= this.ᴸ.size()) {
      ˊ(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i));
    }
    paramBundle = (Fragment)this.ᴸ.get(i);
    if (paramBundle == null) {
      ˊ(new IllegalStateException("Fragment no longer exists for key " + paramString + ": index " + i));
    }
    return paramBundle;
  }
  
  Animation ˊ(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    Animation localAnimation = paramFragment.onCreateAnimation(paramInt1, paramBoolean, paramFragment.mNextAnim);
    if (localAnimation != null) {
      return localAnimation;
    }
    if (paramFragment.mNextAnim != 0)
    {
      paramFragment = AnimationUtils.loadAnimation(this.mActivity, paramFragment.mNextAnim);
      if (paramFragment != null) {
        return paramFragment;
      }
    }
    if (paramInt1 == 0) {
      return null;
    }
    paramInt1 = ˋ(paramInt1, paramBoolean);
    if (paramInt1 < 0) {
      return null;
    }
    switch (paramInt1)
    {
    default: 
      break;
    case 1: 
      return ˊ(this.mActivity, 1.125F, 1.0F, 0.0F, 1.0F);
    case 2: 
      return ˊ(this.mActivity, 1.0F, 0.975F, 1.0F, 0.0F);
    case 3: 
      return ˊ(this.mActivity, 0.975F, 1.0F, 0.0F, 1.0F);
    case 4: 
      return ˊ(this.mActivity, 1.0F, 1.075F, 1.0F, 0.0F);
    case 5: 
      return ˊ(this.mActivity, 0.0F, 1.0F);
    case 6: 
      return ˊ(this.mActivity, 1.0F, 0.0F);
    }
    paramInt1 = paramInt2;
    if (paramInt2 == 0)
    {
      paramInt1 = paramInt2;
      if (this.mActivity.getWindow() != null) {
        paramInt1 = this.mActivity.getWindow().getAttributes().windowAnimations;
      }
    }
    if (paramInt1 == 0) {
      return null;
    }
    return null;
  }
  
  void ˊ(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((this.mActivity == null) && (paramInt1 != 0)) {
      throw new IllegalStateException("No activity");
    }
    if ((!paramBoolean) && (this.ː == paramInt1)) {
      return;
    }
    this.ː = paramInt1;
    if (this.ᴸ != null)
    {
      boolean bool1 = false;
      int i = 0;
      while (i < this.ᴸ.size())
      {
        Fragment localFragment = (Fragment)this.ᴸ.get(i);
        boolean bool2 = bool1;
        if (localFragment != null)
        {
          ˊ(localFragment, paramInt1, paramInt2, paramInt3, false);
          bool2 = bool1;
          if (localFragment.mLoaderManager != null) {
            bool2 = bool1 | localFragment.mLoaderManager.ᐨ();
          }
        }
        i += 1;
        bool1 = bool2;
      }
      if (!bool1) {
        ˏ();
      }
      if ((this.ו) && (this.mActivity != null) && (this.ː == 5))
      {
        this.mActivity.supportInvalidateOptionsMenu();
        this.ו = false;
      }
    }
  }
  
  public void ˊ(int paramInt, ˎ paramˎ)
  {
    try
    {
      if (this.ı == null) {
        this.ı = new ArrayList();
      }
      int j = this.ı.size();
      int i = j;
      if (paramInt < j)
      {
        if (DEBUG) {
          Log.v("FragmentManager", "Setting back stack index " + paramInt + " to " + paramˎ);
        }
        this.ı.set(paramInt, paramˎ);
      }
      else
      {
        while (i < paramInt)
        {
          this.ı.add(null);
          if (this.ǃ == null) {
            this.ǃ = new ArrayList();
          }
          if (DEBUG) {
            Log.v("FragmentManager", "Adding available back stack index " + i);
          }
          this.ǃ.add(Integer.valueOf(i));
          i += 1;
        }
        if (DEBUG) {
          Log.v("FragmentManager", "Adding back stack index " + paramInt + " with " + paramˎ);
        }
        this.ı.add(paramˎ);
      }
      return;
    }
    finally {}
  }
  
  void ˊ(int paramInt, boolean paramBoolean)
  {
    ˊ(paramInt, 0, 0, paramBoolean);
  }
  
  public void ˊ(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (paramFragment.mIndex < 0) {
      ˊ(new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager"));
    }
    paramBundle.putInt(paramString, paramFragment.mIndex);
  }
  
  public void ˊ(Parcelable paramParcelable, ArrayList<Fragment> paramArrayList)
  {
    if (paramParcelable == null) {
      return;
    }
    paramParcelable = (FragmentManagerState)paramParcelable;
    if (paramParcelable.ɩ == null) {
      return;
    }
    Object localObject1;
    Object localObject2;
    if (paramArrayList != null)
    {
      i = 0;
      while (i < paramArrayList.size())
      {
        localObject1 = (Fragment)paramArrayList.get(i);
        if (DEBUG) {
          Log.v("FragmentManager", "restoreAllState: re-attaching retained " + localObject1);
        }
        localObject2 = paramParcelable.ɩ[localObject1.mIndex];
        ((FragmentState)localObject2).ˁ = ((Fragment)localObject1);
        ((Fragment)localObject1).mSavedViewState = null;
        ((Fragment)localObject1).mBackStackNesting = 0;
        ((Fragment)localObject1).mInLayout = false;
        ((Fragment)localObject1).mAdded = false;
        ((Fragment)localObject1).mTarget = null;
        if (((FragmentState)localObject2).mSavedFragmentState != null)
        {
          ((FragmentState)localObject2).mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
          ((Fragment)localObject1).mSavedViewState = ((FragmentState)localObject2).mSavedFragmentState.getSparseParcelableArray("android:view_state");
          ((Fragment)localObject1).mSavedFragmentState = ((FragmentState)localObject2).mSavedFragmentState;
        }
        i += 1;
      }
    }
    this.ᴸ = new ArrayList(paramParcelable.ɩ.length);
    if (this.ᵋ != null) {
      this.ᵋ.clear();
    }
    int i = 0;
    while (i < paramParcelable.ɩ.length)
    {
      localObject1 = paramParcelable.ɩ[i];
      if (localObject1 != null)
      {
        localObject2 = ((FragmentState)localObject1).ˊ(this.mActivity, this.ˣ);
        if (DEBUG) {
          Log.v("FragmentManager", "restoreAllState: active #" + i + ": " + localObject2);
        }
        this.ᴸ.add(localObject2);
        ((FragmentState)localObject1).ˁ = null;
      }
      else
      {
        this.ᴸ.add(null);
        if (this.ᵋ == null) {
          this.ᵋ = new ArrayList();
        }
        if (DEBUG) {
          Log.v("FragmentManager", "restoreAllState: avail #" + i);
        }
        this.ᵋ.add(Integer.valueOf(i));
      }
      i += 1;
    }
    if (paramArrayList != null)
    {
      i = 0;
      while (i < paramArrayList.size())
      {
        localObject1 = (Fragment)paramArrayList.get(i);
        if (((Fragment)localObject1).mTargetIndex >= 0) {
          if (((Fragment)localObject1).mTargetIndex < this.ᴸ.size())
          {
            ((Fragment)localObject1).mTarget = ((Fragment)this.ᴸ.get(((Fragment)localObject1).mTargetIndex));
          }
          else
          {
            Log.w("FragmentManager", "Re-attaching retained fragment " + localObject1 + " target no longer exists: " + ((Fragment)localObject1).mTargetIndex);
            ((Fragment)localObject1).mTarget = null;
          }
        }
        i += 1;
      }
    }
    if (paramParcelable.ʵ != null)
    {
      this.ᵀ = new ArrayList(paramParcelable.ʵ.length);
      i = 0;
      while (i < paramParcelable.ʵ.length)
      {
        paramArrayList = (Fragment)this.ᴸ.get(paramParcelable.ʵ[i]);
        if (paramArrayList == null) {
          ˊ(new IllegalStateException("No instantiated fragment for index #" + paramParcelable.ʵ[i]));
        }
        paramArrayList.mAdded = true;
        if (DEBUG) {
          Log.v("FragmentManager", "restoreAllState: added #" + i + ": " + paramArrayList);
        }
        if (this.ᵀ.contains(paramArrayList)) {
          throw new IllegalStateException("Already added!");
        }
        this.ᵀ.add(paramArrayList);
        i += 1;
      }
    }
    else
    {
      this.ᵀ = null;
    }
    if (paramParcelable.ʸ != null)
    {
      this.ᵗ = new ArrayList(paramParcelable.ʸ.length);
      i = 0;
      while (i < paramParcelable.ʸ.length)
      {
        paramArrayList = paramParcelable.ʸ[i].ˊ(this);
        if (DEBUG)
        {
          Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + paramArrayList.mIndex + "): " + paramArrayList);
          paramArrayList.ˊ("  ", new PrintWriter(new ᵙ("FragmentManager")), false);
        }
        this.ᵗ.add(paramArrayList);
        if (paramArrayList.mIndex >= 0) {
          ˊ(paramArrayList.mIndex, paramArrayList);
        }
        i += 1;
      }
      return;
    }
    this.ᵗ = null;
  }
  
  public void ˊ(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "remove: " + paramFragment + " nesting=" + paramFragment.mBackStackNesting);
    }
    int i;
    if (!paramFragment.isInBackStack()) {
      i = 1;
    } else {
      i = 0;
    }
    if ((!paramFragment.mDetached) || (i != 0))
    {
      if (this.ᵀ != null) {
        this.ᵀ.remove(paramFragment);
      }
      if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible)) {
        this.ו = true;
      }
      paramFragment.mAdded = false;
      paramFragment.mRemoving = true;
      if (i != 0) {
        i = 0;
      } else {
        i = 1;
      }
      ˊ(paramFragment, i, paramInt1, paramInt2, false);
    }
  }
  
  void ˊ(Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i;
    if (paramFragment.mAdded)
    {
      i = paramInt1;
      if (!paramFragment.mDetached) {}
    }
    else
    {
      i = paramInt1;
      if (paramInt1 > 1) {
        i = 1;
      }
    }
    int j = i;
    if (paramFragment.mRemoving)
    {
      j = i;
      if (i > paramFragment.mState) {
        j = paramFragment.mState;
      }
    }
    paramInt1 = j;
    if (paramFragment.mDeferStart)
    {
      paramInt1 = j;
      if (paramFragment.mState < 4)
      {
        paramInt1 = j;
        if (j > 3) {
          paramInt1 = 3;
        }
      }
    }
    Object localObject1;
    Object localObject2;
    if (paramFragment.mState < paramInt1)
    {
      if ((paramFragment.mFromLayout) && (!paramFragment.mInLayout)) {
        return;
      }
      if (paramFragment.mAnimatingAway != null)
      {
        paramFragment.mAnimatingAway = null;
        ˊ(paramFragment, paramFragment.mStateAfterAnimating, 0, 0, true);
      }
      i = paramInt1;
      int k = paramInt1;
      j = paramInt1;
      switch (paramFragment.mState)
      {
      default: 
        break;
      case 0: 
        if (DEBUG) {
          Log.v("FragmentManager", "moveto CREATED: " + paramFragment);
        }
        j = paramInt1;
        if (paramFragment.mSavedFragmentState != null)
        {
          paramFragment.mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
          paramFragment.mSavedViewState = paramFragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
          paramFragment.mTarget = ˊ(paramFragment.mSavedFragmentState, "android:target_state");
          if (paramFragment.mTarget != null) {
            paramFragment.mTargetRequestCode = paramFragment.mSavedFragmentState.getInt("android:target_req_state", 0);
          }
          paramFragment.mUserVisibleHint = paramFragment.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
          j = paramInt1;
          if (!paramFragment.mUserVisibleHint)
          {
            paramFragment.mDeferStart = true;
            j = paramInt1;
            if (paramInt1 > 3) {
              j = 3;
            }
          }
        }
        paramFragment.mActivity = this.mActivity;
        paramFragment.mParentFragment = this.ˣ;
        if (this.ˣ != null) {
          localObject1 = this.ˣ.mChildFragmentManager;
        } else {
          localObject1 = this.mActivity.mFragments;
        }
        paramFragment.mFragmentManager = ((ˉ)localObject1);
        paramFragment.mCalled = false;
        paramFragment.onAttach(this.mActivity);
        if (!paramFragment.mCalled) {
          throw new ᵕ("Fragment " + paramFragment + " did not call through to super.onAttach()");
        }
        if (paramFragment.mParentFragment == null) {
          this.mActivity.onAttachFragment(paramFragment);
        }
        if (!paramFragment.mRetaining) {
          paramFragment.performCreate(paramFragment.mSavedFragmentState);
        }
        paramFragment.mRetaining = false;
        i = j;
        if (paramFragment.mFromLayout)
        {
          paramFragment.mView = paramFragment.performCreateView(paramFragment.getLayoutInflater(paramFragment.mSavedFragmentState), null, paramFragment.mSavedFragmentState);
          if (paramFragment.mView != null)
          {
            paramFragment.mInnerView = paramFragment.mView;
            if (Build.VERSION.SDK_INT >= 11) {
              ﺑ.ˊ(paramFragment.mView, false);
            } else {
              paramFragment.mView = ᵎ.ˏ(paramFragment.mView);
            }
            if (paramFragment.mHidden) {
              paramFragment.mView.setVisibility(8);
            }
            paramFragment.onViewCreated(paramFragment.mView, paramFragment.mSavedFragmentState);
            i = j;
          }
          else
          {
            paramFragment.mInnerView = null;
            i = j;
          }
        }
      case 1: 
        k = i;
        if (i > 1)
        {
          if (DEBUG) {
            Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + paramFragment);
          }
          if (!paramFragment.mFromLayout)
          {
            localObject1 = null;
            if (paramFragment.mContainerId != 0)
            {
              localObject2 = (ViewGroup)this.mContainer.findViewById(paramFragment.mContainerId);
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = localObject2;
                if (!paramFragment.mRestored)
                {
                  ˊ(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(paramFragment.mContainerId) + " (" + paramFragment.getResources().getResourceName(paramFragment.mContainerId) + ") for fragment " + paramFragment));
                  localObject1 = localObject2;
                }
              }
            }
            paramFragment.mContainer = ((ViewGroup)localObject1);
            paramFragment.mView = paramFragment.performCreateView(paramFragment.getLayoutInflater(paramFragment.mSavedFragmentState), (ViewGroup)localObject1, paramFragment.mSavedFragmentState);
            if (paramFragment.mView != null)
            {
              paramFragment.mInnerView = paramFragment.mView;
              if (Build.VERSION.SDK_INT >= 11) {
                ﺑ.ˊ(paramFragment.mView, false);
              } else {
                paramFragment.mView = ᵎ.ˏ(paramFragment.mView);
              }
              if (localObject1 != null)
              {
                localObject2 = ˊ(paramFragment, paramInt2, true, paramInt3);
                if (localObject2 != null) {
                  paramFragment.mView.startAnimation((Animation)localObject2);
                }
                ((ViewGroup)localObject1).addView(paramFragment.mView);
              }
              if (paramFragment.mHidden) {
                paramFragment.mView.setVisibility(8);
              }
              paramFragment.onViewCreated(paramFragment.mView, paramFragment.mSavedFragmentState);
            }
            else
            {
              paramFragment.mInnerView = null;
            }
          }
          paramFragment.performActivityCreated(paramFragment.mSavedFragmentState);
          if (paramFragment.mView != null) {
            paramFragment.restoreViewState(paramFragment.mSavedFragmentState);
          }
          paramFragment.mSavedFragmentState = null;
          k = i;
        }
      case 2: 
      case 3: 
        j = k;
        if (k > 3)
        {
          if (DEBUG) {
            Log.v("FragmentManager", "moveto STARTED: " + paramFragment);
          }
          paramFragment.performStart();
          j = k;
        }
        break;
      }
      paramInt1 = j;
      if (j > 4)
      {
        if (DEBUG) {
          Log.v("FragmentManager", "moveto RESUMED: " + paramFragment);
        }
        paramFragment.mResumed = true;
        paramFragment.performResume();
        paramFragment.mSavedFragmentState = null;
        paramFragment.mSavedViewState = null;
        paramInt1 = j;
      }
      i = paramInt1;
    }
    else
    {
      i = paramInt1;
      if (paramFragment.mState > paramInt1)
      {
        switch (paramFragment.mState)
        {
        default: 
          i = paramInt1;
          break;
        case 5: 
          if (paramInt1 < 5)
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom RESUMED: " + paramFragment);
            }
            paramFragment.performPause();
            paramFragment.mResumed = false;
          }
        case 4: 
          if (paramInt1 < 4)
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom STARTED: " + paramFragment);
            }
            paramFragment.performStop();
          }
        case 3: 
          if (paramInt1 < 3)
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom STOPPED: " + paramFragment);
            }
            paramFragment.performReallyStop();
          }
        case 2: 
          if (paramInt1 < 2)
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + paramFragment);
            }
            if ((paramFragment.mView != null) && (!this.mActivity.isFinishing()) && (paramFragment.mSavedViewState == null)) {
              ʻ(paramFragment);
            }
            paramFragment.performDestroyView();
            if ((paramFragment.mView != null) && (paramFragment.mContainer != null))
            {
              localObject2 = null;
              localObject1 = localObject2;
              if (this.ː > 0)
              {
                localObject1 = localObject2;
                if (!this.เ) {
                  localObject1 = ˊ(paramFragment, paramInt2, false, paramInt3);
                }
              }
              if (localObject1 != null)
              {
                paramFragment.mAnimatingAway = paramFragment.mView;
                paramFragment.mStateAfterAnimating = paramInt1;
                ((Animation)localObject1).setAnimationListener(new ˑ(this, paramFragment));
                paramFragment.mView.startAnimation((Animation)localObject1);
              }
              paramFragment.mContainer.removeView(paramFragment.mView);
            }
            paramFragment.mContainer = null;
            paramFragment.mView = null;
            paramFragment.mInnerView = null;
          }
          break;
        }
        i = paramInt1;
        if (paramInt1 < 1)
        {
          if ((this.เ) && (paramFragment.mAnimatingAway != null))
          {
            localObject1 = paramFragment.mAnimatingAway;
            paramFragment.mAnimatingAway = null;
            ((View)localObject1).clearAnimation();
          }
          if (paramFragment.mAnimatingAway != null)
          {
            paramFragment.mStateAfterAnimating = paramInt1;
            i = 1;
          }
          else
          {
            if (DEBUG) {
              Log.v("FragmentManager", "movefrom CREATED: " + paramFragment);
            }
            if (!paramFragment.mRetaining) {
              paramFragment.performDestroy();
            }
            paramFragment.mCalled = false;
            paramFragment.onDetach();
            if (!paramFragment.mCalled) {
              throw new ᵕ("Fragment " + paramFragment + " did not call through to super.onDetach()");
            }
            i = paramInt1;
            if (!paramBoolean) {
              if (!paramFragment.mRetaining)
              {
                ᐝ(paramFragment);
                i = paramInt1;
              }
              else
              {
                paramFragment.mActivity = null;
                paramFragment.mParentFragment = null;
                paramFragment.mFragmentManager = null;
                paramFragment.mChildFragmentManager = null;
                i = paramInt1;
              }
            }
          }
        }
      }
    }
    paramFragment.mState = i;
  }
  
  /* Error */
  public void ˊ(Runnable paramRunnable, boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_2
    //   1: ifne +7 -> 8
    //   4: aload_0
    //   5: invokespecial 512	o/ˉ:ᐝ	()V
    //   8: aload_0
    //   9: monitorenter
    //   10: aload_0
    //   11: getfield 330	o/ˉ:เ	Z
    //   14: ifne +10 -> 24
    //   17: aload_0
    //   18: getfield 168	o/ˉ:mActivity	Lo/ι;
    //   21: ifnonnull +14 -> 35
    //   24: new 192	java/lang/IllegalStateException
    //   27: dup
    //   28: ldc_w 1047
    //   31: invokespecial 195	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   34: athrow
    //   35: aload_0
    //   36: getfield 304	o/ˉ:ᔈ	Ljava/util/ArrayList;
    //   39: ifnonnull +14 -> 53
    //   42: aload_0
    //   43: new 215	java/util/ArrayList
    //   46: dup
    //   47: invokespecial 637	java/util/ArrayList:<init>	()V
    //   50: putfield 304	o/ˉ:ᔈ	Ljava/util/ArrayList;
    //   53: aload_0
    //   54: getfield 304	o/ˉ:ᔈ	Ljava/util/ArrayList;
    //   57: aload_1
    //   58: invokevirtual 640	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   61: pop
    //   62: aload_0
    //   63: getfield 304	o/ˉ:ᔈ	Ljava/util/ArrayList;
    //   66: invokevirtual 219	java/util/ArrayList:size	()I
    //   69: iconst_1
    //   70: if_icmpne +32 -> 102
    //   73: aload_0
    //   74: getfield 168	o/ˉ:mActivity	Lo/ι;
    //   77: getfield 518	o/ι:mHandler	Landroid/os/Handler;
    //   80: aload_0
    //   81: getfield 102	o/ˉ:ᖮ	Ljava/lang/Runnable;
    //   84: invokevirtual 578	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   87: aload_0
    //   88: getfield 168	o/ˉ:mActivity	Lo/ι;
    //   91: getfield 518	o/ι:mHandler	Landroid/os/Handler;
    //   94: aload_0
    //   95: getfield 102	o/ˉ:ᖮ	Ljava/lang/Runnable;
    //   98: invokevirtual 1051	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   101: pop
    //   102: aload_0
    //   103: monitorexit
    //   104: return
    //   105: astore_1
    //   106: aload_0
    //   107: monitorexit
    //   108: aload_1
    //   109: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	110	0	this	ˉ
    //   0	110	1	paramRunnable	Runnable
    //   0	110	2	paramBoolean	boolean
    // Exception table:
    //   from	to	target	type
    //   10	24	105	finally
    //   24	35	105	finally
    //   35	53	105	finally
    //   53	102	105	finally
  }
  
  public void ˊ(ι paramι, con paramcon, Fragment paramFragment)
  {
    if (this.mActivity != null) {
      throw new IllegalStateException("Already attached");
    }
    this.mActivity = paramι;
    this.mContainer = paramcon;
    this.ˣ = paramFragment;
  }
  
  boolean ˊ(Handler paramHandler, String paramString, int paramInt1, int paramInt2)
  {
    if (this.ᵗ == null) {
      return false;
    }
    SparseArray localSparseArray1;
    if ((paramString == null) && (paramInt1 < 0) && ((paramInt2 & 0x1) == 0))
    {
      paramInt1 = this.ᵗ.size() - 1;
      if (paramInt1 < 0) {
        return false;
      }
      paramHandler = (ˎ)this.ᵗ.remove(paramInt1);
      paramString = new SparseArray();
      localSparseArray1 = new SparseArray();
      paramHandler.ˋ(paramString, localSparseArray1);
      paramHandler.ˊ(true, null, paramString, localSparseArray1);
      ʼ();
    }
    else
    {
      int i = -1;
      if ((paramString != null) || (paramInt1 >= 0))
      {
        int j = this.ᵗ.size() - 1;
        while (j >= 0)
        {
          paramHandler = (ˎ)this.ᵗ.get(j);
          if (((paramString != null) && (paramString.equals(paramHandler.getName()))) || ((paramInt1 >= 0) && (paramInt1 == paramHandler.mIndex))) {
            break;
          }
          j -= 1;
        }
        if (j < 0) {
          return false;
        }
        i = j;
        if ((paramInt2 & 0x1) != 0)
        {
          paramInt2 = j - 1;
          for (;;)
          {
            i = paramInt2;
            if (paramInt2 < 0) {
              break;
            }
            paramHandler = (ˎ)this.ᵗ.get(paramInt2);
            if ((paramString == null) || (!paramString.equals(paramHandler.getName())))
            {
              i = paramInt2;
              if (paramInt1 < 0) {
                break;
              }
              i = paramInt2;
              if (paramInt1 != paramHandler.mIndex) {
                break;
              }
            }
            paramInt2 -= 1;
          }
        }
      }
      if (i == this.ᵗ.size() - 1) {
        return false;
      }
      paramString = new ArrayList();
      paramInt1 = this.ᵗ.size() - 1;
      while (paramInt1 > i)
      {
        paramString.add(this.ᵗ.remove(paramInt1));
        paramInt1 -= 1;
      }
      paramInt2 = paramString.size() - 1;
      localSparseArray1 = new SparseArray();
      SparseArray localSparseArray2 = new SparseArray();
      paramInt1 = 0;
      while (paramInt1 <= paramInt2)
      {
        ((ˎ)paramString.get(paramInt1)).ˋ(localSparseArray1, localSparseArray2);
        paramInt1 += 1;
      }
      paramHandler = null;
      paramInt1 = 0;
      while (paramInt1 <= paramInt2)
      {
        if (DEBUG) {
          Log.v("FragmentManager", "Popping back stack state: " + paramString.get(paramInt1));
        }
        ˎ localˎ = (ˎ)paramString.get(paramInt1);
        boolean bool;
        if (paramInt1 == paramInt2) {
          bool = true;
        } else {
          bool = false;
        }
        paramHandler = localˎ.ˊ(bool, paramHandler, localSparseArray1, localSparseArray2);
        paramInt1 += 1;
      }
      ʼ();
    }
    return true;
  }
  
  public boolean ˊ(Menu paramMenu)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    if (this.ᵀ != null)
    {
      int i = 0;
      for (;;)
      {
        bool2 = bool1;
        if (i >= this.ᵀ.size()) {
          break;
        }
        Fragment localFragment = (Fragment)this.ᵀ.get(i);
        bool2 = bool1;
        if (localFragment != null)
        {
          bool2 = bool1;
          if (localFragment.performPrepareOptionsMenu(paramMenu)) {
            bool2 = true;
          }
        }
        i += 1;
        bool1 = bool2;
      }
    }
    return bool2;
  }
  
  public boolean ˊ(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    Object localObject2 = null;
    Object localObject1 = null;
    int i;
    if (this.ᵀ != null)
    {
      i = 0;
      for (;;)
      {
        bool2 = bool1;
        localObject2 = localObject1;
        if (i >= this.ᵀ.size()) {
          break;
        }
        Fragment localFragment = (Fragment)this.ᵀ.get(i);
        bool2 = bool1;
        localObject2 = localObject1;
        if (localFragment != null)
        {
          bool2 = bool1;
          localObject2 = localObject1;
          if (localFragment.performCreateOptionsMenu(paramMenu, paramMenuInflater))
          {
            bool2 = true;
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((ArrayList)localObject2).add(localFragment);
          }
        }
        i += 1;
        bool1 = bool2;
        localObject1 = localObject2;
      }
    }
    if (this.ﾟ != null)
    {
      i = 0;
      while (i < this.ﾟ.size())
      {
        paramMenu = (Fragment)this.ﾟ.get(i);
        if ((localObject2 == null) || (!((ArrayList)localObject2).contains(paramMenu))) {
          paramMenu.onDestroyOptionsMenu();
        }
        i += 1;
      }
    }
    this.ﾟ = ((ArrayList)localObject2);
    return bool2;
  }
  
  public boolean ˊ(MenuItem paramMenuItem)
  {
    if (this.ᵀ != null)
    {
      int i = 0;
      while (i < this.ᵀ.size())
      {
        Fragment localFragment = (Fragment)this.ᵀ.get(i);
        if ((localFragment != null) && (localFragment.performOptionsItemSelected(paramMenuItem))) {
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  public ᐨ ˋ()
  {
    return new ˎ(this);
  }
  
  public void ˋ(Fragment paramFragment)
  {
    if (paramFragment.mDeferStart)
    {
      if (this.ᴶ)
      {
        this.ᐤ = true;
        return;
      }
      paramFragment.mDeferStart = false;
      ˊ(paramFragment, this.ː, 0, 0, false);
    }
  }
  
  public void ˋ(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "hide: " + paramFragment);
    }
    if (!paramFragment.mHidden)
    {
      paramFragment.mHidden = true;
      if (paramFragment.mView != null)
      {
        Animation localAnimation = ˊ(paramFragment, paramInt1, false, paramInt2);
        if (localAnimation != null) {
          paramFragment.mView.startAnimation(localAnimation);
        }
        paramFragment.mView.setVisibility(8);
      }
      if ((paramFragment.mAdded) && (paramFragment.mHasMenu) && (paramFragment.mMenuVisible)) {
        this.ו = true;
      }
      paramFragment.onHiddenChanged(true);
    }
  }
  
  public void ˋ(Menu paramMenu)
  {
    if (this.ᵀ != null)
    {
      int i = 0;
      while (i < this.ᵀ.size())
      {
        Fragment localFragment = (Fragment)this.ᵀ.get(i);
        if (localFragment != null) {
          localFragment.performOptionsMenuClosed(paramMenu);
        }
        i += 1;
      }
    }
  }
  
  void ˋ(ˎ paramˎ)
  {
    if (this.ᵗ == null) {
      this.ᵗ = new ArrayList();
    }
    this.ᵗ.add(paramˎ);
    ʼ();
  }
  
  public boolean ˋ(MenuItem paramMenuItem)
  {
    if (this.ᵀ != null)
    {
      int i = 0;
      while (i < this.ᵀ.size())
      {
        Fragment localFragment = (Fragment)this.ᵀ.get(i);
        if ((localFragment != null) && (localFragment.performContextItemSelected(paramMenuItem))) {
          return true;
        }
        i += 1;
      }
    }
    return false;
  }
  
  public void ˌ()
  {
    ˊ(2, false);
  }
  
  public void ˍ()
  {
    ˊ(1, false);
  }
  
  public List<Fragment> ˎ()
  {
    return this.ᴸ;
  }
  
  void ˎ(Fragment paramFragment)
  {
    ˊ(paramFragment, this.ː, 0, 0, false);
  }
  
  public void ˎ(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "show: " + paramFragment);
    }
    if (paramFragment.mHidden)
    {
      paramFragment.mHidden = false;
      if (paramFragment.mView != null)
      {
        Animation localAnimation = ˊ(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null) {
          paramFragment.mView.startAnimation(localAnimation);
        }
        paramFragment.mView.setVisibility(0);
      }
      if ((paramFragment.mAdded) && (paramFragment.mHasMenu) && (paramFragment.mMenuVisible)) {
        this.ו = true;
      }
      paramFragment.onHiddenChanged(false);
    }
  }
  
  public void ˎ(Fragment paramFragment, boolean paramBoolean)
  {
    if (this.ᵀ == null) {
      this.ᵀ = new ArrayList();
    }
    if (DEBUG) {
      Log.v("FragmentManager", "add: " + paramFragment);
    }
    ˏ(paramFragment);
    if (!paramFragment.mDetached)
    {
      if (this.ᵀ.contains(paramFragment)) {
        throw new IllegalStateException("Fragment already added: " + paramFragment);
      }
      this.ᵀ.add(paramFragment);
      paramFragment.mAdded = true;
      paramFragment.mRemoving = false;
      if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible)) {
        this.ו = true;
      }
      if (paramBoolean) {
        ˎ(paramFragment);
      }
    }
  }
  
  void ˏ()
  {
    if (this.ᴸ == null) {
      return;
    }
    int i = 0;
    while (i < this.ᴸ.size())
    {
      Fragment localFragment = (Fragment)this.ᴸ.get(i);
      if (localFragment != null) {
        ˋ(localFragment);
      }
      i += 1;
    }
  }
  
  public void ˏ(int paramInt)
  {
    try
    {
      this.ı.set(paramInt, null);
      if (this.ǃ == null) {
        this.ǃ = new ArrayList();
      }
      if (DEBUG) {
        Log.v("FragmentManager", "Freeing back stack index " + paramInt);
      }
      this.ǃ.add(Integer.valueOf(paramInt));
      return;
    }
    finally {}
  }
  
  void ˏ(Fragment paramFragment)
  {
    if (paramFragment.mIndex >= 0) {
      return;
    }
    if ((this.ᵋ == null) || (this.ᵋ.size() <= 0))
    {
      if (this.ᴸ == null) {
        this.ᴸ = new ArrayList();
      }
      paramFragment.setIndex(this.ᴸ.size(), this.ˣ);
      this.ᴸ.add(paramFragment);
    }
    else
    {
      paramFragment.setIndex(((Integer)this.ᵋ.remove(this.ᵋ.size() - 1)).intValue(), this.ˣ);
      this.ᴸ.set(paramFragment.mIndex, paramFragment);
    }
    if (DEBUG) {
      Log.v("FragmentManager", "Allocated fragment index " + paramFragment);
    }
  }
  
  public void ˏ(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "detach: " + paramFragment);
    }
    if (!paramFragment.mDetached)
    {
      paramFragment.mDetached = true;
      if (paramFragment.mAdded)
      {
        if (this.ᵀ != null)
        {
          if (DEBUG) {
            Log.v("FragmentManager", "remove from detach: " + paramFragment);
          }
          this.ᵀ.remove(paramFragment);
        }
        if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible)) {
          this.ו = true;
        }
        paramFragment.mAdded = false;
        ˊ(paramFragment, 1, paramInt1, paramInt2, false);
      }
    }
  }
  
  public void ˑ()
  {
    this.เ = true;
    ʻ();
    ˊ(0, false);
    this.mActivity = null;
    this.mContainer = null;
    this.ˣ = null;
  }
  
  public Parcelable ͺ()
  {
    ʻ();
    if (ᔇ) {
      this.ۦ = true;
    }
    if ((this.ᴸ == null) || (this.ᴸ.size() <= 0)) {
      return null;
    }
    int m = this.ᴸ.size();
    FragmentState[] arrayOfFragmentState = new FragmentState[m];
    int j = 0;
    int i = 0;
    while (i < m)
    {
      localObject1 = (Fragment)this.ᴸ.get(i);
      if (localObject1 != null)
      {
        if (((Fragment)localObject1).mIndex < 0) {
          ˊ(new IllegalStateException("Failure saving state: active " + localObject1 + " has cleared index: " + ((Fragment)localObject1).mIndex));
        }
        int k = 1;
        localObject2 = new FragmentState((Fragment)localObject1);
        arrayOfFragmentState[i] = localObject2;
        if ((((Fragment)localObject1).mState > 0) && (((FragmentState)localObject2).mSavedFragmentState == null))
        {
          ((FragmentState)localObject2).mSavedFragmentState = ʼ((Fragment)localObject1);
          if (((Fragment)localObject1).mTarget != null)
          {
            if (((Fragment)localObject1).mTarget.mIndex < 0) {
              ˊ(new IllegalStateException("Failure saving state: " + localObject1 + " has target not in fragment manager: " + ((Fragment)localObject1).mTarget));
            }
            if (((FragmentState)localObject2).mSavedFragmentState == null) {
              ((FragmentState)localObject2).mSavedFragmentState = new Bundle();
            }
            ˊ(((FragmentState)localObject2).mSavedFragmentState, "android:target_state", ((Fragment)localObject1).mTarget);
            if (((Fragment)localObject1).mTargetRequestCode != 0) {
              ((FragmentState)localObject2).mSavedFragmentState.putInt("android:target_req_state", ((Fragment)localObject1).mTargetRequestCode);
            }
          }
        }
        else
        {
          ((FragmentState)localObject2).mSavedFragmentState = ((Fragment)localObject1).mSavedFragmentState;
        }
        j = k;
        if (DEBUG)
        {
          Log.v("FragmentManager", "Saved state of " + localObject1 + ": " + ((FragmentState)localObject2).mSavedFragmentState);
          j = k;
        }
      }
      i += 1;
    }
    if (j == 0)
    {
      if (DEBUG) {
        Log.v("FragmentManager", "saveAllState: no fragments!");
      }
      return null;
    }
    Object localObject2 = null;
    Object localObject3 = null;
    Object localObject1 = localObject2;
    if (this.ᵀ != null)
    {
      j = this.ᵀ.size();
      localObject1 = localObject2;
      if (j > 0)
      {
        localObject2 = new int[j];
        i = 0;
        for (;;)
        {
          localObject1 = localObject2;
          if (i >= j) {
            break;
          }
          localObject2[i] = ((Fragment)this.ᵀ.get(i)).mIndex;
          if (localObject2[i] < 0) {
            ˊ(new IllegalStateException("Failure saving state: active " + this.ᵀ.get(i) + " has cleared index: " + localObject2[i]));
          }
          if (DEBUG) {
            Log.v("FragmentManager", "saveAllState: adding fragment #" + i + ": " + this.ᵀ.get(i));
          }
          i += 1;
        }
      }
    }
    localObject2 = localObject3;
    if (this.ᵗ != null)
    {
      j = this.ᵗ.size();
      localObject2 = localObject3;
      if (j > 0)
      {
        localObject3 = new BackStackState[j];
        i = 0;
        for (;;)
        {
          localObject2 = localObject3;
          if (i >= j) {
            break;
          }
          localObject3[i] = new BackStackState(this, (ˎ)this.ᵗ.get(i));
          if (DEBUG) {
            Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.ᵗ.get(i));
          }
          i += 1;
        }
      }
    }
    localObject3 = new FragmentManagerState();
    ((FragmentManagerState)localObject3).ɩ = arrayOfFragmentState;
    ((FragmentManagerState)localObject3).ʵ = ((int[])localObject1);
    ((FragmentManagerState)localObject3).ʸ = ((BackStackState[])localObject2);
    return localObject3;
  }
  
  public void ـ()
  {
    if (this.ᵀ != null)
    {
      int i = 0;
      while (i < this.ᵀ.size())
      {
        Fragment localFragment = (Fragment)this.ᵀ.get(i);
        if (localFragment != null) {
          localFragment.performLowMemory();
        }
        i += 1;
      }
    }
  }
  
  void ᐝ(Fragment paramFragment)
  {
    if (paramFragment.mIndex < 0) {
      return;
    }
    if (DEBUG) {
      Log.v("FragmentManager", "Freeing fragment index " + paramFragment);
    }
    this.ᴸ.set(paramFragment.mIndex, null);
    if (this.ᵋ == null) {
      this.ᵋ = new ArrayList();
    }
    this.ᵋ.add(Integer.valueOf(paramFragment.mIndex));
    this.mActivity.invalidateSupportFragment(paramFragment.mWho);
    paramFragment.initState();
  }
  
  public void ᐝ(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG) {
      Log.v("FragmentManager", "attach: " + paramFragment);
    }
    if (paramFragment.mDetached)
    {
      paramFragment.mDetached = false;
      if (!paramFragment.mAdded)
      {
        if (this.ᵀ == null) {
          this.ᵀ = new ArrayList();
        }
        if (this.ᵀ.contains(paramFragment)) {
          throw new IllegalStateException("Fragment already added: " + paramFragment);
        }
        if (DEBUG) {
          Log.v("FragmentManager", "add from attach: " + paramFragment);
        }
        this.ᵀ.add(paramFragment);
        paramFragment.mAdded = true;
        if ((paramFragment.mHasMenu) && (paramFragment.mMenuVisible)) {
          this.ו = true;
        }
        ˊ(paramFragment, this.ː, paramInt1, paramInt2, false);
      }
    }
  }
  
  public ᕑ ᐧ()
  {
    return this;
  }
  
  public void ι()
  {
    this.ۦ = false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë
 * JD-Core Version:    0.7.0.1
 */