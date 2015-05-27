package o;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

public class ŀ
  extends ListView
{
  private static final int[] ڽ = { 0 };
  final Rect ܐ = new Rect();
  private Field ܫ;
  private ŀ.if ट;
  int ｬ = 0;
  int ｴ = 0;
  int ｺ = 0;
  int ﾋ = 0;
  
  public ŀ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ŀ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ŀ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    try
    {
      this.ܫ = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      this.ܫ.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    ˊ(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    ٴ(true);
    ᵁ();
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      localObject = new ŀ.if(paramDrawable);
    } else {
      localObject = null;
    }
    this.ट = ((ŀ.if)localObject);
    super.setSelector(this.ट);
    Object localObject = new Rect();
    if (paramDrawable != null) {
      paramDrawable.getPadding((Rect)localObject);
    }
    this.ｬ = ((Rect)localObject).left;
    this.ｴ = ((Rect)localObject).top;
    this.ｺ = ((Rect)localObject).right;
    this.ﾋ = ((Rect)localObject).bottom;
  }
  
  protected void ˊ(int paramInt, View paramView, float paramFloat1, float paramFloat2)
  {
    ˋ(paramInt, paramView);
    paramView = getSelector();
    if ((paramView != null) && (paramInt != -1)) {
      ᐪ.ˊ(paramView, paramFloat1, paramFloat2);
    }
  }
  
  protected void ˊ(Canvas paramCanvas)
  {
    if (!this.ܐ.isEmpty())
    {
      Drawable localDrawable = getSelector();
      if (localDrawable != null)
      {
        localDrawable.setBounds(this.ܐ);
        localDrawable.draw(paramCanvas);
      }
    }
  }
  
  protected void ˋ(int paramInt, View paramView)
  {
    Drawable localDrawable = getSelector();
    int i;
    if ((localDrawable != null) && (paramInt != -1)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      localDrawable.setVisible(false, false);
    }
    ˎ(paramInt, paramView);
    if (i != 0)
    {
      paramView = this.ܐ;
      float f1 = paramView.exactCenterX();
      float f2 = paramView.exactCenterY();
      boolean bool;
      if (getVisibility() == 0) {
        bool = true;
      } else {
        bool = false;
      }
      localDrawable.setVisible(bool, false);
      ᐪ.ˊ(localDrawable, f1, f2);
    }
  }
  
  public int ˎ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt2 = getListPaddingTop();
    int i = getListPaddingBottom();
    getListPaddingLeft();
    getListPaddingRight();
    paramInt3 = getDividerHeight();
    Object localObject = getDivider();
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter == null) {
      return paramInt2 + i;
    }
    paramInt2 += i;
    if ((paramInt3 <= 0) || (localObject == null)) {
      paramInt3 = 0;
    }
    int j = 0;
    localObject = null;
    int m = 0;
    int i1 = localListAdapter.getCount();
    i = 0;
    while (i < i1)
    {
      int n = localListAdapter.getItemViewType(i);
      int k = m;
      if (n != m)
      {
        localObject = null;
        k = n;
      }
      localObject = localListAdapter.getView(i, (View)localObject, this);
      ViewGroup.LayoutParams localLayoutParams = ((View)localObject).getLayoutParams();
      if ((localLayoutParams != null) && (localLayoutParams.height > 0)) {
        m = View.MeasureSpec.makeMeasureSpec(localLayoutParams.height, 1073741824);
      } else {
        m = View.MeasureSpec.makeMeasureSpec(0, 0);
      }
      ((View)localObject).measure(paramInt1, m);
      m = paramInt2;
      if (i > 0) {
        m = paramInt2 + paramInt3;
      }
      paramInt2 = m + ((View)localObject).getMeasuredHeight();
      if (paramInt2 >= paramInt4)
      {
        if ((paramInt5 >= 0) && (i > paramInt5) && (j > 0) && (paramInt2 != paramInt4)) {
          return j;
        }
        return paramInt4;
      }
      m = j;
      if (paramInt5 >= 0)
      {
        m = j;
        if (i >= paramInt5) {
          m = paramInt2;
        }
      }
      i += 1;
      j = m;
      m = k;
    }
    return paramInt2;
  }
  
  protected void ˎ(int paramInt, View paramView)
  {
    Rect localRect = this.ܐ;
    localRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    localRect.left -= this.ｬ;
    localRect.top -= this.ｴ;
    localRect.right += this.ｺ;
    localRect.bottom += this.ﾋ;
    for (;;)
    {
      try
      {
        bool = this.ܫ.getBoolean(this);
        if (paramView.isEnabled() != bool)
        {
          paramView = this.ܫ;
          if (bool) {
            break label143;
          }
          bool = true;
          paramView.set(this, Boolean.valueOf(bool));
          if (paramInt != -1) {
            refreshDrawableState();
          }
        }
        return;
      }
      catch (IllegalAccessException paramView)
      {
        paramView.printStackTrace();
        return;
      }
      label143:
      boolean bool = false;
    }
  }
  
  protected void ٴ(boolean paramBoolean)
  {
    if (this.ट != null) {
      this.ट.setEnabled(paramBoolean);
    }
  }
  
  protected void ᵁ()
  {
    Drawable localDrawable = getSelector();
    if ((localDrawable != null) && (ᵃ())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  protected boolean ᵃ()
  {
    return (ᵅ()) && (isPressed());
  }
  
  protected boolean ᵅ()
  {
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Å
 * JD-Core Version:    0.7.0.1
 */