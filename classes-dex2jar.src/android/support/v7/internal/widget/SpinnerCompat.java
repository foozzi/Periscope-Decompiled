package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.ApplicationInfo;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import o.ʅ;
import o.ί;
import o.ױ;
import o.ڊ.ʽ;
import o.৲;
import o.ฯ;
import o.ๅ;
import o.ῑ.ˊ;
import o.ﹹ.ˊ;
import o.ﺑ;

public class SpinnerCompat
  extends AbsSpinnerCompat
  implements DialogInterface.OnClickListener
{
  private SpinnerCompat.ˎ ᐵ;
  private SpinnerCompat.ˊ ᑈ;
  int ᒏ;
  private int ᒰ;
  private boolean ᒱ;
  private final ฯ ᒴ;
  private ῑ.ˊ בּ;
  private Rect ﹽ = new Rect();
  
  public SpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  SpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1);
    ๅ localๅ = ๅ.ˊ(paramContext, paramAttributeSet, ڊ.ʽ.Spinner, paramInt1, 0);
    if (localๅ.hasValue(ڊ.ʽ.Spinner_android_background)) {
      setBackgroundDrawable(localๅ.getDrawable(ڊ.ʽ.Spinner_android_background));
    }
    int i = paramInt2;
    if (paramInt2 == -1) {
      i = localๅ.getInt(ڊ.ʽ.Spinner_spinnerMode, 0);
    }
    switch (i)
    {
    default: 
      break;
    case 0: 
      this.ᐵ = new if(null);
      break;
    case 1: 
      paramContext = new SpinnerCompat.ˋ(this, paramContext, paramAttributeSet, paramInt1);
      this.ᒏ = localๅ.getLayoutDimension(ڊ.ʽ.Spinner_android_dropDownWidth, -2);
      paramContext.setBackgroundDrawable(localๅ.getDrawable(ڊ.ʽ.Spinner_android_popupBackground));
      this.ᐵ = paramContext;
      this.בּ = new ʅ(this, this, paramContext);
    }
    this.ᒰ = localๅ.getInt(ڊ.ʽ.Spinner_android_gravity, 17);
    this.ᐵ.ʼ(localๅ.getString(ڊ.ʽ.Spinner_prompt));
    this.ᒱ = localๅ.getBoolean(ڊ.ʽ.Spinner_disableChildrenWhenDisabled, false);
    localๅ.recycle();
    if (this.ᑈ != null)
    {
      this.ᐵ.setAdapter(this.ᑈ);
      this.ᑈ = null;
    }
    this.ᒴ = localๅ.ゝ();
  }
  
  private void ˎ(View paramView, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null) {
      localLayoutParams1 = generateDefaultLayoutParams();
    }
    if (paramBoolean) {
      addViewInLayout(paramView, 0, localLayoutParams1);
    }
    paramView.setSelected(hasFocus());
    if (this.ᒱ) {
      paramView.setEnabled(isEnabled());
    }
    int i = ViewGroup.getChildMeasureSpec(this.ｔ, this.ﾐ.top + this.ﾐ.bottom, localLayoutParams1.height);
    paramView.measure(ViewGroup.getChildMeasureSpec(this.ｖ, this.ﾐ.left + this.ﾐ.right, localLayoutParams1.width), i);
    i = this.ﾐ.top + (getMeasuredHeight() - this.ﾐ.bottom - this.ﾐ.top - paramView.getMeasuredHeight()) / 2;
    int j = paramView.getMeasuredHeight();
    paramView.layout(0, i, paramView.getMeasuredWidth() + 0, i + j);
  }
  
  private View ͺ(int paramInt, boolean paramBoolean)
  {
    if (!this.ƨ)
    {
      localView = this.ﾘ.ᔇ(paramInt);
      if (localView != null)
      {
        ˎ(localView, paramBoolean);
        return localView;
      }
    }
    View localView = this.ｉ.getView(paramInt, null, this);
    ˎ(localView, paramBoolean);
    return localView;
  }
  
  public int getBaseline()
  {
    Object localObject2 = null;
    Object localObject1;
    if (getChildCount() > 0)
    {
      localObject1 = getChildAt(0);
    }
    else
    {
      localObject1 = localObject2;
      if (this.ｉ != null)
      {
        localObject1 = localObject2;
        if (this.ｉ.getCount() > 0)
        {
          localObject1 = ͺ(0, false);
          this.ﾘ.ˊ(0, (View)localObject1);
        }
      }
    }
    if (localObject1 != null)
    {
      int i = ((View)localObject1).getBaseline();
      if (i >= 0) {
        return ((View)localObject1).getTop() + i;
      }
      return -1;
    }
    return -1;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    setSelection(paramInt);
    paramDialogInterface.dismiss();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.ᐵ != null) && (this.ᐵ.isShowing())) {
      this.ᐵ.dismiss();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.mInLayout = true;
    ʼ(0, false);
    this.mInLayout = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.ᐵ != null) && (View.MeasureSpec.getMode(paramInt1) == -2147483648)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), ˊ(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (paramParcelable.ᖬ)
    {
      paramParcelable = getViewTreeObserver();
      if (paramParcelable != null) {
        paramParcelable.addOnGlobalLayoutListener(new ί(this));
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    boolean bool;
    if ((this.ᐵ != null) && (this.ᐵ.isShowing())) {
      bool = true;
    } else {
      bool = false;
    }
    localSavedState.ᖬ = bool;
    return localSavedState;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.בּ != null) && (this.בּ.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    boolean bool2 = super.performClick();
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool2 = true;
      bool1 = bool2;
      if (!this.ᐵ.isShowing())
      {
        this.ᐵ.show();
        bool1 = bool2;
      }
    }
    return bool1;
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    super.setAdapter(paramSpinnerAdapter);
    this.ﾘ.clear();
    if ((getContext().getApplicationInfo().targetSdkVersion >= 21) && (paramSpinnerAdapter != null) && (paramSpinnerAdapter.getViewTypeCount() != 1)) {
      throw new IllegalArgumentException("Spinner adapter view type count must be 1");
    }
    if (this.ᐵ != null)
    {
      this.ᐵ.setAdapter(new SpinnerCompat.ˊ(paramSpinnerAdapter));
      return;
    }
    this.ᑈ = new SpinnerCompat.ˊ(paramSpinnerAdapter);
  }
  
  public void setDropDownHorizontalOffset(int paramInt)
  {
    this.ᐵ.setHorizontalOffset(paramInt);
  }
  
  public void setDropDownVerticalOffset(int paramInt)
  {
    this.ᐵ.setVerticalOffset(paramInt);
  }
  
  public void setDropDownWidth(int paramInt)
  {
    if (!(this.ᐵ instanceof SpinnerCompat.ˋ))
    {
      Log.e("Spinner", "Cannot set dropdown width for MODE_DIALOG, ignoring");
      return;
    }
    this.ᒏ = paramInt;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (this.ᒱ)
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        getChildAt(i).setEnabled(paramBoolean);
        i += 1;
      }
    }
  }
  
  public void setGravity(int paramInt)
  {
    if (this.ᒰ != paramInt)
    {
      int i = paramInt;
      if ((paramInt & 0x7) == 0) {
        i = paramInt | 0x800003;
      }
      this.ᒰ = i;
      requestLayout();
    }
  }
  
  public void setOnItemClickListener(ﹹ.ˊ paramˊ)
  {
    throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (!(this.ᐵ instanceof SpinnerCompat.ˋ))
    {
      Log.e("Spinner", "setPopupBackgroundDrawable: incompatible spinner mode; ignoring...");
      return;
    }
    ((SpinnerCompat.ˋ)this.ᐵ).setBackgroundDrawable(paramDrawable);
  }
  
  public void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(this.ᒴ.getDrawable(paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    this.ᐵ.ʼ(paramCharSequence);
  }
  
  public void setPromptId(int paramInt)
  {
    setPrompt(getContext().getText(paramInt));
  }
  
  void ʼ(int paramInt, boolean paramBoolean)
  {
    int i = this.ﾐ.left;
    int j = getRight() - getLeft() - this.ﾐ.left - this.ﾐ.right;
    if (this.ƨ) {
      handleDataChanged();
    }
    if (this.ʎ == 0)
    {
      ہ();
      return;
    }
    if (this.ƫ >= 0) {
      ᵗ(this.ƫ);
    }
    ܝ();
    removeAllViewsInLayout();
    this.ｚ = this.Ț;
    if (this.ｉ != null)
    {
      View localView = ͺ(this.Ț, true);
      int k = localView.getMeasuredWidth();
      paramInt = i;
      int m = ﺑ.ˌ(this);
      switch (৲.getAbsoluteGravity(this.ᒰ, m) & 0x7)
      {
      default: 
        break;
      case 1: 
        paramInt = j / 2 + i - k / 2;
        break;
      case 5: 
        paramInt = i + j - k;
      }
      localView.offsetLeftAndRight(paramInt);
    }
    this.ﾘ.clear();
    invalidate();
    ᴬ();
    this.ƨ = false;
    this.ﾗ = false;
    ﾟ(this.Ț);
  }
  
  int ˊ(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int i = 0;
    View localView = null;
    int k = 0;
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int j = Math.max(0, getSelectedItemPosition());
    int i3 = Math.min(paramSpinnerAdapter.getCount(), j + 15);
    j = Math.max(0, j - (15 - (i3 - j)));
    while (j < i3)
    {
      int n = paramSpinnerAdapter.getItemViewType(j);
      int m = k;
      if (n != k)
      {
        m = n;
        localView = null;
      }
      localView = paramSpinnerAdapter.getView(j, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(i1, i2);
      i = Math.max(i, localView.getMeasuredWidth());
      j += 1;
      k = m;
    }
    j = i;
    if (paramDrawable != null)
    {
      paramDrawable.getPadding(this.ﹽ);
      j = i + (this.ﹽ.left + this.ﹽ.right);
    }
    return j;
  }
  
  public void ˊ(ﹹ.ˊ paramˊ)
  {
    super.setOnItemClickListener(paramˊ);
  }
  
  public static class SavedState
    extends AbsSpinnerCompat.SavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new ױ();
    boolean ᖬ;
    
    private SavedState(Parcel paramParcel)
    {
      super();
      boolean bool;
      if (paramParcel.readByte() != 0) {
        bool = true;
      } else {
        bool = false;
      }
      this.ᖬ = bool;
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      if (this.ᖬ) {
        paramInt = 1;
      } else {
        paramInt = 0;
      }
      paramParcel.writeByte((byte)paramInt);
    }
  }
  
  class if
    implements SpinnerCompat.ˎ, DialogInterface.OnClickListener
  {
    private AlertDialog ᒹ;
    private ListAdapter ᓙ;
    private CharSequence ᔬ;
    
    private if() {}
    
    public void dismiss()
    {
      if (this.ᒹ != null)
      {
        this.ᒹ.dismiss();
        this.ᒹ = null;
      }
    }
    
    public boolean isShowing()
    {
      if (this.ᒹ != null) {
        return this.ᒹ.isShowing();
      }
      return false;
    }
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      SpinnerCompat.this.setSelection(paramInt);
      if (SpinnerCompat.this.Ŷ != null) {
        SpinnerCompat.this.performItemClick(null, paramInt, this.ᓙ.getItemId(paramInt));
      }
      dismiss();
    }
    
    public void setAdapter(ListAdapter paramListAdapter)
    {
      this.ᓙ = paramListAdapter;
    }
    
    public void setHorizontalOffset(int paramInt)
    {
      Log.e("Spinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }
    
    public void setVerticalOffset(int paramInt)
    {
      Log.e("Spinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }
    
    public void show()
    {
      if (this.ᓙ == null) {
        return;
      }
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(SpinnerCompat.this.getContext());
      if (this.ᔬ != null) {
        localBuilder.setTitle(this.ᔬ);
      }
      this.ᒹ = localBuilder.setSingleChoiceItems(this.ᓙ, SpinnerCompat.this.getSelectedItemPosition(), this).create();
      this.ᒹ.show();
    }
    
    public void ʼ(CharSequence paramCharSequence)
    {
      this.ᔬ = paramCharSequence;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.SpinnerCompat
 * JD-Core Version:    0.7.0.1
 */