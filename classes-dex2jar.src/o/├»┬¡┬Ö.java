package o;

import android.support.v7.widget.RecyclerView.ʻ;
import android.support.v7.widget.RecyclerView.ʼ;
import android.view.View;

final class ﭙ
  extends 氵
{
  ﭙ(RecyclerView.ʻ paramʻ)
  {
    super(paramʻ, null);
  }
  
  public int getEnd()
  {
    return this.D.getHeight();
  }
  
  public void ʸ(int paramInt)
  {
    this.D.ˀ(paramInt);
  }
  
  public int ᐡ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.Ꭵ(paramView) - localʼ.topMargin;
  }
  
  public int ᐪ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.ᒡ(paramView) + localʼ.bottomMargin;
  }
  
  public int ᒽ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.ۦ(paramView) + localʼ.topMargin + localʼ.bottomMargin;
  }
  
  public int ᓴ()
  {
    return this.D.getPaddingTop();
  }
  
  public int ᔇ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.ו(paramView) + localʼ.leftMargin + localʼ.rightMargin;
  }
  
  public int ᔥ()
  {
    return this.D.getHeight() - this.D.getPaddingBottom();
  }
  
  public int ᖦ()
  {
    return this.D.getHeight() - this.D.getPaddingTop() - this.D.getPaddingBottom();
  }
  
  public int ᴗ()
  {
    return this.D.getPaddingBottom();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­
 * JD-Core Version:    0.7.0.1
 */