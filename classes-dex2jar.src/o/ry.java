package o;

class ry
  implements Runnable
{
  ry(rw paramrw, Object paramObject) {}
  
  public void run()
  {
    try
    {
      this.XE.XB.ᒢ(this.XC);
      return;
    }
    catch (Exception localException)
    {
      qh.ˊ(this.XE.dV, "Crashlytics failed to record event", localException);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ry
 * JD-Core Version:    0.7.0.1
 */