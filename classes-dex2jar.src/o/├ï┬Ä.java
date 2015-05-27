package o;

import android.os.Build.VERSION;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseArray<Landroid.support.v4.app.Fragment;>;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

public final class ˎ
  extends ᐨ
  implements Runnable
{
  static final boolean ˎ;
  public int mIndex = -1;
  public String mName;
  ˎ.if ʻ;
  public int ʼ;
  int ʽ;
  int ʾ;
  public int ʿ;
  public int ˈ;
  public boolean ˉ;
  boolean ˌ = true;
  boolean ˍ;
  final ˉ ˏ;
  public int ˑ;
  int ͺ;
  public CharSequence ـ;
  public ˎ.if ᐝ;
  public int ᐧ;
  public CharSequence ᐨ;
  int ι;
  public ArrayList<String> ﹳ;
  public ArrayList<String> ﾞ;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 21) {
      bool = true;
    } else {
      bool = false;
    }
    ˎ = bool;
  }
  
  public ˎ(ˉ paramˉ)
  {
    this.ˏ = paramˉ;
  }
  
  private static Object ˊ(Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean)
  {
    if ((paramFragment1 == null) || (paramFragment2 == null)) {
      return null;
    }
    if (paramBoolean) {
      paramFragment1 = paramFragment2.getSharedElementReturnTransition();
    } else {
      paramFragment1 = paramFragment1.getSharedElementEnterTransition();
    }
    return ﹳ.ˊ(paramFragment1);
  }
  
  private static Object ˊ(Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {
      paramFragment = paramFragment.getReenterTransition();
    } else {
      paramFragment = paramFragment.getEnterTransition();
    }
    return ﹳ.ˊ(paramFragment);
  }
  
  private static Object ˊ(Object paramObject, Fragment paramFragment, ArrayList<View> paramArrayList, ᒢ<String, View> paramᒢ, View paramView)
  {
    Object localObject = paramObject;
    if (paramObject != null) {
      localObject = ﹳ.ˊ(paramObject, paramFragment.getView(), paramArrayList, paramᒢ, paramView);
    }
    return localObject;
  }
  
  private ˎ.ˊ ˊ(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2, boolean paramBoolean)
  {
    ˎ.ˊ localˊ = new ˎ.ˊ(this);
    localˊ.ᑊ = new View(this.ˏ.mActivity);
    int i = 0;
    int j = 0;
    while (j < paramSparseArray1.size())
    {
      if (ˊ(paramSparseArray1.keyAt(j), localˊ, paramBoolean, paramSparseArray1, paramSparseArray2)) {
        i = 1;
      }
      j += 1;
    }
    j = 0;
    while (j < paramSparseArray2.size())
    {
      int m = paramSparseArray2.keyAt(j);
      int k = i;
      if (paramSparseArray1.get(m) == null)
      {
        k = i;
        if (ˊ(m, localˊ, paramBoolean, paramSparseArray1, paramSparseArray2)) {
          k = 1;
        }
      }
      j += 1;
      i = k;
    }
    paramSparseArray1 = localˊ;
    if (i == 0) {
      paramSparseArray1 = null;
    }
    return paramSparseArray1;
  }
  
  private static ᒢ<String, View> ˊ(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ᒢ<String, View> paramᒢ)
  {
    if (paramᒢ.isEmpty()) {
      return paramᒢ;
    }
    ᒢ localᒢ = new ᒢ();
    int j = paramArrayList1.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)paramᒢ.get(paramArrayList1.get(i));
      if (localView != null) {
        localᒢ.put(paramArrayList2.get(i), localView);
      }
      i += 1;
    }
    return localᒢ;
  }
  
  private ᒢ<String, View> ˊ(ˎ.ˊ paramˊ, Fragment paramFragment, boolean paramBoolean)
  {
    ᒢ localᒢ2 = new ᒢ();
    ᒢ localᒢ1 = localᒢ2;
    if (this.ﹳ != null)
    {
      ﹳ.ˊ(localᒢ2, paramFragment.getView());
      if (paramBoolean)
      {
        localᒢ2.retainAll(this.ﾞ);
        localᒢ1 = localᒢ2;
      }
      else
      {
        localᒢ1 = ˊ(this.ﹳ, this.ﾞ, localᒢ2);
      }
    }
    if (paramBoolean)
    {
      if (paramFragment.mEnterTransitionCallback != null) {
        paramFragment.mEnterTransitionCallback.onMapSharedElements(this.ﾞ, localᒢ1);
      }
      ˊ(paramˊ, localᒢ1, false);
      return localᒢ1;
    }
    if (paramFragment.mExitTransitionCallback != null) {
      paramFragment.mExitTransitionCallback.onMapSharedElements(this.ﾞ, localᒢ1);
    }
    ˋ(paramˊ, localᒢ1, false);
    return localᒢ1;
  }
  
  private ᒢ<String, View> ˊ(ˎ.ˊ paramˊ, boolean paramBoolean, Fragment paramFragment)
  {
    ᒢ localᒢ = ˋ(paramˊ, paramFragment, paramBoolean);
    if (paramBoolean)
    {
      if (paramFragment.mExitTransitionCallback != null) {
        paramFragment.mExitTransitionCallback.onMapSharedElements(this.ﾞ, localᒢ);
      }
      ˊ(paramˊ, localᒢ, true);
      return localᒢ;
    }
    if (paramFragment.mEnterTransitionCallback != null) {
      paramFragment.mEnterTransitionCallback.onMapSharedElements(this.ﾞ, localᒢ);
    }
    ˋ(paramˊ, localᒢ, true);
    return localᒢ;
  }
  
  private void ˊ(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    paramFragment.mFragmentManager = this.ˏ;
    if (paramString != null)
    {
      if ((paramFragment.mTag != null) && (!paramString.equals(paramFragment.mTag))) {
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + paramFragment.mTag + " now " + paramString);
      }
      paramFragment.mTag = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((paramFragment.mFragmentId != 0) && (paramFragment.mFragmentId != paramInt1)) {
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + paramFragment.mFragmentId + " now " + paramInt1);
      }
      paramFragment.mFragmentId = paramInt1;
      paramFragment.mContainerId = paramInt1;
    }
    paramString = new ˎ.if();
    paramString.ʳ = paramInt2;
    paramString.ʴ = paramFragment;
    ˊ(paramString);
  }
  
  private static void ˊ(SparseArray<Fragment> paramSparseArray, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i = paramFragment.mContainerId;
      if ((i != 0) && (!paramFragment.isHidden()) && (paramFragment.isAdded()) && (paramFragment.getView() != null) && (paramSparseArray.get(i) == null)) {
        paramSparseArray.put(i, paramFragment);
      }
    }
  }
  
  private void ˊ(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!this.ˏ.mContainer.ˊ()) {
      return;
    }
    for (ˎ.if localif = this.ᐝ; localif != null; localif = localif.ﹺ) {
      switch (localif.ʳ)
      {
      default: 
        break;
      case 1: 
        ˋ(paramSparseArray2, localif.ʴ);
        break;
      case 2: 
        Object localObject1 = localif.ʴ;
        Object localObject2 = localObject1;
        if (this.ˏ.ᵀ != null)
        {
          int i = 0;
          for (;;)
          {
            localObject2 = localObject1;
            if (i >= this.ˏ.ᵀ.size()) {
              break;
            }
            Fragment localFragment = (Fragment)this.ˏ.ᵀ.get(i);
            if (localObject1 != null)
            {
              localObject2 = localObject1;
              if (localFragment.mContainerId != ((Fragment)localObject1).mContainerId) {}
            }
            else if (localFragment == localObject1)
            {
              localObject2 = null;
            }
            else
            {
              ˊ(paramSparseArray1, localFragment);
              localObject2 = localObject1;
            }
            i += 1;
            localObject1 = localObject2;
          }
        }
        ˋ(paramSparseArray2, localObject2);
        break;
      case 3: 
        ˊ(paramSparseArray1, localif.ʴ);
        break;
      case 4: 
        ˊ(paramSparseArray1, localif.ʴ);
        break;
      case 5: 
        ˋ(paramSparseArray2, localif.ʴ);
        break;
      case 6: 
        ˊ(paramSparseArray1, localif.ʴ);
        break;
      case 7: 
        ˋ(paramSparseArray2, localif.ʴ);
      }
    }
  }
  
  private void ˊ(View paramView, ˎ.ˊ paramˊ, int paramInt, Object paramObject)
  {
    paramView.getViewTreeObserver().addOnPreDrawListener(new ᐝ(this, paramView, paramˊ, paramInt, paramObject));
  }
  
  private void ˊ(ˎ.ˊ paramˊ, int paramInt, Object paramObject)
  {
    if (this.ˏ.ᵀ != null)
    {
      int i = 0;
      while (i < this.ˏ.ᵀ.size())
      {
        Fragment localFragment = (Fragment)this.ˏ.ᵀ.get(i);
        if ((localFragment.mView != null) && (localFragment.mContainer != null) && (localFragment.mContainerId == paramInt)) {
          if (localFragment.mHidden)
          {
            if (!paramˊ.ᐣ.contains(localFragment.mView))
            {
              ﹳ.ˊ(paramObject, localFragment.mView, true);
              paramˊ.ᐣ.add(localFragment.mView);
            }
          }
          else
          {
            ﹳ.ˊ(paramObject, localFragment.mView, false);
            paramˊ.ᐣ.remove(localFragment.mView);
          }
        }
        i += 1;
      }
    }
  }
  
  private void ˊ(ˎ.ˊ paramˊ, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean, ᒢ<String, View> paramᒢ)
  {
    if (paramBoolean) {
      paramˊ = paramFragment2.mEnterTransitionCallback;
    } else {
      paramˊ = paramFragment1.mEnterTransitionCallback;
    }
    if (paramˊ != null) {
      paramˊ.onSharedElementEnd(new ArrayList(paramᒢ.keySet()), new ArrayList(paramᒢ.values()), null);
    }
  }
  
  private void ˊ(ˎ.ˊ paramˊ, View paramView, Object paramObject, Fragment paramFragment1, Fragment paramFragment2, boolean paramBoolean, ArrayList<View> paramArrayList)
  {
    paramView.getViewTreeObserver().addOnPreDrawListener(new aux(this, paramView, paramObject, paramArrayList, paramˊ, paramBoolean, paramFragment1, paramFragment2));
  }
  
  private static void ˊ(ˎ.ˊ paramˊ, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if (paramArrayList1 != null)
    {
      int i = 0;
      while (i < paramArrayList1.size())
      {
        String str1 = (String)paramArrayList1.get(i);
        String str2 = (String)paramArrayList2.get(i);
        ˊ(paramˊ.ᐠ, str1, str2);
        i += 1;
      }
    }
  }
  
  private void ˊ(ˎ.ˊ paramˊ, ᒢ<String, View> paramᒢ, boolean paramBoolean)
  {
    int i;
    if (this.ﾞ == null) {
      i = 0;
    } else {
      i = this.ﾞ.size();
    }
    int j = 0;
    while (j < i)
    {
      String str = (String)this.ﹳ.get(j);
      Object localObject = (View)paramᒢ.get((String)this.ﾞ.get(j));
      if (localObject != null)
      {
        localObject = ﹳ.ˊ((View)localObject);
        if (paramBoolean) {
          ˊ(paramˊ.ᐠ, str, (String)localObject);
        } else {
          ˊ(paramˊ.ᐠ, (String)localObject, str);
        }
      }
      j += 1;
    }
  }
  
  private static void ˊ(ᒢ<String, String> paramᒢ, String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null) && (!paramString1.equals(paramString2)))
    {
      int i = 0;
      while (i < paramᒢ.size())
      {
        if (paramString1.equals(paramᒢ.valueAt(i)))
        {
          paramᒢ.setValueAt(i, paramString2);
          return;
        }
        i += 1;
      }
      paramᒢ.put(paramString1, paramString2);
    }
  }
  
  private void ˊ(ᒢ<String, View> paramᒢ, ˎ.ˊ paramˊ)
  {
    if ((this.ﾞ != null) && (!paramᒢ.isEmpty()))
    {
      paramᒢ = (View)paramᒢ.get(this.ﾞ.get(0));
      if (paramᒢ != null) {
        paramˊ.ᐩ.ᵞ = paramᒢ;
      }
    }
  }
  
  private boolean ˊ(int paramInt, ˎ.ˊ paramˊ, boolean paramBoolean, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    ViewGroup localViewGroup = (ViewGroup)this.ˏ.mContainer.findViewById(paramInt);
    if (localViewGroup == null) {
      return false;
    }
    Object localObject2 = (Fragment)paramSparseArray2.get(paramInt);
    Object localObject5 = (Fragment)paramSparseArray1.get(paramInt);
    Object localObject3 = ˊ((Fragment)localObject2, paramBoolean);
    Object localObject4 = ˊ((Fragment)localObject2, (Fragment)localObject5, paramBoolean);
    Object localObject6 = ˋ((Fragment)localObject5, paramBoolean);
    if ((localObject3 == null) && (localObject4 == null) && (localObject6 == null)) {
      return false;
    }
    paramSparseArray1 = null;
    ArrayList localArrayList = new ArrayList();
    if (localObject4 != null)
    {
      localObject1 = ˊ(paramˊ, (Fragment)localObject5, paramBoolean);
      localArrayList.add(paramˊ.ᑊ);
      localArrayList.addAll(((ᒢ)localObject1).values());
      if (paramBoolean) {
        paramSparseArray2 = ((Fragment)localObject5).mEnterTransitionCallback;
      } else {
        paramSparseArray2 = ((Fragment)localObject2).mEnterTransitionCallback;
      }
      paramSparseArray1 = (SparseArray<Fragment>)localObject1;
      if (paramSparseArray2 != null)
      {
        paramSparseArray2.onSharedElementStart(new ArrayList(((ᒢ)localObject1).keySet()), new ArrayList(((ᒢ)localObject1).values()), null);
        paramSparseArray1 = (SparseArray<Fragment>)localObject1;
      }
    }
    paramSparseArray2 = new ArrayList();
    Object localObject1 = ˊ(localObject6, (Fragment)localObject5, paramSparseArray2, paramSparseArray1, paramˊ.ᑊ);
    if ((this.ﾞ != null) && (paramSparseArray1 != null))
    {
      paramSparseArray1 = (View)paramSparseArray1.get(this.ﾞ.get(0));
      if (paramSparseArray1 != null)
      {
        if (localObject1 != null) {
          ﹳ.ˊ(localObject1, paramSparseArray1);
        }
        if (localObject4 != null) {
          ﹳ.ˊ(localObject4, paramSparseArray1);
        }
      }
    }
    paramSparseArray1 = new ˏ(this, (Fragment)localObject2);
    if (localObject4 != null) {
      ˊ(paramˊ, localViewGroup, localObject4, (Fragment)localObject2, (Fragment)localObject5, paramBoolean, localArrayList);
    }
    localObject5 = new ArrayList();
    localObject6 = new ᒢ();
    if (paramBoolean) {
      paramBoolean = ((Fragment)localObject2).getAllowReturnTransitionOverlap();
    } else {
      paramBoolean = ((Fragment)localObject2).getAllowEnterTransitionOverlap();
    }
    localObject2 = ﹳ.ˊ(localObject3, localObject1, localObject4, paramBoolean);
    if (localObject2 != null)
    {
      ﹳ.ˊ(localObject3, localObject4, localViewGroup, paramSparseArray1, paramˊ.ᑊ, paramˊ.ᐩ, paramˊ.ᐠ, (ArrayList)localObject5, (Map)localObject6, localArrayList);
      ˊ(localViewGroup, paramˊ, paramInt, localObject2);
      ﹳ.ˊ(localObject2, paramˊ.ᑊ, true);
      ˊ(paramˊ, paramInt, localObject2);
      ﹳ.ˊ(localViewGroup, localObject2);
      ﹳ.ˊ(localViewGroup, paramˊ.ᑊ, localObject3, (ArrayList)localObject5, localObject1, paramSparseArray2, localObject4, localArrayList, localObject2, paramˊ.ᐣ, (Map)localObject6);
    }
    return localObject2 != null;
  }
  
  private static Object ˋ(Fragment paramFragment, boolean paramBoolean)
  {
    if (paramFragment == null) {
      return null;
    }
    if (paramBoolean) {
      paramFragment = paramFragment.getReturnTransition();
    } else {
      paramFragment = paramFragment.getExitTransition();
    }
    return ﹳ.ˊ(paramFragment);
  }
  
  private ᒢ<String, View> ˋ(ˎ.ˊ paramˊ, Fragment paramFragment, boolean paramBoolean)
  {
    paramˊ = new ᒢ();
    paramFragment = paramFragment.getView();
    if ((paramFragment != null) && (this.ﹳ != null))
    {
      ﹳ.ˊ(paramˊ, paramFragment);
      if (paramBoolean) {
        return ˊ(this.ﹳ, this.ﾞ, paramˊ);
      }
      paramˊ.retainAll(this.ﾞ);
    }
    return paramˊ;
  }
  
  private void ˋ(SparseArray<Fragment> paramSparseArray, Fragment paramFragment)
  {
    if (paramFragment != null)
    {
      int i = paramFragment.mContainerId;
      if (i != 0) {
        paramSparseArray.put(i, paramFragment);
      }
    }
  }
  
  private void ˋ(ˎ.ˊ paramˊ, ᒢ<String, View> paramᒢ, boolean paramBoolean)
  {
    int j = paramᒢ.size();
    int i = 0;
    while (i < j)
    {
      String str1 = (String)paramᒢ.keyAt(i);
      String str2 = ﹳ.ˊ((View)paramᒢ.valueAt(i));
      if (paramBoolean) {
        ˊ(paramˊ.ᐠ, str1, str2);
      } else {
        ˊ(paramˊ.ᐠ, str2, str1);
      }
      i += 1;
    }
  }
  
  public int commit()
  {
    return ˊ(false);
  }
  
  public int commitAllowingStateLoss()
  {
    return ˊ(true);
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    ˊ(paramString, paramPrintWriter, true);
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public void run()
  {
    if (ˉ.DEBUG) {
      Log.v("FragmentManager", "Run: " + this);
    }
    if ((this.ˉ) && (this.mIndex < 0)) {
      throw new IllegalStateException("addToBackStack() called after commit()");
    }
    ˊ(1);
    Object localObject2 = null;
    Object localObject1;
    if (ˎ)
    {
      localObject1 = new SparseArray();
      localObject2 = new SparseArray();
      ˊ((SparseArray)localObject1, (SparseArray)localObject2);
      localObject2 = ˊ((SparseArray)localObject1, (SparseArray)localObject2, false);
    }
    int i;
    if (localObject2 != null) {
      i = 0;
    } else {
      i = this.ˈ;
    }
    int j;
    if (localObject2 != null) {
      j = 0;
    } else {
      j = this.ʿ;
    }
    for (ˎ.if localif = this.ᐝ; localif != null; localif = localif.ﹺ)
    {
      int k;
      if (localObject2 != null) {
        k = 0;
      } else {
        k = localif.ˆ;
      }
      int m;
      if (localObject2 != null) {
        m = 0;
      } else {
        m = localif.ˇ;
      }
      switch (localif.ʳ)
      {
      default: 
        break;
      case 1: 
        localObject1 = localif.ʴ;
        ((Fragment)localObject1).mNextAnim = k;
        this.ˏ.ˎ((Fragment)localObject1, false);
        break;
      case 2: 
        localObject1 = localif.ʴ;
        Object localObject3 = localObject1;
        if (this.ˏ.ᵀ != null)
        {
          int n = 0;
          for (;;)
          {
            localObject3 = localObject1;
            if (n >= this.ˏ.ᵀ.size()) {
              break;
            }
            Fragment localFragment = (Fragment)this.ˏ.ᵀ.get(n);
            if (ˉ.DEBUG) {
              Log.v("FragmentManager", "OP_REPLACE: adding=" + localObject1 + " old=" + localFragment);
            }
            if (localObject1 != null)
            {
              localObject3 = localObject1;
              if (localFragment.mContainerId != ((Fragment)localObject1).mContainerId) {}
            }
            else if (localFragment == localObject1)
            {
              localObject3 = null;
              localif.ʴ = null;
            }
            else
            {
              if (localif.ۥ == null) {
                localif.ۥ = new ArrayList();
              }
              localif.ۥ.add(localFragment);
              localFragment.mNextAnim = m;
              if (this.ˉ)
              {
                localFragment.mBackStackNesting += 1;
                if (ˉ.DEBUG) {
                  Log.v("FragmentManager", "Bump nesting of " + localFragment + " to " + localFragment.mBackStackNesting);
                }
              }
              this.ˏ.ˊ(localFragment, j, i);
              localObject3 = localObject1;
            }
            n += 1;
            localObject1 = localObject3;
          }
        }
        if (localObject3 != null)
        {
          localObject3.mNextAnim = k;
          this.ˏ.ˎ(localObject3, false);
        }
        break;
      case 3: 
        localObject1 = localif.ʴ;
        ((Fragment)localObject1).mNextAnim = m;
        this.ˏ.ˊ((Fragment)localObject1, j, i);
        break;
      case 4: 
        localObject1 = localif.ʴ;
        ((Fragment)localObject1).mNextAnim = m;
        this.ˏ.ˋ((Fragment)localObject1, j, i);
        break;
      case 5: 
        localObject1 = localif.ʴ;
        ((Fragment)localObject1).mNextAnim = k;
        this.ˏ.ˎ((Fragment)localObject1, j, i);
        break;
      case 6: 
        localObject1 = localif.ʴ;
        ((Fragment)localObject1).mNextAnim = m;
        this.ˏ.ˏ((Fragment)localObject1, j, i);
        break;
      case 7: 
        localObject1 = localif.ʴ;
        ((Fragment)localObject1).mNextAnim = k;
        this.ˏ.ᐝ((Fragment)localObject1, j, i);
        break;
      }
      throw new IllegalArgumentException("Unknown cmd: " + localif.ʳ);
    }
    this.ˏ.ˊ(this.ˏ.ː, j, i, true);
    if (this.ˉ) {
      this.ˏ.ˋ(this);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.mIndex >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.mIndex);
    }
    if (this.mName != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.mName);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  int ˊ(boolean paramBoolean)
  {
    if (this.ˍ) {
      throw new IllegalStateException("commit already called");
    }
    if (ˉ.DEBUG)
    {
      Log.v("FragmentManager", "Commit: " + this);
      dump("  ", null, new PrintWriter(new ᵙ("FragmentManager")), null);
    }
    this.ˍ = true;
    if (this.ˉ) {
      this.mIndex = this.ˏ.ˊ(this);
    } else {
      this.mIndex = -1;
    }
    this.ˏ.ˊ(this, paramBoolean);
    return this.mIndex;
  }
  
  public ˎ.ˊ ˊ(boolean paramBoolean, ˎ.ˊ paramˊ, SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (ˉ.DEBUG)
    {
      Log.v("FragmentManager", "popFromBackStack: " + this);
      dump("  ", null, new PrintWriter(new ᵙ("FragmentManager")), null);
    }
    ˎ.ˊ localˊ = paramˊ;
    if (ˎ) {
      if (paramˊ == null)
      {
        if (paramSparseArray1.size() == 0)
        {
          localˊ = paramˊ;
          if (paramSparseArray2.size() == 0) {}
        }
        else
        {
          localˊ = ˊ(paramSparseArray1, paramSparseArray2, true);
        }
      }
      else
      {
        localˊ = paramˊ;
        if (!paramBoolean)
        {
          ˊ(paramˊ, this.ﾞ, this.ﹳ);
          localˊ = paramˊ;
        }
      }
    }
    ˊ(-1);
    int i;
    if (localˊ != null) {
      i = 0;
    } else {
      i = this.ˈ;
    }
    int j;
    if (localˊ != null) {
      j = 0;
    } else {
      j = this.ʿ;
    }
    for (paramˊ = this.ʻ; paramˊ != null; paramˊ = paramˊ.ｰ)
    {
      int k;
      if (localˊ != null) {
        k = 0;
      } else {
        k = paramˊ.ˡ;
      }
      int m;
      if (localˊ != null) {
        m = 0;
      } else {
        m = paramˊ.ˮ;
      }
      switch (paramˊ.ʳ)
      {
      default: 
        break;
      case 1: 
        paramSparseArray1 = paramˊ.ʴ;
        paramSparseArray1.mNextAnim = m;
        this.ˏ.ˊ(paramSparseArray1, ˉ.ᐝ(j), i);
        break;
      case 2: 
        paramSparseArray1 = paramˊ.ʴ;
        if (paramSparseArray1 != null)
        {
          paramSparseArray1.mNextAnim = m;
          this.ˏ.ˊ(paramSparseArray1, ˉ.ᐝ(j), i);
        }
        if (paramˊ.ۥ != null)
        {
          m = 0;
          while (m < paramˊ.ۥ.size())
          {
            paramSparseArray1 = (Fragment)paramˊ.ۥ.get(m);
            paramSparseArray1.mNextAnim = k;
            this.ˏ.ˎ(paramSparseArray1, false);
            m += 1;
          }
        }
        break;
      case 3: 
        paramSparseArray1 = paramˊ.ʴ;
        paramSparseArray1.mNextAnim = k;
        this.ˏ.ˎ(paramSparseArray1, false);
        break;
      case 4: 
        paramSparseArray1 = paramˊ.ʴ;
        paramSparseArray1.mNextAnim = k;
        this.ˏ.ˎ(paramSparseArray1, ˉ.ᐝ(j), i);
        break;
      case 5: 
        paramSparseArray1 = paramˊ.ʴ;
        paramSparseArray1.mNextAnim = m;
        this.ˏ.ˋ(paramSparseArray1, ˉ.ᐝ(j), i);
        break;
      case 6: 
        paramSparseArray1 = paramˊ.ʴ;
        paramSparseArray1.mNextAnim = k;
        this.ˏ.ᐝ(paramSparseArray1, ˉ.ᐝ(j), i);
        break;
      case 7: 
        paramSparseArray1 = paramˊ.ʴ;
        paramSparseArray1.mNextAnim = k;
        this.ˏ.ˏ(paramSparseArray1, ˉ.ᐝ(j), i);
        break;
      }
      throw new IllegalArgumentException("Unknown cmd: " + paramˊ.ʳ);
    }
    if (paramBoolean)
    {
      this.ˏ.ˊ(this.ˏ.ː, ˉ.ᐝ(j), i, true);
      localˊ = null;
    }
    if (this.mIndex >= 0)
    {
      this.ˏ.ˏ(this.mIndex);
      this.mIndex = -1;
    }
    return localˊ;
  }
  
  public ᐨ ˊ(Fragment paramFragment)
  {
    ˎ.if localif = new ˎ.if();
    localif.ʳ = 3;
    localif.ʴ = paramFragment;
    ˊ(localif);
    return this;
  }
  
  public ᐨ ˊ(Fragment paramFragment, String paramString)
  {
    ˊ(0, paramFragment, paramString, 1);
    return this;
  }
  
  public void ˊ(int paramInt)
  {
    if (!this.ˉ) {
      return;
    }
    if (ˉ.DEBUG) {
      Log.v("FragmentManager", "Bump nesting in " + this + " by " + paramInt);
    }
    for (ˎ.if localif = this.ᐝ; localif != null; localif = localif.ﹺ)
    {
      Fragment localFragment;
      if (localif.ʴ != null)
      {
        localFragment = localif.ʴ;
        localFragment.mBackStackNesting += paramInt;
        if (ˉ.DEBUG) {
          Log.v("FragmentManager", "Bump nesting of " + localif.ʴ + " to " + localif.ʴ.mBackStackNesting);
        }
      }
      if (localif.ۥ != null)
      {
        int i = localif.ۥ.size() - 1;
        while (i >= 0)
        {
          localFragment = (Fragment)localif.ۥ.get(i);
          localFragment.mBackStackNesting += paramInt;
          if (ˉ.DEBUG) {
            Log.v("FragmentManager", "Bump nesting of " + localFragment + " to " + localFragment.mBackStackNesting);
          }
          i -= 1;
        }
      }
    }
  }
  
  public void ˊ(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(this.mName);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(this.mIndex);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(this.ˍ);
      if (this.ʿ != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(this.ʿ));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(this.ˈ));
      }
      if ((this.ʽ != 0) || (this.ͺ != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.ʽ));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.ͺ));
      }
      if ((this.ι != 0) || (this.ʾ != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.ι));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.ʾ));
      }
      if ((this.ˑ != 0) || (this.ـ != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.ˑ));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(this.ـ);
      }
      if ((this.ᐧ != 0) || (this.ᐨ != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.ᐧ));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(this.ᐨ);
      }
    }
    if (this.ᐝ != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str2 = paramString + "    ";
      ˎ.if localif = this.ᐝ;
      int i = 0;
      while (localif != null)
      {
        switch (localif.ʳ)
        {
        default: 
          break;
        case 0: 
          str1 = "NULL";
          break;
        case 1: 
          str1 = "ADD";
          break;
        case 2: 
          str1 = "REPLACE";
          break;
        case 3: 
          str1 = "REMOVE";
          break;
        case 4: 
          str1 = "HIDE";
          break;
        case 5: 
          str1 = "SHOW";
          break;
        case 6: 
          str1 = "DETACH";
          break;
        case 7: 
          str1 = "ATTACH";
          break;
        }
        String str1 = "cmd=" + localif.ʳ;
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  Op #");
        paramPrintWriter.print(i);
        paramPrintWriter.print(": ");
        paramPrintWriter.print(str1);
        paramPrintWriter.print(" ");
        paramPrintWriter.println(localif.ʴ);
        if (paramBoolean)
        {
          if ((localif.ˆ != 0) || (localif.ˇ != 0))
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("enterAnim=#");
            paramPrintWriter.print(Integer.toHexString(localif.ˆ));
            paramPrintWriter.print(" exitAnim=#");
            paramPrintWriter.println(Integer.toHexString(localif.ˇ));
          }
          if ((localif.ˡ != 0) || (localif.ˮ != 0))
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("popEnterAnim=#");
            paramPrintWriter.print(Integer.toHexString(localif.ˡ));
            paramPrintWriter.print(" popExitAnim=#");
            paramPrintWriter.println(Integer.toHexString(localif.ˮ));
          }
        }
        if ((localif.ۥ != null) && (localif.ۥ.size() > 0))
        {
          int j = 0;
          while (j < localif.ۥ.size())
          {
            paramPrintWriter.print(str2);
            if (localif.ۥ.size() == 1)
            {
              paramPrintWriter.print("Removed: ");
            }
            else
            {
              if (j == 0) {
                paramPrintWriter.println("Removed:");
              }
              paramPrintWriter.print(str2);
              paramPrintWriter.print("  #");
              paramPrintWriter.print(j);
              paramPrintWriter.print(": ");
            }
            paramPrintWriter.println(localif.ۥ.get(j));
            j += 1;
          }
        }
        localif = localif.ﹺ;
        i += 1;
      }
    }
  }
  
  public void ˊ(ˎ.if paramif)
  {
    if (this.ᐝ == null)
    {
      this.ʻ = paramif;
      this.ᐝ = paramif;
    }
    else
    {
      paramif.ｰ = this.ʻ;
      this.ʻ.ﹺ = paramif;
      this.ʻ = paramif;
    }
    paramif.ˆ = this.ʽ;
    paramif.ˇ = this.ͺ;
    paramif.ˡ = this.ι;
    paramif.ˮ = this.ʾ;
    this.ʼ += 1;
  }
  
  public void ˋ(SparseArray<Fragment> paramSparseArray1, SparseArray<Fragment> paramSparseArray2)
  {
    if (!this.ˏ.mContainer.ˊ()) {
      return;
    }
    for (ˎ.if localif = this.ᐝ; localif != null; localif = localif.ﹺ) {
      switch (localif.ʳ)
      {
      default: 
        break;
      case 1: 
        ˊ(paramSparseArray1, localif.ʴ);
        break;
      case 2: 
        if (localif.ۥ != null)
        {
          int i = localif.ۥ.size() - 1;
          while (i >= 0)
          {
            ˋ(paramSparseArray2, (Fragment)localif.ۥ.get(i));
            i -= 1;
          }
        }
        ˊ(paramSparseArray1, localif.ʴ);
        break;
      case 3: 
        ˋ(paramSparseArray2, localif.ʴ);
        break;
      case 4: 
        ˋ(paramSparseArray2, localif.ʴ);
        break;
      case 5: 
        ˊ(paramSparseArray1, localif.ʴ);
        break;
      case 6: 
        ˋ(paramSparseArray2, localif.ʴ);
        break;
      case 7: 
        ˊ(paramSparseArray1, localif.ʴ);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ë
 * JD-Core Version:    0.7.0.1
 */