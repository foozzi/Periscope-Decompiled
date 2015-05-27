package o;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class ﭜ
  extends ViewGroup
{
  private final ﭜ.if ᘢ;
  private final ﭜ.ˊ ᚁ;
  private final ί ᚆ;
  private final Drawable ᴒ;
  private final FrameLayout ᴫ;
  private final ImageView Ḻ;
  private final FrameLayout Ṫ;
  private final ImageView Ỳ;
  private final int Ỵ;
  ˤ ἶ;
  private final DataSetObserver ἷ = new ﭡ(this);
  private final ViewTreeObserver.OnGlobalLayoutListener ῗ = new ﭤ(this);
  private ῑ ℓ;
  private PopupWindow.OnDismissListener Ⅴ;
  private boolean ゞ;
  private int イ = 4;
  private boolean 忄;
  private int אּ;
  
  public ﭜ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ﭜ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ﭜ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = paramContext.obtainStyledAttributes(paramAttributeSet, ڊ.ʽ.ActivityChooserView, paramInt, 0);
    this.イ = ((TypedArray)localObject).getInt(ڊ.ʽ.ActivityChooserView_initialActivityCount, 4);
    paramAttributeSet = ((TypedArray)localObject).getDrawable(ڊ.ʽ.ActivityChooserView_expandActivityOverflowButtonDrawable);
    ((TypedArray)localObject).recycle();
    LayoutInflater.from(getContext()).inflate(ڊ.ᐝ.abc_activity_chooser_view, this, true);
    this.ᚁ = new ﭜ.ˊ(this, null);
    this.ᚆ = ((ί)findViewById(ڊ.ˏ.activity_chooser_view_content));
    this.ᴒ = this.ᚆ.getBackground();
    this.Ṫ = ((FrameLayout)findViewById(ڊ.ˏ.default_activity_button));
    this.Ṫ.setOnClickListener(this.ᚁ);
    this.Ṫ.setOnLongClickListener(this.ᚁ);
    this.Ỳ = ((ImageView)this.Ṫ.findViewById(ڊ.ˏ.image));
    localObject = (FrameLayout)findViewById(ڊ.ˏ.expand_activities_button);
    ((FrameLayout)localObject).setOnClickListener(this.ᚁ);
    ((FrameLayout)localObject).setOnTouchListener(new ﯧ(this, (View)localObject));
    this.ᴫ = ((FrameLayout)localObject);
    this.Ḻ = ((ImageView)((FrameLayout)localObject).findViewById(ڊ.ˏ.image));
    this.Ḻ.setImageDrawable(paramAttributeSet);
    this.ᘢ = new ﭜ.if(this, null);
    this.ᘢ.registerDataSetObserver(new ﯿ(this));
    paramContext = paramContext.getResources();
    this.Ỵ = Math.max(paramContext.getDisplayMetrics().widthPixels / 2, paramContext.getDimensionPixelSize(ڊ.ˋ.abc_config_prefDialogWidth));
  }
  
  private ῑ ง()
  {
    if (this.ℓ == null)
    {
      this.ℓ = new ῑ(getContext());
      this.ℓ.setAdapter(this.ᘢ);
      this.ℓ.setAnchorView(this);
      this.ℓ.setModal(true);
      this.ℓ.setOnItemClickListener(this.ᚁ);
      this.ℓ.setOnDismissListener(this.ᚁ);
    }
    return this.ℓ;
  }
  
  private void ว()
  {
    if (this.ᘢ.getCount() > 0) {
      this.ᴫ.setEnabled(true);
    } else {
      this.ᴫ.setEnabled(false);
    }
    int i = this.ᘢ.ȋ();
    int j = this.ᘢ.getHistorySize();
    if ((i == 1) || ((i > 1) && (j > 0)))
    {
      this.Ṫ.setVisibility(0);
      Object localObject = this.ᘢ.ɨ();
      PackageManager localPackageManager = getContext().getPackageManager();
      this.Ỳ.setImageDrawable(((ResolveInfo)localObject).loadIcon(localPackageManager));
      if (this.אּ != 0)
      {
        localObject = ((ResolveInfo)localObject).loadLabel(localPackageManager);
        localObject = getContext().getString(this.אּ, new Object[] { localObject });
        this.Ṫ.setContentDescription((CharSequence)localObject);
      }
    }
    else
    {
      this.Ṫ.setVisibility(8);
    }
    if (this.Ṫ.getVisibility() == 0)
    {
      this.ᚆ.setBackgroundDrawable(this.ᴒ);
      return;
    }
    this.ᚆ.setBackgroundDrawable(null);
  }
  
  private void ᵀ(int paramInt)
  {
    if (this.ᘢ.ᐦ() == null) {
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }
    getViewTreeObserver().addOnGlobalLayoutListener(this.ῗ);
    boolean bool;
    if (this.Ṫ.getVisibility() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    int j = this.ᘢ.ȋ();
    int i;
    if (bool) {
      i = 1;
    } else {
      i = 0;
    }
    if ((paramInt != 2147483647) && (j > paramInt + i))
    {
      this.ᘢ.ՙ(true);
      this.ᘢ.ᵋ(paramInt - 1);
    }
    else
    {
      this.ᘢ.ՙ(false);
      this.ᘢ.ᵋ(paramInt);
    }
    ῑ localῑ = ง();
    if (!localῑ.isShowing())
    {
      if ((this.ゞ) || (!bool)) {
        this.ᘢ.ˋ(true, bool);
      } else {
        this.ᘢ.ˋ(false, false);
      }
      localῑ.setContentWidth(Math.min(this.ᘢ.ן(), this.Ỵ));
      localῑ.show();
      if (this.ἶ != null) {
        this.ἶ.ˎ(true);
      }
      localῑ.getListView().setContentDescription(getContext().getString(ڊ.ʻ.abc_activitychooserview_choose_application));
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ﭕ localﭕ = this.ᘢ.ᐦ();
    if (localﭕ != null) {
      localﭕ.registerObserver(this.ἷ);
    }
    this.忄 = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = this.ᘢ.ᐦ();
    if (localObject != null) {
      ((ﭕ)localObject).unregisterObserver(this.ἷ);
    }
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive()) {
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(this.ῗ);
    }
    if (ܙ()) {
      ڊ();
    }
    this.忄 = false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ᚆ.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!ܙ()) {
      ڊ();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    ί localί = this.ᚆ;
    int i = paramInt2;
    if (this.Ṫ.getVisibility() != 0) {
      i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localί, paramInt1, i);
    setMeasuredDimension(localί.getMeasuredWidth(), localί.getMeasuredHeight());
  }
  
  public void setActivityChooserModel(ﭕ paramﭕ)
  {
    this.ᘢ.ˎ(paramﭕ);
    if (ܙ())
    {
      ڊ();
      ذ();
    }
  }
  
  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    this.אּ = paramInt;
  }
  
  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    this.Ḻ.setContentDescription(str);
  }
  
  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    this.Ḻ.setImageDrawable(paramDrawable);
  }
  
  public void setInitialActivityCount(int paramInt)
  {
    this.イ = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.Ⅴ = paramOnDismissListener;
  }
  
  public void setProvider(ˤ paramˤ)
  {
    this.ἶ = paramˤ;
  }
  
  public boolean ذ()
  {
    if ((ܙ()) || (!this.忄)) {
      return false;
    }
    this.ゞ = false;
    ᵀ(this.イ);
    return true;
  }
  
  public boolean ڊ()
  {
    if (ܙ())
    {
      ง().dismiss();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(this.ῗ);
      }
    }
    return true;
  }
  
  public boolean ܙ()
  {
    return ง().isShowing();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­
 * JD-Core Version:    0.7.0.1
 */