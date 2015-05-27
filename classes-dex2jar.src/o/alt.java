package o;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

class alt
  extends ﹲ
{
  private final List<RecyclerView> bMA;
  
  public alt(List<RecyclerView> paramList)
  {
    this.bMA = paramList;
  }
  
  public int getCount()
  {
    return this.bMA.size();
  }
  
  public Object ˊ(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = (View)this.bMA.get(paramInt);
    paramViewGroup.addView(localView);
    return localView;
  }
  
  public void ˊ(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public boolean ˋ(View paramView, Object paramObject)
  {
    return paramView.equals(paramObject);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.alt
 * JD-Core Version:    0.7.0.1
 */