package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

class ƚ$ˋ
  extends ί
  implements View.OnLongClickListener
{
  private ImageView ŧ;
  private View ν;
  private final int[] ไ = { 16842964 };
  private ذ.ˊ Ⴡ;
  private TextView ძ;
  
  public ƚ$ˋ(ƚ paramƚ, Context paramContext, ذ.ˊ paramˊ, boolean paramBoolean)
  {
    super(paramContext, null, ڊ.if.actionBarTabStyle);
    this.Ⴡ = paramˊ;
    paramƚ = ๅ.ˊ(paramContext, null, this.ไ, ڊ.if.actionBarTabStyle, 0);
    if (paramƚ.hasValue(0)) {
      setBackgroundDrawable(paramƚ.getDrawable(0));
    }
    paramƚ.recycle();
    if (paramBoolean) {
      setGravity(8388627);
    }
    update();
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ذ.ˊ.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (Build.VERSION.SDK_INT >= 14) {
      paramAccessibilityNodeInfo.setClassName(ذ.ˊ.class.getName());
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = ((Context)localObject).getResources().getDisplayMetrics().widthPixels;
    localObject = Toast.makeText((Context)localObject, this.Ⴡ.getContentDescription(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.โ.ป > 0) && (getMeasuredWidth() > this.โ.ป)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.โ.ป, 1073741824), paramInt2);
    }
  }
  
  public void setSelected(boolean paramBoolean)
  {
    int i;
    if (isSelected() != paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    super.setSelected(paramBoolean);
    if ((i != 0) && (paramBoolean)) {
      sendAccessibilityEvent(4);
    }
  }
  
  public void update()
  {
    Object localObject1 = this.Ⴡ;
    Object localObject2 = ((ذ.ˊ)localObject1).getCustomView();
    if (localObject2 != null)
    {
      localObject1 = ((View)localObject2).getParent();
      if (localObject1 != this)
      {
        if (localObject1 != null) {
          ((ViewGroup)localObject1).removeView((View)localObject2);
        }
        addView((View)localObject2);
      }
      this.ν = ((View)localObject2);
      if (this.ძ != null) {
        this.ძ.setVisibility(8);
      }
      if (this.ŧ != null)
      {
        this.ŧ.setVisibility(8);
        this.ŧ.setImageDrawable(null);
      }
      return;
    }
    if (this.ν != null)
    {
      removeView(this.ν);
      this.ν = null;
    }
    Object localObject3 = ((ذ.ˊ)localObject1).getIcon();
    localObject2 = ((ذ.ˊ)localObject1).getText();
    Object localObject4;
    if (localObject3 != null)
    {
      if (this.ŧ == null)
      {
        localObject4 = new ImageView(getContext());
        ί.if localif = new ί.if(-2, -2);
        localif.gravity = 16;
        ((ImageView)localObject4).setLayoutParams(localif);
        addView((View)localObject4, 0);
        this.ŧ = ((ImageView)localObject4);
      }
      this.ŧ.setImageDrawable((Drawable)localObject3);
      this.ŧ.setVisibility(0);
    }
    else if (this.ŧ != null)
    {
      this.ŧ.setVisibility(8);
      this.ŧ.setImageDrawable(null);
    }
    int i;
    if (!TextUtils.isEmpty((CharSequence)localObject2)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      if (this.ძ == null)
      {
        localObject3 = new ᴿ(getContext(), null, ڊ.if.actionBarTabTextStyle);
        ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
        localObject4 = new ί.if(-2, -2);
        ((ί.if)localObject4).gravity = 16;
        ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
        addView((View)localObject3);
        this.ძ = ((TextView)localObject3);
      }
      this.ძ.setText((CharSequence)localObject2);
      this.ძ.setVisibility(0);
    }
    else if (this.ძ != null)
    {
      this.ძ.setVisibility(8);
      this.ძ.setText(null);
    }
    if (this.ŧ != null) {
      this.ŧ.setContentDescription(((ذ.ˊ)localObject1).getContentDescription());
    }
    if ((i == 0) && (!TextUtils.isEmpty(((ذ.ˊ)localObject1).getContentDescription())))
    {
      setOnLongClickListener(this);
      return;
    }
    setOnLongClickListener(null);
    setLongClickable(false);
  }
  
  public void ˊ(ذ.ˊ paramˊ)
  {
    this.Ⴡ = paramˊ;
    update();
  }
  
  public ذ.ˊ Ị()
  {
    return this.Ⴡ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Æ.Ë
 * JD-Core Version:    0.7.0.1
 */