package o;

import java.util.Iterator;
import java.util.LinkedList;

class ﭸ
  implements ﺙ<T>
{
  ﭸ(ﭴ paramﭴ) {}
  
  public void ˊ(T paramT)
  {
    ﭴ.ˊ(this.Fd, paramT);
    paramT = ﭴ.ˊ(this.Fd).iterator();
    while (paramT.hasNext()) {
      ((ﭴ.if)paramT.next()).ˋ(ﭴ.ˋ(this.Fd));
    }
    ﭴ.ˊ(this.Fd).clear();
    ﭴ.ˊ(this.Fd, null);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ï­¸
 * JD-Core Version:    0.7.0.1
 */