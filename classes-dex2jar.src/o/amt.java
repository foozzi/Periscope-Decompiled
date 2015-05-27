package o;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class amt
  extends RelativeLayout
{
  private TextView bHR;
  
  public amt(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext);
  }
  
  public amt(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 2130771976);
    ˊ(paramContext);
  }
  
  public amt(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext);
  }
  
  private void ˊ(Context paramContext)
  {
    LayoutInflater.from(paramContext).inflate(2130903120, this, true);
    this.bHR = ((TextView)findViewById(2131427379));
  }
  
  public void setTitle(int paramInt)
  {
    this.bHR.setText(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.bHR.setText(paramCharSequence);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amt
 * JD-Core Version:    0.7.0.1
 */