package o;

import java.util.ArrayList;
import java.util.Iterator;

class ᵟ
  implements Runnable
{
  ᵟ(ᵖ paramᵖ, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = this.ܟ.iterator();
    while (localIterator.hasNext())
    {
      ᵖ.ˊ localˊ = (ᵖ.ˊ)localIterator.next();
      ᵖ.ˊ(this.ऱ, localˊ.ᓮ, localˊ.პ, localˊ.Ꮧ, localˊ.Ꮭ, localˊ.ᐱ);
    }
    this.ܟ.clear();
    ᵖ.ˊ(this.ऱ).remove(this.ܟ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */