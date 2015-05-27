package o;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

class aje
  extends ﹲ
{
  private final int[] bHf;
  private final int[] bHg;
  private final Context mContext;
  
  public aje(Context paramContext, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    this.mContext = paramContext;
    this.bHf = paramArrayOfInt1;
    this.bHg = paramArrayOfInt2;
  }
  
  public int getCount()
  {
    return this.bHf.length;
  }
  
  public Object ˊ(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903130, paramViewGroup, false);
    ((ImageView)localView.findViewById(2131427375)).setImageResource(this.bHf[paramInt]);
    ((TextView)localView.findViewById(2131427420)).setText(this.bHg[paramInt]);
    paramViewGroup.addView(localView);
    return localView;
  }
  
  public void ˊ(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public boolean ˋ(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aje
 * JD-Core Version:    0.7.0.1
 */