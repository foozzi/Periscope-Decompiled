package o;

import android.support.v7.widget.RecyclerView;

public class ﮂ
  implements Runnable
{
  public ﮂ(RecyclerView paramRecyclerView) {}
  
  public void run()
  {
    if (!RecyclerView.ˊ(this.aB)) {
      return;
    }
    if (RecyclerView.ˋ(this.aB))
    {
      this.aB.氵();
      return;
    }
    if (this.aB.J.ﯿ())
    {
      this.aB.ḷ();
      this.aB.J.ﭤ();
      if (!RecyclerView.ˎ(this.aB)) {
        this.aB.ﮄ();
      }
      this.aB.ⁱ(true);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï®
 * JD-Core Version:    0.7.0.1
 */