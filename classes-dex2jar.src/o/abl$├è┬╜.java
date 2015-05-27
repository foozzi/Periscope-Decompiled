package o;

class abl$ʽ
{
  private static String TAG = "GLThreadManager";
  private boolean bwA;
  private abl.ʼ bwB;
  private boolean bwz;
  
  private void wq()
  {
    this.bwA = false;
    this.bwz = true;
  }
  
  public boolean wo()
  {
    try
    {
      boolean bool = this.bwA;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean wp()
  {
    try
    {
      wq();
      boolean bool = this.bwz;
      if (!bool) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public void ˊ(abl.ʼ paramʼ)
  {
    try
    {
      abl.ʼ.ˊ(paramʼ, true);
      if (this.bwB == paramʼ) {
        this.bwB = null;
      }
      notifyAll();
      return;
    }
    finally {}
  }
  
  public boolean ˋ(abl.ʼ paramʼ)
  {
    if ((this.bwB == paramʼ) || (this.bwB == null))
    {
      this.bwB = paramʼ;
      notifyAll();
      return true;
    }
    wq();
    if (this.bwz) {
      return true;
    }
    if (this.bwB != null) {
      this.bwB.wn();
    }
    return false;
  }
  
  public void ˎ(abl.ʼ paramʼ)
  {
    if (this.bwB == paramʼ) {
      this.bwB = null;
    }
    notifyAll();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.abl.Ê½
 * JD-Core Version:    0.7.0.1
 */