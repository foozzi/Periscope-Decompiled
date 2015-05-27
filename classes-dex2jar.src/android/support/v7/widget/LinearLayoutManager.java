package android.support.v7.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;
import o.ǀ;
import o.ז;
import o.ῐ;
import o.氵;
import o.ﯦ;

public class LinearLayoutManager
  extends RecyclerView.ʻ
{
  int ᔺ;
  private LinearLayoutManager.ˋ ᖺ;
  氵 ᗀ;
  private boolean ᘥ;
  private boolean ᵆ = false;
  boolean Ḟ = false;
  private boolean Ḹ = false;
  private boolean Ḽ = true;
  int Ṿ = -1;
  int Ὑ = -2147483648;
  private boolean Ῠ;
  SavedState Ῡ = null;
  final if Ὺ = new if();
  
  public LinearLayoutManager(Context paramContext)
  {
    this(paramContext, 1, false);
  }
  
  public LinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    setOrientation(paramInt);
    ᵔ(paramBoolean);
  }
  
  private void Ɨ()
  {
    if ((this.ᔺ == 1) || (!ƚ()))
    {
      this.Ḟ = this.ᵆ;
      return;
    }
    boolean bool;
    if (!this.ᵆ) {
      bool = true;
    } else {
      bool = false;
    }
    this.Ḟ = bool;
  }
  
  private View ǐ()
  {
    int i;
    if (this.Ḟ) {
      i = getChildCount() - 1;
    } else {
      i = 0;
    }
    return getChildAt(i);
  }
  
  private View Ȋ()
  {
    int i;
    if (this.Ḟ) {
      i = 0;
    } else {
      i = getChildCount() - 1;
    }
    return getChildAt(i);
  }
  
  private View ɩ(int paramInt)
  {
    return ʼ(getChildCount() - 1, -1, paramInt);
  }
  
  private void ʳ(int paramInt1, int paramInt2)
  {
    this.ᖺ.リ = (this.ᗀ.ᔥ() - paramInt2);
    LinearLayoutManager.ˋ localˋ = this.ᖺ;
    int i;
    if (this.Ḟ) {
      i = -1;
    } else {
      i = 1;
    }
    localˋ.ヶ = i;
    this.ᖺ.ヮ = paramInt1;
    this.ᖺ.丫 = 1;
    this.ᖺ.ḯ = paramInt2;
    this.ᖺ.乁 = -2147483648;
  }
  
  private void ʴ(int paramInt1, int paramInt2)
  {
    this.ᖺ.リ = (paramInt2 - this.ᗀ.ᓴ());
    this.ᖺ.ヮ = paramInt1;
    LinearLayoutManager.ˋ localˋ = this.ᖺ;
    if (this.Ḟ) {
      paramInt1 = 1;
    } else {
      paramInt1 = -1;
    }
    localˋ.ヶ = paramInt1;
    this.ᖺ.丫 = -1;
    this.ᖺ.ḯ = paramInt2;
    this.ᖺ.乁 = -2147483648;
  }
  
  private View ʼ(int paramInt1, int paramInt2, int paramInt3)
  {
    Ǐ();
    Object localObject2 = null;
    Object localObject1 = null;
    int j = this.ᗀ.ᓴ();
    int k = this.ᗀ.ᔥ();
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    } else {
      i = -1;
    }
    while (paramInt1 != paramInt2)
    {
      View localView = getChildAt(paramInt1);
      int m = ˣ(localView);
      Object localObject3 = localObject2;
      Object localObject4 = localObject1;
      if (m >= 0)
      {
        localObject3 = localObject2;
        localObject4 = localObject1;
        if (m < paramInt3) {
          if (((RecyclerView.ʼ)localView.getLayoutParams()).ϲ())
          {
            localObject3 = localObject2;
            localObject4 = localObject1;
            if (localObject2 == null)
            {
              localObject3 = localView;
              localObject4 = localObject1;
            }
          }
          else if ((this.ᗀ.ᐡ(localView) >= k) || (this.ᗀ.ᐪ(localView) < j))
          {
            localObject3 = localObject2;
            localObject4 = localObject1;
            if (localObject1 == null)
            {
              localObject3 = localObject2;
              localObject4 = localView;
            }
          }
          else
          {
            return localView;
          }
        }
      }
      paramInt1 += i;
      localObject2 = localObject3;
      localObject1 = localObject4;
    }
    if (localObject1 != null) {
      return localObject1;
    }
    return localObject2;
  }
  
  private int ʽ(RecyclerView.ˉ paramˉ)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    Ǐ();
    氵 local氵 = this.ᗀ;
    boolean bool;
    if (!this.Ḽ) {
      bool = true;
    } else {
      bool = false;
    }
    View localView = ˎ(bool, true);
    if (!this.Ḽ) {
      bool = true;
    } else {
      bool = false;
    }
    return ǀ.ˊ(paramˉ, local氵, localView, ˏ(bool, true), this, this.Ḽ, this.Ḟ);
  }
  
  private View ʾ(RecyclerView.ˉ paramˉ)
  {
    if (this.Ḟ) {
      return ﹾ(paramˉ.getItemCount());
    }
    return ɩ(paramˉ.getItemCount());
  }
  
  private View ʿ(RecyclerView.ˉ paramˉ)
  {
    if (this.Ḟ) {
      return ɩ(paramˉ.getItemCount());
    }
    return ﹾ(paramˉ.getItemCount());
  }
  
  private int ˊ(int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, boolean paramBoolean)
  {
    int i = this.ᗀ.ᔥ() - paramInt;
    if (i > 0) {
      i = -ˎ(-i, paramʾ, paramˉ);
    } else {
      return 0;
    }
    if (paramBoolean)
    {
      paramInt = this.ᗀ.ᔥ() - (paramInt + i);
      if (paramInt > 0)
      {
        this.ᗀ.ʸ(paramInt);
        return paramInt + i;
      }
    }
    return i;
  }
  
  private void ˊ(int paramInt1, int paramInt2, boolean paramBoolean, RecyclerView.ˉ paramˉ)
  {
    this.ᖺ.爫 = ˊ(paramˉ);
    this.ᖺ.丫 = paramInt1;
    LinearLayoutManager.ˋ localˋ;
    if (paramInt1 == 1)
    {
      paramˉ = this.ᖺ;
      paramˉ.爫 += this.ᗀ.ᴗ();
      paramˉ = Ȋ();
      localˋ = this.ᖺ;
      if (this.Ḟ) {
        paramInt1 = -1;
      } else {
        paramInt1 = 1;
      }
      localˋ.ヶ = paramInt1;
      this.ᖺ.ヮ = (ˣ(paramˉ) + this.ᖺ.ヶ);
      this.ᖺ.ḯ = this.ᗀ.ᐪ(paramˉ);
      paramInt1 = this.ᗀ.ᐪ(paramˉ) - this.ᗀ.ᔥ();
    }
    else
    {
      paramˉ = ǐ();
      localˋ = this.ᖺ;
      localˋ.爫 += this.ᗀ.ᓴ();
      localˋ = this.ᖺ;
      if (this.Ḟ) {
        paramInt1 = 1;
      } else {
        paramInt1 = -1;
      }
      localˋ.ヶ = paramInt1;
      this.ᖺ.ヮ = (ˣ(paramˉ) + this.ᖺ.ヶ);
      this.ᖺ.ḯ = this.ᗀ.ᐡ(paramˉ);
      paramInt1 = -this.ᗀ.ᐡ(paramˉ) + this.ᗀ.ᓴ();
    }
    this.ᖺ.リ = paramInt2;
    if (paramBoolean)
    {
      paramˉ = this.ᖺ;
      paramˉ.リ -= paramInt1;
    }
    this.ᖺ.乁 = paramInt1;
  }
  
  private void ˊ(if paramif)
  {
    ʳ(paramif.Ύ, paramif.K);
  }
  
  private void ˊ(RecyclerView.ʾ paramʾ, int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    int j = getChildCount();
    View localView;
    if (this.Ḟ)
    {
      i = j - 1;
      while (i >= 0)
      {
        localView = getChildAt(i);
        if (this.ᗀ.ᐪ(localView) > paramInt)
        {
          ˊ(paramʾ, j - 1, i);
          return;
        }
        i -= 1;
      }
      return;
    }
    int i = 0;
    while (i < j)
    {
      localView = getChildAt(i);
      if (this.ᗀ.ᐪ(localView) > paramInt)
      {
        ˊ(paramʾ, 0, i);
        return;
      }
      i += 1;
    }
  }
  
  private void ˊ(RecyclerView.ʾ paramʾ, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return;
    }
    if (paramInt2 > paramInt1)
    {
      paramInt2 -= 1;
      while (paramInt2 >= paramInt1)
      {
        ˊ(paramInt2, paramʾ);
        paramInt2 -= 1;
      }
      return;
    }
    while (paramInt1 > paramInt2)
    {
      ˊ(paramInt1, paramʾ);
      paramInt1 -= 1;
    }
  }
  
  private void ˊ(RecyclerView.ʾ paramʾ, LinearLayoutManager.ˋ paramˋ)
  {
    if (!paramˋ.ト) {
      return;
    }
    if (paramˋ.丫 == -1)
    {
      ˋ(paramʾ, paramˋ.乁);
      return;
    }
    ˊ(paramʾ, paramˋ.乁);
  }
  
  private void ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, int paramInt1, int paramInt2)
  {
    if ((!paramˉ.ઽ()) || (getChildCount() == 0) || (paramˉ.ڏ()) || (!ד())) {
      return;
    }
    int k = 0;
    int i = 0;
    Object localObject = paramʾ.с();
    int n = ((List)localObject).size();
    int i1 = ˣ(getChildAt(0));
    int j = 0;
    while (j < n)
    {
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)((List)localObject).get(j);
      int i2;
      if (localˑ.getLayoutPosition() < i1) {
        i2 = 1;
      } else {
        i2 = 0;
      }
      int m;
      if (i2 != this.Ḟ) {
        m = -1;
      } else {
        m = 1;
      }
      if (m == -1) {
        k += this.ᗀ.ᒽ(localˑ.bB);
      } else {
        i += this.ᗀ.ᒽ(localˑ.bB);
      }
      j += 1;
    }
    this.ᖺ.טּ = ((List)localObject);
    if (k > 0)
    {
      ʴ(ˣ(ǐ()), paramInt1);
      this.ᖺ.爫 = k;
      this.ᖺ.リ = 0;
      localObject = this.ᖺ;
      j = ((LinearLayoutManager.ˋ)localObject).ヮ;
      if (this.Ḟ) {
        paramInt1 = 1;
      } else {
        paramInt1 = -1;
      }
      ((LinearLayoutManager.ˋ)localObject).ヮ = (j + paramInt1);
      ˊ(paramʾ, this.ᖺ, paramˉ, false);
    }
    if (i > 0)
    {
      ʳ(ˣ(Ȋ()), paramInt2);
      this.ᖺ.爫 = i;
      this.ᖺ.リ = 0;
      localObject = this.ᖺ;
      paramInt2 = ((LinearLayoutManager.ˋ)localObject).ヮ;
      if (this.Ḟ) {
        paramInt1 = -1;
      } else {
        paramInt1 = 1;
      }
      ((LinearLayoutManager.ˋ)localObject).ヮ = (paramInt2 + paramInt1);
      ˊ(paramʾ, this.ᖺ, paramˉ, false);
    }
    this.ᖺ.טּ = null;
  }
  
  private int ˋ(int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, boolean paramBoolean)
  {
    int i = paramInt - this.ᗀ.ᓴ();
    if (i > 0) {
      i = -ˎ(i, paramʾ, paramˉ);
    } else {
      return 0;
    }
    if (paramBoolean)
    {
      paramInt = paramInt + i - this.ᗀ.ᓴ();
      if (paramInt > 0)
      {
        this.ᗀ.ʸ(-paramInt);
        return i - paramInt;
      }
    }
    return i;
  }
  
  private void ˋ(if paramif)
  {
    ʴ(paramif.Ύ, paramif.K);
  }
  
  private void ˋ(RecyclerView.ʾ paramʾ, int paramInt)
  {
    int i = getChildCount();
    if (paramInt < 0) {
      return;
    }
    int j = this.ᗀ.getEnd() - paramInt;
    View localView;
    if (this.Ḟ)
    {
      paramInt = 0;
      while (paramInt < i)
      {
        localView = getChildAt(paramInt);
        if (this.ᗀ.ᐡ(localView) < j)
        {
          ˊ(paramʾ, 0, paramInt);
          return;
        }
        paramInt += 1;
      }
      return;
    }
    paramInt = i - 1;
    while (paramInt >= 0)
    {
      localView = getChildAt(paramInt);
      if (this.ᗀ.ᐡ(localView) < j)
      {
        ˊ(paramʾ, i - 1, paramInt);
        return;
      }
      paramInt -= 1;
    }
  }
  
  private void ˋ(RecyclerView.ˉ paramˉ, if paramif)
  {
    if (ˏ(paramˉ, paramif)) {
      return;
    }
    if (ˎ(paramˉ, paramif)) {
      return;
    }
    paramif.ױ();
    int i;
    if (this.Ḹ) {
      i = paramˉ.getItemCount() - 1;
    } else {
      i = 0;
    }
    paramif.Ύ = i;
  }
  
  private View ˎ(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.Ḟ) {
      return ˊ(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
    }
    return ˊ(0, getChildCount(), paramBoolean1, paramBoolean2);
  }
  
  private boolean ˎ(RecyclerView.ˉ paramˉ, if paramif)
  {
    if (getChildCount() == 0) {
      return false;
    }
    View localView = getFocusedChild();
    if ((localView != null) && (paramif.ˊ(localView, paramˉ))) {
      return true;
    }
    if (this.ᘥ != this.Ḹ) {
      return false;
    }
    if (paramif.Ⅽ) {
      localView = ʾ(paramˉ);
    } else {
      localView = ʿ(paramˉ);
    }
    if (localView != null)
    {
      paramif.ᐟ(localView);
      if ((!paramˉ.ڏ()) && (ד()))
      {
        int i;
        if ((this.ᗀ.ᐡ(localView) >= this.ᗀ.ᔥ()) || (this.ᗀ.ᐪ(localView) < this.ᗀ.ᓴ())) {
          i = 1;
        } else {
          i = 0;
        }
        if (i != 0)
        {
          if (paramif.Ⅽ) {
            i = this.ᗀ.ᔥ();
          } else {
            i = this.ᗀ.ᓴ();
          }
          paramif.K = i;
        }
      }
      return true;
    }
    return false;
  }
  
  private View ˏ(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.Ḟ) {
      return ˊ(0, getChildCount(), paramBoolean1, paramBoolean2);
    }
    return ˊ(getChildCount() - 1, -1, paramBoolean1, paramBoolean2);
  }
  
  private boolean ˏ(RecyclerView.ˉ paramˉ, if paramif)
  {
    if ((paramˉ.ڏ()) || (this.Ṿ == -1)) {
      return false;
    }
    if ((this.Ṿ < 0) || (this.Ṿ >= paramˉ.getItemCount()))
    {
      this.Ṿ = -1;
      this.Ὑ = -2147483648;
      return false;
    }
    paramif.Ύ = this.Ṿ;
    if ((this.Ῡ != null) && (this.Ῡ.ۃ()))
    {
      paramif.Ⅽ = this.Ῡ.ﭖ;
      if (paramif.Ⅽ) {
        paramif.K = (this.ᗀ.ᔥ() - this.Ῡ.ףּ);
      } else {
        paramif.K = (this.ᗀ.ᓴ() + this.Ῡ.ףּ);
      }
      return true;
    }
    if (this.Ὑ == -2147483648)
    {
      paramˉ = ﯨ(this.Ṿ);
      int i;
      if (paramˉ != null)
      {
        if (this.ᗀ.ᒽ(paramˉ) > this.ᗀ.ᖦ())
        {
          paramif.ױ();
          return true;
        }
        if (this.ᗀ.ᐡ(paramˉ) - this.ᗀ.ᓴ() < 0)
        {
          paramif.K = this.ᗀ.ᓴ();
          paramif.Ⅽ = false;
          return true;
        }
        if (this.ᗀ.ᔥ() - this.ᗀ.ᐪ(paramˉ) < 0)
        {
          paramif.K = this.ᗀ.ᔥ();
          paramif.Ⅽ = true;
          return true;
        }
        if (paramif.Ⅽ) {
          i = this.ᗀ.ᐪ(paramˉ) + this.ᗀ.ᓱ();
        } else {
          i = this.ᗀ.ᐡ(paramˉ);
        }
        paramif.K = i;
      }
      else
      {
        if (getChildCount() > 0)
        {
          i = ˣ(getChildAt(0));
          boolean bool;
          if (this.Ṿ < i) {
            bool = true;
          } else {
            bool = false;
          }
          if (bool == this.Ḟ) {
            bool = true;
          } else {
            bool = false;
          }
          paramif.Ⅽ = bool;
        }
        paramif.ױ();
      }
      return true;
    }
    paramif.Ⅽ = this.Ḟ;
    if (this.Ḟ) {
      paramif.K = (this.ᗀ.ᔥ() - this.Ὑ);
    } else {
      paramif.K = (this.ᗀ.ᓴ() + this.Ὑ);
    }
    return true;
  }
  
  private int ͺ(RecyclerView.ˉ paramˉ)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    Ǐ();
    氵 local氵 = this.ᗀ;
    boolean bool;
    if (!this.Ḽ) {
      bool = true;
    } else {
      bool = false;
    }
    View localView = ˎ(bool, true);
    if (!this.Ḽ) {
      bool = true;
    } else {
      bool = false;
    }
    return ǀ.ˊ(paramˉ, local氵, localView, ˏ(bool, true), this, this.Ḽ);
  }
  
  private int ι(RecyclerView.ˉ paramˉ)
  {
    if (getChildCount() == 0) {
      return 0;
    }
    Ǐ();
    氵 local氵 = this.ᗀ;
    boolean bool;
    if (!this.Ḽ) {
      bool = true;
    } else {
      bool = false;
    }
    View localView = ˎ(bool, true);
    if (!this.Ḽ) {
      bool = true;
    } else {
      bool = false;
    }
    return ǀ.ˋ(paramˉ, local氵, localView, ˏ(bool, true), this, this.Ḽ);
  }
  
  private int ﹸ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
      return -1;
    case 2: 
      return 1;
    case 33: 
      if (this.ᔺ == 1) {
        return -1;
      }
      return -2147483648;
    case 130: 
      if (this.ᔺ == 1) {
        return 1;
      }
      return -2147483648;
    case 17: 
      if (this.ᔺ == 0) {
        return -1;
      }
      return -2147483648;
    case 66: 
      if (this.ᔺ == 0) {
        return 1;
      }
      return -2147483648;
    }
    return -2147483648;
  }
  
  private View ﹾ(int paramInt)
  {
    return ʼ(0, getChildCount(), paramInt);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    if (getChildCount() > 0)
    {
      paramAccessibilityEvent = ﯦ.ˊ(paramAccessibilityEvent);
      paramAccessibilityEvent.setFromIndex(ʅ());
      paramAccessibilityEvent.setToIndex(ί());
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      this.Ῡ = ((SavedState)paramParcelable);
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    if (this.Ῡ != null) {
      return new SavedState(this.Ῡ);
    }
    SavedState localSavedState = new SavedState();
    if (getChildCount() > 0)
    {
      Ǐ();
      boolean bool = this.ᘥ ^ this.Ḟ;
      localSavedState.ﭖ = bool;
      View localView;
      if (bool)
      {
        localView = Ȋ();
        localSavedState.ףּ = (this.ᗀ.ᔥ() - this.ᗀ.ᐪ(localView));
        localSavedState.סּ = ˣ(localView);
      }
      else
      {
        localView = ǐ();
        localSavedState.סּ = ˣ(localView);
        localSavedState.ףּ = (this.ᗀ.ᐡ(localView) - this.ᗀ.ᓴ());
      }
      return localSavedState;
    }
    localSavedState.৳();
    return localSavedState;
  }
  
  public void setOrientation(int paramInt)
  {
    if ((paramInt != 0) && (paramInt != 1)) {
      throw new IllegalArgumentException("invalid orientation:" + paramInt);
    }
    ˎ(null);
    if (paramInt == this.ᔺ) {
      return;
    }
    this.ᔺ = paramInt;
    this.ᗀ = null;
    requestLayout();
  }
  
  public RecyclerView.ʼ ł()
  {
    return new RecyclerView.ʼ(-2, -2);
  }
  
  public boolean ŗ()
  {
    return this.ᔺ == 0;
  }
  
  public boolean ſ()
  {
    return this.ᔺ == 1;
  }
  
  protected boolean ƚ()
  {
    return getLayoutDirection() == 1;
  }
  
  void Ǐ()
  {
    if (this.ᖺ == null) {
      this.ᖺ = new LinearLayoutManager.ˋ();
    }
    if (this.ᗀ == null) {
      this.ᗀ = 氵.ˊ(this, this.ᔺ);
    }
  }
  
  public int ʅ()
  {
    View localView = ˊ(0, getChildCount(), false, true);
    if (localView == null) {
      return -1;
    }
    return ˣ(localView);
  }
  
  public int ʻ(RecyclerView.ˉ paramˉ)
  {
    return ι(paramˉ);
  }
  
  public int ʼ(RecyclerView.ˉ paramˉ)
  {
    return ι(paramˉ);
  }
  
  public int ˊ(int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    if (this.ᔺ == 1) {
      return 0;
    }
    return ˎ(paramInt, paramʾ, paramˉ);
  }
  
  int ˊ(RecyclerView.ʾ paramʾ, LinearLayoutManager.ˋ paramˋ, RecyclerView.ˉ paramˉ, boolean paramBoolean)
  {
    int k = paramˋ.リ;
    if (paramˋ.乁 != -2147483648)
    {
      if (paramˋ.リ < 0) {
        paramˋ.乁 += paramˋ.リ;
      }
      ˊ(paramʾ, paramˋ);
    }
    int i = paramˋ.リ + paramˋ.爫;
    LinearLayoutManager.ˊ localˊ = new LinearLayoutManager.ˊ();
    do
    {
      int j;
      do
      {
        if ((i <= 0) || (!paramˋ.ˈ(paramˉ))) {
          break;
        }
        localˊ.ڌ();
        ˊ(paramʾ, paramˉ, paramˋ, localˊ);
        if (localˊ.っ) {
          break;
        }
        paramˋ.ḯ += localˊ.く * paramˋ.丫;
        if ((localˊ.へ) && (this.ᖺ.טּ == null))
        {
          j = i;
          if (paramˉ.ڏ()) {}
        }
        else
        {
          paramˋ.リ -= localˊ.く;
          j = i - localˊ.く;
        }
        if (paramˋ.乁 != -2147483648)
        {
          paramˋ.乁 += localˊ.く;
          if (paramˋ.リ < 0) {
            paramˋ.乁 += paramˋ.リ;
          }
          ˊ(paramʾ, paramˋ);
        }
        i = j;
      } while (!paramBoolean);
      i = j;
    } while (!localˊ.ゥ);
    return k - paramˋ.リ;
  }
  
  protected int ˊ(RecyclerView.ˉ paramˉ)
  {
    if (paramˉ.ᓰ()) {
      return this.ᗀ.ᖦ();
    }
    return 0;
  }
  
  View ˊ(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    Ǐ();
    int j = this.ᗀ.ᓴ();
    int k = this.ᗀ.ᔥ();
    int i;
    if (paramInt2 > paramInt1) {
      i = 1;
    } else {
      i = -1;
    }
    Object localObject2;
    for (Object localObject1 = null; paramInt1 != paramInt2; localObject1 = localObject2)
    {
      View localView = getChildAt(paramInt1);
      int m = this.ᗀ.ᐡ(localView);
      int n = this.ᗀ.ᐪ(localView);
      localObject2 = localObject1;
      if (m < k)
      {
        localObject2 = localObject1;
        if (n > j) {
          if (paramBoolean1)
          {
            if ((m >= j) && (n <= k)) {
              return localView;
            }
            localObject2 = localObject1;
            if (paramBoolean2)
            {
              localObject2 = localObject1;
              if (localObject1 == null) {
                localObject2 = localView;
              }
            }
          }
          else
          {
            return localView;
          }
        }
      }
      paramInt1 += i;
    }
    return localObject1;
  }
  
  public View ˊ(View paramView, int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    Ɨ();
    if (getChildCount() == 0) {
      return null;
    }
    paramInt = ﹸ(paramInt);
    if (paramInt == -2147483648) {
      return null;
    }
    Ǐ();
    if (paramInt == -1) {
      paramView = ʿ(paramˉ);
    } else {
      paramView = ʾ(paramˉ);
    }
    if (paramView == null) {
      return null;
    }
    Ǐ();
    ˊ(paramInt, (int)(this.ᗀ.ᖦ() * 0.33F), false, paramˉ);
    this.ᖺ.乁 = -2147483648;
    this.ᖺ.ト = false;
    ˊ(paramʾ, this.ᖺ, paramˉ, true);
    if (paramInt == -1) {
      paramʾ = ǐ();
    } else {
      paramʾ = Ȋ();
    }
    if ((paramʾ == paramView) || (!paramʾ.isFocusable())) {
      return null;
    }
    return paramʾ;
  }
  
  public void ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    if ((this.Ῡ != null) && (this.Ῡ.ۃ())) {
      this.Ṿ = this.Ῡ.סּ;
    }
    Ǐ();
    this.ᖺ.ト = false;
    Ɨ();
    this.Ὺ.reset();
    this.Ὺ.Ⅽ = (this.Ḟ ^ this.Ḹ);
    ˋ(paramˉ, this.Ὺ);
    int i = ˊ(paramˉ);
    int n;
    if ((paramˉ.ᓰ()) && (paramˉ.ເ() < this.Ὺ.Ύ)) {
      n = 1;
    } else {
      n = 0;
    }
    if (n == this.Ὺ.Ⅽ)
    {
      j = 0;
    }
    else
    {
      j = i;
      i = 0;
    }
    int k = j + this.ᗀ.ᓴ();
    int m = i + this.ᗀ.ᴗ();
    i = k;
    int j = m;
    Object localObject;
    if (paramˉ.ڏ())
    {
      i = k;
      j = m;
      if (this.Ṿ != -1)
      {
        i = k;
        j = m;
        if (this.Ὑ != -2147483648)
        {
          localObject = ﯨ(this.Ṿ);
          i = k;
          j = m;
          if (localObject != null)
          {
            if (this.Ḟ)
            {
              i = this.ᗀ.ᔥ() - this.ᗀ.ᐪ((View)localObject) - this.Ὑ;
            }
            else
            {
              i = this.ᗀ.ᐡ((View)localObject);
              j = this.ᗀ.ᓴ();
              i = this.Ὑ - (i - j);
            }
            if (i > 0)
            {
              i = k + i;
              j = m;
            }
            else
            {
              j = m - i;
              i = k;
            }
          }
        }
      }
    }
    ˊ(paramˉ, this.Ὺ);
    ˋ(paramʾ);
    this.ᖺ.ﬤ = paramˉ.ڏ();
    if (this.Ὺ.Ⅽ)
    {
      ˋ(this.Ὺ);
      this.ᖺ.爫 = i;
      ˊ(paramʾ, this.ᖺ, paramˉ, false);
      k = this.ᖺ.ḯ;
      i = j;
      if (this.ᖺ.リ > 0) {
        i = j + this.ᖺ.リ;
      }
      ˊ(this.Ὺ);
      this.ᖺ.爫 = i;
      localObject = this.ᖺ;
      ((LinearLayoutManager.ˋ)localObject).ヮ += this.ᖺ.ヶ;
      ˊ(paramʾ, this.ᖺ, paramˉ, false);
      i = this.ᖺ.ḯ;
      j = k;
    }
    else
    {
      ˊ(this.Ὺ);
      this.ᖺ.爫 = j;
      ˊ(paramʾ, this.ᖺ, paramˉ, false);
      k = this.ᖺ.ḯ;
      j = i;
      if (this.ᖺ.リ > 0) {
        j = i + this.ᖺ.リ;
      }
      ˋ(this.Ὺ);
      this.ᖺ.爫 = j;
      localObject = this.ᖺ;
      ((LinearLayoutManager.ˋ)localObject).ヮ += this.ᖺ.ヶ;
      ˊ(paramʾ, this.ᖺ, paramˉ, false);
      j = this.ᖺ.ḯ;
      i = k;
    }
    k = j;
    m = i;
    if (getChildCount() > 0) {
      if ((this.Ḟ ^ this.Ḹ))
      {
        m = ˊ(i, paramʾ, paramˉ, true);
        k = j + m;
        j = ˋ(k, paramʾ, paramˉ, false);
        k += j;
        m = i + m + j;
      }
      else
      {
        k = ˋ(j, paramʾ, paramˉ, true);
        i += k;
        m = ˊ(i, paramʾ, paramˉ, false);
        k = j + k + m;
        m = i + m;
      }
    }
    ˊ(paramʾ, paramˉ, k, m);
    if (!paramˉ.ڏ())
    {
      this.Ṿ = -1;
      this.Ὑ = -2147483648;
      this.ᗀ.ᓯ();
    }
    this.ᘥ = this.Ḹ;
    this.Ῡ = null;
  }
  
  void ˊ(RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ, LinearLayoutManager.ˋ paramˋ, LinearLayoutManager.ˊ paramˊ)
  {
    paramʾ = paramˋ.ˊ(paramʾ);
    if (paramʾ == null)
    {
      paramˊ.っ = true;
      return;
    }
    paramˉ = (RecyclerView.ʼ)paramʾ.getLayoutParams();
    boolean bool2;
    boolean bool1;
    if (paramˋ.טּ == null)
    {
      bool2 = this.Ḟ;
      if (paramˋ.丫 == -1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if (bool2 == bool1) {
        addView(paramʾ);
      } else {
        addView(paramʾ, 0);
      }
    }
    else
    {
      bool2 = this.Ḟ;
      if (paramˋ.丫 == -1) {
        bool1 = true;
      } else {
        bool1 = false;
      }
      if (bool2 == bool1) {
        ː(paramʾ);
      } else {
        ʿ(paramʾ, 0);
      }
    }
    ᐝ(paramʾ, 0, 0);
    paramˊ.く = this.ᗀ.ᒽ(paramʾ);
    int k;
    int i;
    int m;
    int j;
    if (this.ᔺ == 1)
    {
      if (ƚ())
      {
        k = getWidth() - getPaddingRight();
        i = k - this.ᗀ.ᔇ(paramʾ);
      }
      else
      {
        i = getPaddingLeft();
        k = i + this.ᗀ.ᔇ(paramʾ);
      }
      if (paramˋ.丫 == -1)
      {
        m = paramˋ.ḯ;
        j = paramˋ.ḯ - paramˊ.く;
      }
      else
      {
        j = paramˋ.ḯ;
        m = paramˋ.ḯ + paramˊ.く;
      }
    }
    else
    {
      j = getPaddingTop();
      m = j + this.ᗀ.ᔇ(paramʾ);
      if (paramˋ.丫 == -1)
      {
        k = paramˋ.ḯ;
        i = paramˋ.ḯ - paramˊ.く;
      }
      else
      {
        i = paramˋ.ḯ;
        k = paramˋ.ḯ + paramˊ.く;
      }
    }
    ᐝ(paramʾ, paramˉ.leftMargin + i, paramˉ.topMargin + j, k - paramˉ.rightMargin, m - paramˉ.bottomMargin);
    if ((paramˉ.ϲ()) || (paramˉ.ϳ())) {
      paramˊ.へ = true;
    }
    paramˊ.ゥ = paramʾ.isFocusable();
  }
  
  void ˊ(RecyclerView.ˉ paramˉ, if paramif) {}
  
  public void ˊ(RecyclerView paramRecyclerView, RecyclerView.ʾ paramʾ)
  {
    super.ˊ(paramRecyclerView, paramʾ);
    if (this.Ῠ)
    {
      ˏ(paramʾ);
      paramʾ.clear();
    }
  }
  
  public int ˋ(int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    if (this.ᔺ == 0) {
      return 0;
    }
    return ˎ(paramInt, paramʾ, paramˉ);
  }
  
  public int ˋ(RecyclerView.ˉ paramˉ)
  {
    return ʽ(paramˉ);
  }
  
  int ˎ(int paramInt, RecyclerView.ʾ paramʾ, RecyclerView.ˉ paramˉ)
  {
    if ((getChildCount() == 0) || (paramInt == 0)) {
      return 0;
    }
    this.ᖺ.ト = true;
    Ǐ();
    int i;
    if (paramInt > 0) {
      i = 1;
    } else {
      i = -1;
    }
    int j = Math.abs(paramInt);
    ˊ(i, j, true, paramˉ);
    int k = this.ᖺ.乁 + ˊ(paramʾ, this.ᖺ, paramˉ, false);
    if (k < 0) {
      return 0;
    }
    if (j > k) {
      paramInt = i * k;
    }
    this.ᗀ.ʸ(-paramInt);
    return paramInt;
  }
  
  public int ˎ(RecyclerView.ˉ paramˉ)
  {
    return ʽ(paramˉ);
  }
  
  public void ˎ(String paramString)
  {
    if (this.Ῡ == null) {
      super.ˎ(paramString);
    }
  }
  
  public int ˏ(RecyclerView.ˉ paramˉ)
  {
    return ͺ(paramˉ);
  }
  
  public int ί()
  {
    View localView = ˊ(getChildCount() - 1, -1, false, true);
    if (localView == null) {
      return -1;
    }
    return ˣ(localView);
  }
  
  public boolean ד()
  {
    return (this.Ῡ == null) && (this.ᘥ == this.Ḹ);
  }
  
  public int ᐝ(RecyclerView.ˉ paramˉ)
  {
    return ͺ(paramˉ);
  }
  
  public void ᵎ(boolean paramBoolean)
  {
    ˎ(null);
    if (this.Ḹ == paramBoolean) {
      return;
    }
    this.Ḹ = paramBoolean;
    requestLayout();
  }
  
  public void ᵔ(boolean paramBoolean)
  {
    ˎ(null);
    if (paramBoolean == this.ᵆ) {
      return;
    }
    this.ᵆ = paramBoolean;
    requestLayout();
  }
  
  public View ﯨ(int paramInt)
  {
    int i = getChildCount();
    if (i == 0) {
      return null;
    }
    paramInt -= ˣ(getChildAt(0));
    if ((paramInt >= 0) && (paramInt < i)) {
      return getChildAt(paramInt);
    }
    return null;
  }
  
  public void ﹴ(int paramInt)
  {
    this.Ṿ = paramInt;
    this.Ὑ = -2147483648;
    if (this.Ῡ != null) {
      this.Ῡ.৳();
    }
    requestLayout();
  }
  
  public static class SavedState
    implements Parcelable
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new ῐ();
    int סּ;
    int ףּ;
    boolean ﭖ;
    
    public SavedState() {}
    
    public SavedState(Parcel paramParcel)
    {
      this.סּ = paramParcel.readInt();
      this.ףּ = paramParcel.readInt();
      boolean bool;
      if (paramParcel.readInt() == 1) {
        bool = true;
      } else {
        bool = false;
      }
      this.ﭖ = bool;
    }
    
    public SavedState(SavedState paramSavedState)
    {
      this.סּ = paramSavedState.סּ;
      this.ףּ = paramSavedState.ףּ;
      this.ﭖ = paramSavedState.ﭖ;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.סּ);
      paramParcel.writeInt(this.ףּ);
      if (this.ﭖ) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      paramParcel.writeInt(paramInt);
    }
    
    boolean ۃ()
    {
      return this.סּ >= 0;
    }
    
    void ৳()
    {
      this.סּ = -1;
    }
  }
  
  class if
  {
    int Ύ;
    int K;
    boolean Ⅽ;
    
    if() {}
    
    void reset()
    {
      this.Ύ = -1;
      this.K = -2147483648;
      this.Ⅽ = false;
    }
    
    public String toString()
    {
      return "AnchorInfo{mPosition=" + this.Ύ + ", mCoordinate=" + this.K + ", mLayoutFromEnd=" + this.Ⅽ + '}';
    }
    
    public boolean ˊ(View paramView, RecyclerView.ˉ paramˉ)
    {
      RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
      if ((!localʼ.ϲ()) && (localʼ.Ј() >= 0) && (localʼ.Ј() < paramˉ.getItemCount()))
      {
        ᐟ(paramView);
        return true;
      }
      return false;
    }
    
    void ױ()
    {
      int i;
      if (this.Ⅽ) {
        i = LinearLayoutManager.this.ᗀ.ᔥ();
      } else {
        i = LinearLayoutManager.this.ᗀ.ᓴ();
      }
      this.K = i;
    }
    
    public void ᐟ(View paramView)
    {
      if (this.Ⅽ) {
        this.K = (LinearLayoutManager.this.ᗀ.ᐪ(paramView) + LinearLayoutManager.this.ᗀ.ᓱ());
      } else {
        this.K = LinearLayoutManager.this.ᗀ.ᐡ(paramView);
      }
      this.Ύ = LinearLayoutManager.this.ˣ(paramView);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager
 * JD-Core Version:    0.7.0.1
 */