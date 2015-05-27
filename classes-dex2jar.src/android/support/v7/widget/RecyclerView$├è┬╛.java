package android.support.v7.widget;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import o.ᴗ;
import o.ᵇ;
import o.ﺑ;
import o.ﾉ;

public final class RecyclerView$ʾ
{
  final ArrayList<RecyclerView.ˑ> aV = new ArrayList();
  private ArrayList<RecyclerView.ˑ> aW = null;
  final ArrayList<RecyclerView.ˑ> aX = new ArrayList();
  private final List<RecyclerView.ˑ> aY = Collections.unmodifiableList(this.aV);
  private int aZ = 2;
  private RecyclerView.ι ba;
  private RecyclerView.ˌ bb;
  
  public RecyclerView$ʾ(RecyclerView paramRecyclerView) {}
  
  private void ˋ(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i = paramViewGroup.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof ViewGroup)) {
        ˋ((ViewGroup)localView, true);
      }
      i -= 1;
    }
    if (!paramBoolean) {
      return;
    }
    if (paramViewGroup.getVisibility() == 4)
    {
      paramViewGroup.setVisibility(0);
      paramViewGroup.setVisibility(4);
      return;
    }
    i = paramViewGroup.getVisibility();
    paramViewGroup.setVisibility(4);
    paramViewGroup.setVisibility(i);
  }
  
  private void ᵎ(RecyclerView.ˑ paramˑ)
  {
    if ((paramˑ.bB instanceof ViewGroup)) {
      ˋ((ViewGroup)paramˑ.bB, false);
    }
  }
  
  private void ᵙ(View paramView)
  {
    if ((RecyclerView.ˌ(this.aB) != null) && (RecyclerView.ˌ(this.aB).isEnabled()))
    {
      if (ﺑ.ˈ(paramView) == 0) {
        ﺑ.ˏ(paramView, 1);
      }
      if (!ﺑ.ι(paramView)) {
        ﺑ.ˊ(paramView, RecyclerView.ˍ(this.aB).ⅹ());
      }
    }
  }
  
  public void clear()
  {
    this.aV.clear();
    т();
  }
  
  void setRecycledViewPool(RecyclerView.ι paramι)
  {
    if (this.ba != null) {
      this.ba.detach();
    }
    this.ba = paramι;
    if (paramι != null) {
      this.ba.ˊ(this.aB.ᵇ());
    }
  }
  
  void setViewCacheExtension(RecyclerView.ˌ paramˌ)
  {
    this.bb = paramˌ;
  }
  
  View ˉ(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= this.aB.ar.getItemCount())) {
      throw new IndexOutOfBoundsException("Invalid item position " + paramInt + "(" + paramInt + "). Item count:" + this.aB.ar.getItemCount());
    }
    int j = 0;
    Object localObject2 = null;
    if (this.aB.ar.ڏ())
    {
      localObject2 = ᕁ(paramInt);
      if (localObject2 != null) {
        j = 1;
      } else {
        j = 0;
      }
    }
    int i = j;
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = ˎ(paramInt, -1, paramBoolean);
      i = j;
      localObject1 = localObject2;
      if (localObject2 != null) {
        if (!ᴵ((RecyclerView.ˑ)localObject2))
        {
          if (!paramBoolean)
          {
            ((RecyclerView.ˑ)localObject2).addFlags(4);
            if (((RecyclerView.ˑ)localObject2).ᴛ())
            {
              this.aB.removeDetachedView(((RecyclerView.ˑ)localObject2).bB, false);
              ((RecyclerView.ˑ)localObject2).ᴺ();
            }
            else if (((RecyclerView.ˑ)localObject2).ᵈ())
            {
              ((RecyclerView.ˑ)localObject2).ᵑ();
            }
            ᵔ((RecyclerView.ˑ)localObject2);
          }
          localObject1 = null;
          i = j;
        }
        else
        {
          i = 1;
          localObject1 = localObject2;
        }
      }
    }
    int k = i;
    localObject2 = localObject1;
    if (localObject1 == null)
    {
      int m = this.aB.J.ᐤ(paramInt);
      if ((m < 0) || (m >= RecyclerView.ʻ(this.aB).getItemCount())) {
        throw new IndexOutOfBoundsException("Inconsistency detected. Invalid item position " + paramInt + "(offset:" + m + ")." + "state:" + this.aB.ar.getItemCount());
      }
      k = RecyclerView.ʻ(this.aB).getItemViewType(m);
      j = i;
      localObject2 = localObject1;
      if (RecyclerView.ʻ(this.aB).hasStableIds())
      {
        localObject1 = ˊ(RecyclerView.ʻ(this.aB).getItemId(m), k, paramBoolean);
        j = i;
        localObject2 = localObject1;
        if (localObject1 != null)
        {
          ((RecyclerView.ˑ)localObject1).Ύ = m;
          j = 1;
          localObject2 = localObject1;
        }
      }
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (this.bb != null)
        {
          localObject3 = this.bb.ˋ(this, paramInt, k);
          localObject1 = localObject2;
          if (localObject3 != null)
          {
            localObject2 = this.aB.ᵣ((View)localObject3);
            if (localObject2 == null) {
              throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
            }
            localObject1 = localObject2;
            if (((RecyclerView.ˑ)localObject2).ᴐ()) {
              throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
            }
          }
        }
      }
      Object localObject3 = localObject1;
      if (localObject1 == null)
      {
        localObject1 = ґ().ᐢ(RecyclerView.ʻ(this.aB).getItemViewType(m));
        localObject3 = localObject1;
        if (localObject1 != null)
        {
          ((RecyclerView.ˑ)localObject1).ڌ();
          localObject3 = localObject1;
          if (RecyclerView.ﻟ())
          {
            ᵎ((RecyclerView.ˑ)localObject1);
            localObject3 = localObject1;
          }
        }
      }
      k = j;
      localObject2 = localObject3;
      if (localObject3 == null)
      {
        localObject2 = RecyclerView.ʻ(this.aB).ˏ(this.aB, RecyclerView.ʻ(this.aB).getItemViewType(m));
        k = j;
      }
    }
    i = 0;
    if ((this.aB.ar.ڏ()) && (((RecyclerView.ˑ)localObject2).isBound()))
    {
      ((RecyclerView.ˑ)localObject2).bF = paramInt;
    }
    else if ((!((RecyclerView.ˑ)localObject2).isBound()) || (((RecyclerView.ˑ)localObject2).Ἰ()) || (((RecyclerView.ˑ)localObject2).Ḯ()))
    {
      i = this.aB.J.ᐤ(paramInt);
      RecyclerView.ʻ(this.aB).ˋ((RecyclerView.ˑ)localObject2, i);
      ᵙ(((RecyclerView.ˑ)localObject2).bB);
      j = 1;
      i = j;
      if (this.aB.ar.ڏ())
      {
        ((RecyclerView.ˑ)localObject2).bF = paramInt;
        i = j;
      }
    }
    localObject1 = ((RecyclerView.ˑ)localObject2).bB.getLayoutParams();
    if (localObject1 == null)
    {
      localObject1 = (RecyclerView.ʼ)this.aB.generateDefaultLayoutParams();
      ((RecyclerView.ˑ)localObject2).bB.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    }
    else if (!this.aB.checkLayoutParams((ViewGroup.LayoutParams)localObject1))
    {
      localObject1 = (RecyclerView.ʼ)this.aB.generateLayoutParams((ViewGroup.LayoutParams)localObject1);
      ((RecyclerView.ˑ)localObject2).bB.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    }
    else
    {
      localObject1 = (RecyclerView.ʼ)localObject1;
    }
    ((RecyclerView.ʼ)localObject1).aO = ((RecyclerView.ˑ)localObject2);
    if ((k != 0) && (i != 0)) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    ((RecyclerView.ʼ)localObject1).aR = paramBoolean;
    return ((RecyclerView.ˑ)localObject2).bB;
  }
  
  RecyclerView.ˑ ˊ(long paramLong, int paramInt, boolean paramBoolean)
  {
    int i = this.aV.size() - 1;
    RecyclerView.ˑ localˑ;
    while (i >= 0)
    {
      localˑ = (RecyclerView.ˑ)this.aV.get(i);
      if ((localˑ.getItemId() == paramLong) && (!localˑ.ᵈ()))
      {
        if (paramInt == localˑ.getItemViewType())
        {
          localˑ.addFlags(32);
          if ((localˑ.isRemoved()) && (!this.aB.ar.ڏ())) {
            localˑ.setFlags(2, 14);
          }
          return localˑ;
        }
        if (!paramBoolean)
        {
          this.aV.remove(i);
          this.aB.removeDetachedView(localˑ.bB, false);
          ᵥ(localˑ.bB);
        }
      }
      i -= 1;
    }
    i = this.aX.size() - 1;
    while (i >= 0)
    {
      localˑ = (RecyclerView.ˑ)this.aX.get(i);
      if (localˑ.getItemId() == paramLong)
      {
        if (paramInt == localˑ.getItemViewType())
        {
          if (!paramBoolean) {
            this.aX.remove(i);
          }
          return localˑ;
        }
        if (!paramBoolean) {
          ᔊ(i);
        }
      }
      i -= 1;
    }
    return null;
  }
  
  void ˊ(RecyclerView.if paramif1, RecyclerView.if paramif2, boolean paramBoolean)
  {
    clear();
    ґ().ˊ(paramif1, paramif2, paramBoolean);
  }
  
  void ˋ(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i = this.aX.size() - 1;
    while (i >= 0)
    {
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)this.aX.get(i);
      if (localˑ != null) {
        if (localˑ.getLayoutPosition() >= paramInt1 + paramInt2) {
          localˑ.ˌ(-paramInt2, paramBoolean);
        } else if (localˑ.getLayoutPosition() >= paramInt1) {
          ᔊ(i);
        }
      }
      i -= 1;
    }
  }
  
  RecyclerView.ˑ ˎ(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = this.aV.size();
    int i = 0;
    Object localObject;
    while (i < j)
    {
      localObject = (RecyclerView.ˑ)this.aV.get(i);
      if ((!((RecyclerView.ˑ)localObject).ᵈ()) && (((RecyclerView.ˑ)localObject).getLayoutPosition() == paramInt1) && (!((RecyclerView.ˑ)localObject).Ḯ()) && ((RecyclerView.ˉ.ˑ(this.aB.ar)) || (!((RecyclerView.ˑ)localObject).isRemoved())))
      {
        if ((paramInt2 != -1) && (((RecyclerView.ˑ)localObject).getItemViewType() != paramInt2))
        {
          Log.e("RecyclerView", "Scrap view for position " + paramInt1 + " isn't dirty but has" + " wrong view type! (found " + ((RecyclerView.ˑ)localObject).getItemViewType() + " but expected " + paramInt2 + ")");
          break;
        }
        ((RecyclerView.ˑ)localObject).addFlags(32);
        return localObject;
      }
      i += 1;
    }
    if (!paramBoolean)
    {
      localObject = this.aB.K.ᵢ(paramInt1, paramInt2);
      if (localObject != null) {
        this.aB.ai.ᐝ(this.aB.ᵣ((View)localObject));
      }
    }
    i = this.aX.size();
    paramInt2 = 0;
    while (paramInt2 < i)
    {
      localObject = (RecyclerView.ˑ)this.aX.get(paramInt2);
      if ((!((RecyclerView.ˑ)localObject).Ḯ()) && (((RecyclerView.ˑ)localObject).getLayoutPosition() == paramInt1))
      {
        if (!paramBoolean) {
          this.aX.remove(paramInt2);
        }
        return localObject;
      }
      paramInt2 += 1;
    }
    return null;
  }
  
  public List<RecyclerView.ˑ> с()
  {
    return this.aY;
  }
  
  void т()
  {
    int i = this.aX.size() - 1;
    while (i >= 0)
    {
      ᔊ(i);
      i -= 1;
    }
    this.aX.clear();
  }
  
  int х()
  {
    return this.aV.size();
  }
  
  void ј()
  {
    this.aV.clear();
  }
  
  RecyclerView.ι ґ()
  {
    if (this.ba == null) {
      this.ba = new RecyclerView.ι();
    }
    return this.ba;
  }
  
  void ך()
  {
    int j = this.aX.size();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)this.aX.get(i);
      if (localˑ != null) {
        localˑ.addFlags(512);
      }
      i += 1;
    }
  }
  
  void ᐩ(int paramInt1, int paramInt2)
  {
    int i;
    int j;
    int k;
    if (paramInt1 < paramInt2)
    {
      i = paramInt1;
      j = paramInt2;
      k = -1;
    }
    else
    {
      i = paramInt2;
      j = paramInt1;
      k = 1;
    }
    int n = this.aX.size();
    int m = 0;
    while (m < n)
    {
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)this.aX.get(m);
      if ((localˑ != null) && (localˑ.Ύ >= i) && (localˑ.Ύ <= j)) {
        if (localˑ.Ύ == paramInt1) {
          localˑ.ˌ(paramInt2 - paramInt1, false);
        } else {
          localˑ.ˌ(k, false);
        }
      }
      m += 1;
    }
  }
  
  void ᑊ(int paramInt1, int paramInt2)
  {
    int j = this.aX.size();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)this.aX.get(i);
      if ((localˑ != null) && (localˑ.getLayoutPosition() >= paramInt1)) {
        localˑ.ˌ(paramInt2, true);
      }
      i += 1;
    }
  }
  
  public void ᔅ(int paramInt)
  {
    this.aZ = paramInt;
    int i = this.aX.size() - 1;
    while ((i >= 0) && (this.aX.size() > paramInt))
    {
      ᔊ(i);
      i -= 1;
    }
  }
  
  public View ᔉ(int paramInt)
  {
    return ˉ(paramInt, false);
  }
  
  void ᔊ(int paramInt)
  {
    ᵢ((RecyclerView.ˑ)this.aX.get(paramInt));
    this.aX.remove(paramInt);
  }
  
  View ᔋ(int paramInt)
  {
    return ((RecyclerView.ˑ)this.aV.get(paramInt)).bB;
  }
  
  void ᕀ(int paramInt1, int paramInt2)
  {
    int j = this.aX.size();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)this.aX.get(i);
      if (localˑ != null)
      {
        int k = localˑ.getLayoutPosition();
        if ((k >= paramInt1) && (k < paramInt1 + paramInt2)) {
          localˑ.addFlags(2);
        }
      }
      i += 1;
    }
  }
  
  RecyclerView.ˑ ᕁ(int paramInt)
  {
    int j;
    if (this.aW != null)
    {
      j = this.aW.size();
      if (j != 0) {}
    }
    else
    {
      return null;
    }
    int i = 0;
    RecyclerView.ˑ localˑ;
    while (i < j)
    {
      localˑ = (RecyclerView.ˑ)this.aW.get(i);
      if ((!localˑ.ᵈ()) && (localˑ.getLayoutPosition() == paramInt))
      {
        localˑ.addFlags(32);
        return localˑ;
      }
      i += 1;
    }
    if (RecyclerView.ʻ(this.aB).hasStableIds())
    {
      paramInt = this.aB.J.ᐤ(paramInt);
      if ((paramInt > 0) && (paramInt < RecyclerView.ʻ(this.aB).getItemCount()))
      {
        long l = RecyclerView.ʻ(this.aB).getItemId(paramInt);
        paramInt = 0;
        while (paramInt < j)
        {
          localˑ = (RecyclerView.ˑ)this.aW.get(paramInt);
          if ((!localˑ.ᵈ()) && (localˑ.getItemId() == l))
          {
            localˑ.addFlags(32);
            return localˑ;
          }
          paramInt += 1;
        }
      }
    }
    return null;
  }
  
  boolean ᴵ(RecyclerView.ˑ paramˑ)
  {
    if (paramˑ.isRemoved()) {
      return true;
    }
    if ((paramˑ.Ύ < 0) || (paramˑ.Ύ >= RecyclerView.ʻ(this.aB).getItemCount())) {
      throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + paramˑ);
    }
    if ((!this.aB.ar.ڏ()) && (RecyclerView.ʻ(this.aB).getItemViewType(paramˑ.Ύ) != paramˑ.getItemViewType())) {
      return false;
    }
    if (RecyclerView.ʻ(this.aB).hasStableIds()) {
      return paramˑ.getItemId() == RecyclerView.ʻ(this.aB).getItemId(paramˑ.Ύ);
    }
    return true;
  }
  
  void ᵔ(RecyclerView.ˑ paramˑ)
  {
    if ((paramˑ.ᴛ()) || (paramˑ.bB.getParent() != null))
    {
      StringBuilder localStringBuilder = new StringBuilder().append("Scrapped or attached views may not be recycled. isScrap:").append(paramˑ.ᴛ()).append(" isAttached:");
      boolean bool;
      if (paramˑ.bB.getParent() != null) {
        bool = true;
      } else {
        bool = false;
      }
      throw new IllegalArgumentException(bool);
    }
    if (paramˑ.Ῐ()) {
      throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + paramˑ);
    }
    if (paramˑ.ᴐ()) {
      throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
    }
    int i;
    if ((RecyclerView.ʻ(this.aB) != null) && (RecyclerView.ˑ.ﹺ(paramˑ)) && (RecyclerView.ʻ(this.aB).ι(paramˑ))) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) || (paramˑ.Ὶ()))
    {
      int j = 0;
      i = j;
      if (!paramˑ.Ḯ()) {
        if (!RecyclerView.ˉ.ˑ(this.aB.ar))
        {
          i = j;
          if (paramˑ.isRemoved()) {}
        }
        else
        {
          i = j;
          if (!paramˑ.Ἱ())
          {
            int k = this.aX.size();
            if ((k == this.aZ) && (k > 0)) {
              ᔊ(0);
            }
            i = j;
            if (k < this.aZ)
            {
              this.aX.add(paramˑ);
              i = 1;
            }
          }
        }
      }
      if (i == 0) {
        ᵢ(paramˑ);
      }
    }
    this.aB.ar.ͺ(paramˑ);
  }
  
  public void ᵛ(View paramView)
  {
    RecyclerView.ˑ localˑ = RecyclerView.ᗮ(paramView);
    if (localˑ.Ῐ()) {
      this.aB.removeDetachedView(paramView, false);
    }
    if (localˑ.ᴛ()) {
      localˑ.ᴺ();
    } else if (localˑ.ᵈ()) {
      localˑ.ᵑ();
    }
    ᵔ(localˑ);
  }
  
  void ᵢ(RecyclerView.ˑ paramˑ)
  {
    ﺑ.ˊ(paramˑ.bB, null);
    ґ().ٴ(paramˑ);
    ﹶ(paramˑ);
  }
  
  void ᵥ(View paramView)
  {
    paramView = RecyclerView.ᗮ(paramView);
    RecyclerView.ˑ.ˊ(paramView, null);
    paramView.ᵑ();
    ᵔ(paramView);
  }
  
  void ⁱ(RecyclerView.ˑ paramˑ)
  {
    if ((!paramˑ.Ἱ()) || (!RecyclerView.ʼ(this.aB)) || (this.aW == null)) {
      this.aV.remove(paramˑ);
    } else {
      this.aW.remove(paramˑ);
    }
    RecyclerView.ˑ.ˊ(paramˑ, null);
    paramˑ.ᵑ();
  }
  
  void 灬()
  {
    int j = this.aX.size();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ʼ localʼ = (RecyclerView.ʼ)((RecyclerView.ˑ)this.aX.get(i)).bB.getLayoutParams();
      if (localʼ != null) {
        localʼ.aQ = true;
      }
      i += 1;
    }
  }
  
  void ﮂ()
  {
    int j = this.aX.size();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.ˑ)this.aX.get(i)).ᕻ();
      i += 1;
    }
    j = this.aV.size();
    i = 0;
    while (i < j)
    {
      ((RecyclerView.ˑ)this.aV.get(i)).ᕻ();
      i += 1;
    }
    if (this.aW != null)
    {
      j = this.aW.size();
      i = 0;
      while (i < j)
      {
        ((RecyclerView.ˑ)this.aW.get(i)).ᕻ();
        i += 1;
      }
    }
  }
  
  void ﯨ(View paramView)
  {
    paramView = RecyclerView.ᗮ(paramView);
    paramView.ʻ(this);
    if ((!paramView.Ἱ()) || (!RecyclerView.ʼ(this.aB)))
    {
      if ((paramView.Ḯ()) && (!paramView.isRemoved()) && (!RecyclerView.ʻ(this.aB).hasStableIds())) {
        throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
      }
      this.aV.add(paramView);
      return;
    }
    if (this.aW == null) {
      this.aW = new ArrayList();
    }
    this.aW.add(paramView);
  }
  
  void ﹶ(RecyclerView.ˑ paramˑ)
  {
    if (RecyclerView.ˑ(this.aB) != null) {
      RecyclerView.ˑ(this.aB).ͺ(paramˑ);
    }
    if (RecyclerView.ʻ(this.aB) != null) {
      RecyclerView.ʻ(this.aB).ͺ(paramˑ);
    }
    if (this.aB.ar != null) {
      this.aB.ar.ͺ(paramˑ);
    }
  }
  
  void ﺋ()
  {
    if ((RecyclerView.ʻ(this.aB) != null) && (RecyclerView.ʻ(this.aB).hasStableIds()))
    {
      int j = this.aX.size();
      int i = 0;
      while (i < j)
      {
        RecyclerView.ˑ localˑ = (RecyclerView.ˑ)this.aX.get(i);
        if (localˑ != null) {
          localˑ.addFlags(6);
        }
        i += 1;
      }
      return;
    }
    т();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.RecyclerView.Ê¾
 * JD-Core Version:    0.7.0.1
 */