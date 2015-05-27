package o;

import java.util.Hashtable;
import java.util.Vector;

abstract class lk
{
  private static int Py = 1;
  private static int count = 0;
  protected volatile int NR;
  protected volatile int NS;
  protected Hashtable NU;
  protected lu[] PA;
  protected Vector Pz = new Vector();
  protected String name;
  
  public lk(String paramString, int paramInt1, int paramInt2)
  {
    this.NS = paramInt1;
    this.NR = paramInt2;
    ˏ(Py, paramString);
  }
  
  private void ˏ(int paramInt, String paramString)
  {
    int i = paramInt;
    if (paramInt < 1) {
      i = 1;
    }
    this.name = paramString;
    this.NU = new Hashtable();
    this.PA = new lu[i];
    arrayOflu = this.PA;
    paramInt = 0;
    for (;;)
    {
      if (paramInt < i) {}
      try
      {
        lu locallu = al();
        StringBuilder localStringBuilder = new StringBuilder().append(paramString).append("-");
        int j = count + 1;
        count = j;
        locallu.ˊ(new Thread(locallu, j));
        this.PA[paramInt] = locallu;
        kq.ɩ("Starting new worker " + this.PA[paramInt].getThread().getName());
        locallu.aL();
        paramInt += 1;
      }
      finally
      {
        paramString = finally;
        throw paramString;
      }
    }
  }
  
  public void aF()
  {
    lu[] arrayOflu = this.PA;
    int i = 0;
    try
    {
      while (i < this.PA.length)
      {
        kq.ɩ("Sending DIE to " + this.PA[i].getThread().getName());
        this.PA[i].aO();
        new Thread(new if(this.PA[i])).start();
        this.PA[i].aM();
        lu locallu = al();
        StringBuilder localStringBuilder = new StringBuilder().append(this.name).append("-");
        int j = count + 1;
        count = j;
        locallu.ˊ(new Thread(locallu, j));
        this.PA[i] = locallu;
        kq.ɩ("Starting new worker " + this.PA[i].getThread().getName());
        locallu.aL();
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
  
  public void aG()
  {
    ar();
    aF();
  }
  
  public abstract lu al();
  
  public abstract void ar();
  
  public void setHeader(String paramString1, String paramString2)
  {
    this.NU.put(paramString1, paramString2);
  }
  
  public void ˊ(kn paramkn)
  {
    kq.ﹾ("Queued : " + paramkn.getUrl());
    synchronized (this.Pz)
    {
      this.Pz.addElement(paramkn);
      this.Pz.notifyAll();
      return;
    }
  }
  
  class if
    implements Runnable
  {
    lu PB;
    
    if(lu paramlu)
    {
      this.PB = paramlu;
    }
    
    public void run()
    {
      if (this.PB != null) {
        this.PB.aP();
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.lk
 * JD-Core Version:    0.7.0.1
 */