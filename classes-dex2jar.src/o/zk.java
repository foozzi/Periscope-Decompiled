package o;

import java.util.ArrayList;

class zk
  implements Runnable
{
  zk(zj paramzj, long paramLong) {}
  
  public void run()
  {
    akk.ᐪ("BC", "Poll check...");
    ArrayList localArrayList = new ArrayList();
    int j = this.brU.brP.vc();
    int i = 0;
    while (i < j)
    {
      xh localxh = this.brU.brP.ｪ(i);
      if ((localxh != null) && (localxh.uh())) {
        localArrayList.add(localxh.id);
      }
      i += 1;
    }
    if (localArrayList.isEmpty())
    {
      akk.ᐪ("BC", "Nothing to poll!");
      return;
    }
    zj.ˊ(this.brU).ˊ(localArrayList);
    akn.ˊ(this.brU.brP.id(), zj.ˋ(this.brU), this.brT);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.zk
 * JD-Core Version:    0.7.0.1
 */