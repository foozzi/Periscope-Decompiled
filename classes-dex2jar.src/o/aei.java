package o;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

public class aei
  extends ViewGroup
{
  private RecyclerView aL;
  private ImageView bAw;
  private View bAx;
  private TextView ȑ;
  private TextView Ч;
  
  public aei(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public aei(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext);
  }
  
  public aei(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void ˊ(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903070, this, true);
    this.bAw = ((ImageView)findViewById(2131427424));
    this.bAx = findViewById(2131427422);
    this.ȑ = ((TextView)findViewById(2131427459));
    this.Ч = ((TextView)findViewById(2131427460));
    this.aL = ((RecyclerView)findViewById(2131427423));
    paramContext = new LinearLayoutManager(paramContext);
    this.aL.setLayoutManager(paramContext);
    this.aL.setItemAnimator(null);
  }
  
  public boolean canScrollVertically(int paramInt)
  {
    return this.aL.canScrollVertically(paramInt);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt1 = paramInt3 - paramInt1;
    paramInt3 = this.aL.getMeasuredHeight();
    paramInt2 = paramInt4 - paramInt2 - paramInt3;
    this.aL.layout(0, paramInt2, paramInt1, paramInt2 + paramInt3);
    this.bAx.layout(0, paramInt2 - this.bAx.getMeasuredHeight(), paramInt1, paramInt2);
    int i = getResources().getDimensionPixelSize(2131361852);
    paramInt2 = this.bAw.getMeasuredWidth();
    paramInt3 = this.bAw.getMeasuredHeight();
    paramInt4 = this.bAx.getBottom();
    paramInt1 = paramInt1 - i - paramInt2;
    paramInt4 -= paramInt3 / 2;
    this.bAw.layout(paramInt1, paramInt4, paramInt1 + paramInt2, paramInt4 + paramInt3);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    measureChild(this.bAw, paramInt1, paramInt2);
    measureChild(this.bAx, paramInt1, paramInt2);
    paramInt2 = View.MeasureSpec.makeMeasureSpec((int)(View.MeasureSpec.getSize(paramInt2) / 2.0F + 0.5F), -2147483648);
    measureChild(this.aL, paramInt1, paramInt2);
    setMeasuredDimension(getDefaultSize(getSuggestedMinimumWidth(), paramInt1), this.bAx.getMeasuredHeight() + this.aL.getMeasuredHeight());
  }
  
  public void setActionButtonVisibility(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.bAw.setVisibility(0);
      return;
    }
    this.bAw.setVisibility(8);
  }
  
  public void setAdapter(adx paramadx)
  {
    this.aL.setAdapter(paramadx);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.bAw.setOnClickListener(paramOnClickListener);
  }
  
  public void setTitle(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (anw.ᐨ(paramCharSequence1)) {
      this.ȑ.setText(paramCharSequence1);
    } else {
      this.ȑ.setText(2131099907);
    }
    if (anw.ᐨ(paramCharSequence2))
    {
      this.Ч.setText(paramCharSequence2);
      this.Ч.setVisibility(0);
      return;
    }
    this.Ч.setVisibility(8);
  }
  
  public void setTitleAlpha(float paramFloat)
  {
    this.bAx.setAlpha(paramFloat);
    this.bAw.setScaleX(paramFloat);
    this.bAw.setScaleY(paramFloat);
  }
  
  public void xH()
  {
    this.bAw.setImageResource(2130837682);
  }
  
  public void xI()
  {
    this.bAw.setImageResource(2130837680);
  }
  
  public void xJ()
  {
    this.bAw.setImageResource(2130837658);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aei
 * JD-Core Version:    0.7.0.1
 */