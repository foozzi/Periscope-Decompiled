package o;

class ᴒ
  extends ᚁ
{
  private int ww;
  private boolean xg;
  private long xj;
  
  public ᴒ(ᒳ paramᒳ)
  {
    super(paramᒳ);
    paramᒳ.ˊ(ب.Һ());
  }
  
  public void ˊ(প paramপ, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.xg = true;
      this.xj = paramLong;
      this.ww = 0;
    }
    if (this.xg)
    {
      this.ww += paramপ.ϋ();
      this.wZ.ˊ(paramপ, paramপ.ϋ());
    }
  }
  
  public void ᒮ()
  {
    this.xg = false;
  }
  
  public void ᴫ()
  {
    this.wZ.ˊ(this.xj, 1, this.ww, 0, null);
    this.xg = false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´
 * JD-Core Version:    0.7.0.1
 */