package o;

import android.support.v7.widget.RecyclerView.ˑ;
import java.util.ArrayList;
import java.util.Iterator;

class ṙ
  implements Runnable
{
  ṙ(ᵖ paramᵖ, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = this.খ.iterator();
    while (localIterator.hasNext())
    {
      RecyclerView.ˑ localˑ = (RecyclerView.ˑ)localIterator.next();
      ᵖ.ˊ(this.ऱ, localˑ);
    }
    this.খ.clear();
    ᵖ.ˎ(this.ऱ).remove(this.খ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¹
 * JD-Core Version:    0.7.0.1
 */