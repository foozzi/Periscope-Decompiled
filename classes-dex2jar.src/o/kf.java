package o;

abstract class kf
  extends lk
{
  protected volatile int NI = 5;
  protected volatile int NJ = 5000;
  protected volatile int NK = 0;
  
  public kf(String paramString, int paramInt1, int paramInt2)
  {
    super(paramString, paramInt1, paramInt2);
  }
  
  public lu al()
  {
    return new ln(this.Pz, this.NS, this.NR, this.NI, this.NJ, this.NK, this.NU);
  }
  
  public void ˊ(kn paramkn)
  {
    synchronized (this.Pz)
    {
      ar();
      super.ˊ(paramkn);
      return;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.kf
 * JD-Core Version:    0.7.0.1
 */