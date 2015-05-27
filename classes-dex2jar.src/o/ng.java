package o;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import java.lang.ref.WeakReference;

public class ng
  extends Button
{
  final WeakReference<Activity> QT = new WeakReference(getActivity());
  volatile nf QU;
  View.OnClickListener QV;
  lz<mr> Qz;
  
  public ng(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ng(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842824);
  }
  
  public ng(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, null);
  }
  
  ng(Context paramContext, AttributeSet paramAttributeSet, int paramInt, nf paramnf)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.QU = paramnf;
    bz();
    bB();
  }
  
  private void bB()
  {
    if (isInEditMode()) {
      return;
    }
    try
    {
      mn.bd();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      pj.cd().ᐨ("Twitter", localIllegalStateException.getMessage());
      setEnabled(false);
    }
  }
  
  @TargetApi(21)
  private void bz()
  {
    Resources localResources = getResources();
    super.setCompoundDrawablesWithIntrinsicBounds(localResources.getDrawable(me.ˋ.tw__ic_logo_default), null, null, null);
    super.setCompoundDrawablePadding(localResources.getDimensionPixelSize(me.ˊ.tw__login_btn_drawable_padding));
    super.setText(me.ᐝ.tw__login_btn_txt);
    super.setTextColor(localResources.getColor(me.if.tw__solid_white));
    super.setTextSize(0, localResources.getDimensionPixelSize(me.ˊ.tw__login_btn_text_size));
    super.setTypeface(Typeface.DEFAULT_BOLD);
    super.setPadding(localResources.getDimensionPixelSize(me.ˊ.tw__login_btn_left_padding), 0, localResources.getDimensionPixelSize(me.ˊ.tw__login_btn_right_padding), 0);
    super.setBackgroundResource(me.ˋ.tw__login_btn);
    super.setOnClickListener(new if(null));
    if (Build.VERSION.SDK_INT >= 21) {
      super.setAllCaps(false);
    }
  }
  
  nf bA()
  {
    if (this.QU == null) {
      try
      {
        if (this.QU == null) {
          this.QU = new nf();
        }
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    return this.QU;
  }
  
  protected Activity getActivity()
  {
    if ((getContext() instanceof Activity)) {
      return (Activity)getContext();
    }
    if (isInEditMode()) {
      return null;
    }
    throw new IllegalStateException("TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == bA().bc()) {
      bA().onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void setCallback(lz<mr> paramlz)
  {
    if (paramlz == null) {
      throw new IllegalArgumentException("Callback cannot be null");
    }
    this.Qz = paramlz;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.QV = paramOnClickListener;
  }
  
  class if
    implements View.OnClickListener
  {
    private if() {}
    
    private void ˋ(lz paramlz)
    {
      if (paramlz == null) {
        qh.ﾞ("Twitter", "Callback must not be null, did you call setCallback?");
      }
    }
    
    private void ـ(Activity paramActivity)
    {
      if ((paramActivity == null) || (paramActivity.isFinishing())) {
        qh.ﾞ("Twitter", "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.");
      }
    }
    
    public void onClick(View paramView)
    {
      ˋ(ng.this.Qz);
      ـ((Activity)ng.this.QT.get());
      ng.this.bA().ˊ((Activity)ng.this.QT.get(), ng.this.Qz);
      if (ng.this.QV != null) {
        ng.this.QV.onClick(paramView);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ng
 * JD-Core Version:    0.7.0.1
 */