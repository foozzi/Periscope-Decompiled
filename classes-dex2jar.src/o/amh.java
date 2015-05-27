package o;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.Switch;
import android.widget.TextView;

public class amh
  extends RelativeLayout
  implements CompoundButton.OnCheckedChangeListener
{
  private int bNb;
  private int bNc;
  private int bNd;
  private TextView bNe;
  private Switch bNf;
  private if bNg;
  
  public amh(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˏ(paramContext, paramAttributeSet);
  }
  
  public amh(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˏ(paramContext, paramAttributeSet);
  }
  
  private void ˏ(Context paramContext, AttributeSet paramAttributeSet)
  {
    inflate(paramContext, 2130903119, this);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.PsSwitchPreference, 0, 0);
    try
    {
      this.bNb = paramContext.getResourceId(0, 0);
      this.bNc = paramContext.getResourceId(1, 0);
      this.bNd = paramContext.getResourceId(2, 0);
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  public boolean isChecked()
  {
    return this.bNf.isChecked();
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean) {
      this.bNe.setText(this.bNc);
    } else {
      this.bNe.setText(this.bNd);
    }
    if (this.bNg != null) {
      this.bNg.ˊ(this, paramBoolean);
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    ((TextView)findViewById(2131427379)).setText(this.bNb);
    this.bNe = ((TextView)findViewById(2131427518));
    this.bNe.setText(this.bNd);
    this.bNf = ((Switch)findViewById(2131427587));
    this.bNf.setOnCheckedChangeListener(this);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    this.bNf.setChecked(paramBoolean);
  }
  
  public void setOnCheckedChangeListener(if paramif)
  {
    this.bNg = paramif;
  }
  
  public static abstract interface if
  {
    public abstract void ˊ(amh paramamh, boolean paramBoolean);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amh
 * JD-Core Version:    0.7.0.1
 */