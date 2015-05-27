package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.lang.ref.WeakReference;

public final class ᓭ
  extends View
{
  private LayoutInflater 亅;
  private int צּ = 0;
  private int בֿ;
  private WeakReference<View> ﭒ;
  private ᓭ.if ﭞ;
  
  public ᓭ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ᓭ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.ViewStubCompat, paramInt, 0);
    this.בֿ = paramContext.getResourceId(ڊ.ʽ.ViewStubCompat_android_inflatedId, -1);
    this.צּ = paramContext.getResourceId(ڊ.ʽ.ViewStubCompat_android_layout, 0);
    setId(paramContext.getResourceId(ڊ.ʽ.ViewStubCompat_android_id, -1));
    paramContext.recycle();
    setVisibility(8);
    setWillNotDraw(true);
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {}
  
  public void draw(Canvas paramCanvas) {}
  
  public View inflate()
  {
    Object localObject = getParent();
    if ((localObject != null) && ((localObject instanceof ViewGroup)))
    {
      if (this.צּ != 0)
      {
        ViewGroup localViewGroup = (ViewGroup)localObject;
        if (this.亅 != null) {
          localObject = this.亅;
        } else {
          localObject = LayoutInflater.from(getContext());
        }
        localObject = ((LayoutInflater)localObject).inflate(this.צּ, localViewGroup, false);
        if (this.בֿ != -1) {
          ((View)localObject).setId(this.בֿ);
        }
        int i = localViewGroup.indexOfChild(this);
        localViewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
        if (localLayoutParams != null) {
          localViewGroup.addView((View)localObject, i, localLayoutParams);
        } else {
          localViewGroup.addView((View)localObject, i);
        }
        this.ﭒ = new WeakReference(localObject);
        if (this.ﭞ != null) {
          this.ﭞ.ˊ(this, (View)localObject);
        }
        return localObject;
      }
      throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
    }
    throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(0, 0);
  }
  
  public void setInflatedId(int paramInt)
  {
    this.בֿ = paramInt;
  }
  
  public void setLayoutInflater(LayoutInflater paramLayoutInflater)
  {
    this.亅 = paramLayoutInflater;
  }
  
  public void setLayoutResource(int paramInt)
  {
    this.צּ = paramInt;
  }
  
  public void setOnInflateListener(ᓭ.if paramif)
  {
    this.ﭞ = paramif;
  }
  
  public void setVisibility(int paramInt)
  {
    if (this.ﭒ != null)
    {
      View localView = (View)this.ﭒ.get();
      if (localView != null) {
        localView.setVisibility(paramInt);
      } else {
        throw new IllegalStateException("setVisibility called on un-referenced view");
      }
      return;
    }
    super.setVisibility(paramInt);
    if ((paramInt == 0) || (paramInt == 4)) {
      inflate();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á­
 * JD-Core Version:    0.7.0.1
 */