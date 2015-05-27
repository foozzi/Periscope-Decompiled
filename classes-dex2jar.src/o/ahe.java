package o;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

public class ahe
  extends RelativeLayout
{
  private ahl bEr;
  
  public ahe(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public ahe(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public ahe(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      this.bEr = new ahp(getContext());
      return;
    }
    this.bEr = new ahm(getContext());
  }
  
  public void Ѓ(int paramInt)
  {
    aht localaht = new aht(getContext());
    localaht.setColor(paramInt);
    this.bEr.ˊ(localaht, this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ahe
 * JD-Core Version:    0.7.0.1
 */