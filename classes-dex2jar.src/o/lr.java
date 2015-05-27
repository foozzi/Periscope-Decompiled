package o;

import java.util.Vector;

public class lr
{
  private static int count = 0;
  protected Vector PJ = new Vector();
  private lq PK = new ls(this, 1);
  
  public lr(String paramString) {}
  
  public int ˊ(String paramString, lq paramlq)
  {
    paramlq = new lt(paramString, paramlq);
    paramString = new StringBuilder().append(paramString).append("-");
    int i = count + 1;
    count = i;
    paramlq.ˊ(new Thread(paramlq, i));
    this.PJ.add(paramlq);
    kq.ɩ("Starting new worker " + paramlq.getThread().getName());
    paramlq.aL();
    return paramlq.hashCode();
  }
  
  public void ᒡ(int paramInt1, int paramInt2)
  {
    Vector localVector = this.PJ;
    int i = 0;
    try
    {
      while (i < this.PJ.size())
      {
        lt locallt = (lt)this.PJ.elementAt(i);
        if (locallt.hashCode() == paramInt1)
        {
          locallt.aN().ỉ(paramInt2);
          locallt.aM();
        }
        i += 1;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void ἰ(int paramInt)
  {
    Vector localVector = this.PJ;
    int i = 0;
    try
    {
      while (i < this.PJ.size())
      {
        lt locallt = (lt)this.PJ.elementAt(i);
        if (locallt.hashCode() == paramInt)
        {
          locallt.ˊ(this.PK);
          locallt.aO();
          locallt.aM();
          this.PJ.remove(locallt);
        }
        i += 1;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lr
 * JD-Core Version:    0.7.0.1
 */