package o;

import android.support.v7.widget.RecyclerView.ʻ;
import android.view.View;

public abstract class 氵
{
  protected final RecyclerView.ʻ D;
  private int E = -2147483648;
  
  private 氵(RecyclerView.ʻ paramʻ)
  {
    this.D = paramʻ;
  }
  
  public static 氵 ˊ(RecyclerView.ʻ paramʻ)
  {
    return new 灬(paramʻ);
  }
  
  public static 氵 ˊ(RecyclerView.ʻ paramʻ, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return ˊ(paramʻ);
    case 1: 
      return ˋ(paramʻ);
    }
    throw new IllegalArgumentException("invalid orientation");
  }
  
  public static 氵 ˋ(RecyclerView.ʻ paramʻ)
  {
    return new ﭙ(paramʻ);
  }
  
  public abstract int getEnd();
  
  public abstract void ʸ(int paramInt);
  
  public abstract int ᐡ(View paramView);
  
  public abstract int ᐪ(View paramView);
  
  public abstract int ᒽ(View paramView);
  
  public void ᓯ()
  {
    this.E = ᖦ();
  }
  
  public int ᓱ()
  {
    if (-2147483648 == this.E) {
      return 0;
    }
    return ᖦ() - this.E;
  }
  
  public abstract int ᓴ();
  
  public abstract int ᔇ(View paramView);
  
  public abstract int ᔥ();
  
  public abstract int ᖦ();
  
  public abstract int ᴗ();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.æ°µ
 * JD-Core Version:    0.7.0.1
 */