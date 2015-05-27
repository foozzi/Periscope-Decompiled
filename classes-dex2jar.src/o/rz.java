package o;

class rz
  implements Runnable
{
  rz(rw paramrw) {}
  
  public void run()
  {
    try
    {
      this.XE.XB.cZ();
      return;
    }
    catch (Exception localException)
    {
      qh.ˊ(this.XE.dV, "Failed to send events files.", localException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.rz
 * JD-Core Version:    0.7.0.1
 */