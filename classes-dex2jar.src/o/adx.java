package o;

import android.content.Context;
import android.support.v7.widget.RecyclerView.if;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class adx
  extends RecyclerView.if<aef>
  implements zz.if
{
  private final ady bzc;
  private final aej bzu;
  private final List<bq> bzv;
  private final Context mContext;
  
  public adx(Context paramContext, aej paramaej, ady paramady)
  {
    this.mContext = paramContext;
    this.bzu = paramaej;
    this.bzu.ˊ(this);
    this.bzc = paramady;
    this.bzv = new ArrayList(1);
  }
  
  public int getItemCount()
  {
    return this.bzu.vc();
  }
  
  public int getItemViewType(int paramInt)
  {
    return ř(paramInt).xy().ordinal();
  }
  
  public void onDataSetChanged() {}
  
  public List<bq> xq()
  {
    return this.bzv;
  }
  
  public aeh ř(int paramInt)
  {
    return this.bzu.ǰ(paramInt);
  }
  
  public void ˊ(aef paramaef, int paramInt)
  {
    paramaef.ˊ(ř(paramInt));
  }
  
  public aef ᐝ(ViewGroup paramViewGroup, int paramInt)
  {
    aeh.ʻ localʻ = aeh.ʻ.values()[paramInt];
    switch (1.bzw[localʻ.ordinal()])
    {
    default: 
      break;
    case 1: 
      return aef.ˊ.ˋ(this.mContext, paramViewGroup, this.bzc);
    case 2: 
      paramViewGroup = aef.ˎ.ˏ(this.mContext, paramViewGroup, this.bzc);
      this.bzv.add(paramViewGroup.bzN);
      return paramViewGroup;
    case 3: 
      return aef.if.ˊ(this.mContext, paramViewGroup, this.bzc);
    case 4: 
      return aef.ˋ.ˎ(this.mContext, paramViewGroup, this.bzc);
    case 5: 
      return aef.ᐝ.ʼ(this.mContext, paramViewGroup, this.bzc);
    case 6: 
      return aef.aux.ʻ(this.mContext, paramViewGroup, this.bzc);
    case 7: 
      return aef.ˏ.ᐝ(this.mContext, paramViewGroup, this.bzc);
    }
    throw new UnsupportedOperationException("Unsupported view type");
  }
  
  public void ᐟ(int paramInt1, int paramInt2) {}
  
  public void יּ(int paramInt1, int paramInt2)
  {
    ˢ(paramInt1);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.adx
 * JD-Core Version:    0.7.0.1
 */