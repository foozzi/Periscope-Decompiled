package o;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;

public class alh
  extends RelativeLayout
{
  private alm bLK;
  private ami bLL;
  
  public alh(Context paramContext)
  {
    super(paramContext);
    ˊ(paramContext, null, 0);
  }
  
  public alh(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ˊ(paramContext, paramAttributeSet, 0);
  }
  
  public alh(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ˊ(paramContext, paramAttributeSet, paramInt);
  }
  
  public ImageView Bw()
  {
    return this.bLK;
  }
  
  public void setIcon(int paramInt1, int paramInt2)
  {
    if (paramInt2 > 0) {
      this.bLK.setColorFilter(getResources().getColor(paramInt2));
    } else {
      this.bLK.clearColorFilter();
    }
    if (paramInt1 > 0)
    {
      this.bLK.setImageResource(paramInt1);
      return;
    }
    this.bLK.setImageDrawable(null);
  }
  
  public void setLabel(CharSequence paramCharSequence)
  {
    this.bLL.setText(paramCharSequence);
    this.bLL.setTextColor(getResources().getColor(2131296299));
  }
  
  public void setLabel(CharSequence paramCharSequence, int paramInt)
  {
    this.bLL.setText(paramCharSequence);
    this.bLL.setTextColor(getResources().getColor(paramInt));
  }
  
  void ˊ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    LayoutInflater.from(paramContext).inflate(2130903066, this, true);
    this.bLK = ((alm)findViewById(2131427378));
    this.bLL = ((ami)findViewById(2131427417));
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, vh.if.ActionSheetItem, paramInt, 0);
    paramInt = 0;
    int i = paramAttributeSet.getIndexCount();
    while (paramInt < i)
    {
      int j = paramAttributeSet.getIndex(paramInt);
      switch (j)
      {
      default: 
        break;
      case 1: 
        this.bLK.setImageDrawable(paramAttributeSet.getDrawable(j));
        break;
      case 0: 
        this.bLK.setColorFilter(paramAttributeSet.getColor(j, 0));
        break;
      case 2: 
        this.bLL.setText(paramAttributeSet.getString(j));
        break;
      case 3: 
        this.bLL.setTextSize(0, paramAttributeSet.getDimensionPixelSize(j, 16));
        break;
      case 4: 
        try
        {
          Typeface localTypeface = amm.ͺ(paramContext, paramAttributeSet.getString(j));
          this.bLL.setTypeface(localTypeface);
        }
        catch (Exception localException) {}
      }
      paramInt += 1;
    }
    paramAttributeSet.recycle();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alh
 * JD-Core Version:    0.7.0.1
 */