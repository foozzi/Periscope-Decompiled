package o;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

public class amb
  extends alw
{
  private Drawable bME;
  private Drawable bMF;
  private Drawable bMG;
  private int bMH;
  private int bMI;
  private int bMJ;
  
  public amb(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public amb(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  public amb(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }
  
  private void init()
  {
    Resources localResources = getResources();
    this.bME = localResources.getDrawable(2130837573);
    this.bMH = localResources.getColor(2131296326);
    this.bMF = localResources.getDrawable(2130837572);
    this.bMI = localResources.getColor(2131296386);
    this.bMG = localResources.getDrawable(2130837574);
    this.bMJ = localResources.getColor(2131296386);
    setState(if.bML);
  }
  
  public void setState(if paramif)
  {
    switch (1.bMK[paramif.ordinal()])
    {
    default: 
      break;
    case 1: 
      setVisibility(0);
      setText(getResources().getString(2131099717));
      setTextColor(this.bMI);
      setBackground(this.bMF);
      return;
    case 2: 
      setVisibility(0);
      setText(getResources().getString(2131099715));
      setTextColor(this.bMJ);
      setBackground(this.bMG);
      return;
    case 3: 
      setVisibility(8);
      return;
    }
    setVisibility(0);
    setText(getResources().getString(2131099716));
    setTextColor(this.bMH);
    setBackground(this.bME);
  }
  
  public static enum if
  {
    private if() {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.amb
 * JD-Core Version:    0.7.0.1
 */