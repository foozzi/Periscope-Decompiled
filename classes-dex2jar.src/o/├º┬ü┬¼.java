package o;

import android.support.v7.widget.RecyclerView.ʻ;
import android.support.v7.widget.RecyclerView.ʼ;
import android.view.View;

final class 灬
  extends 氵
{
  灬(RecyclerView.ʻ paramʻ)
  {
    super(paramʻ, null);
  }
  
  public int getEnd()
  {
    return this.D.getWidth();
  }
  
  public void ʸ(int paramInt)
  {
    this.D.ˁ(paramInt);
  }
  
  public int ᐡ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.เ(paramView) - localʼ.leftMargin;
  }
  
  public int ᐪ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.ᐤ(paramView) + localʼ.rightMargin;
  }
  
  public int ᒽ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.ו(paramView) + localʼ.leftMargin + localʼ.rightMargin;
  }
  
  public int ᓴ()
  {
    return this.D.getPaddingLeft();
  }
  
  public int ᔇ(View paramView)
  {
    RecyclerView.ʼ localʼ = (RecyclerView.ʼ)paramView.getLayoutParams();
    return this.D.ۦ(paramView) + localʼ.topMargin + localʼ.bottomMargin;
  }
  
  public int ᔥ()
  {
    return this.D.getWidth() - this.D.getPaddingRight();
  }
  
  public int ᖦ()
  {
    return this.D.getWidth() - this.D.getPaddingLeft() - this.D.getPaddingRight();
  }
  
  public int ᴗ()
  {
    return this.D.getPaddingRight();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ç¬
 * JD-Core Version:    0.7.0.1
 */