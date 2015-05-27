package o;

class fo
  extends gk<Number>
{
  fo(fl paramfl) {}
  
  public Double ˊ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return Double.valueOf(paramjz.nextDouble());
  }
  
  public void ˊ(kc paramkc, Number paramNumber)
  {
    if (paramNumber == null)
    {
      paramkc.T();
      return;
    }
    double d = paramNumber.doubleValue();
    fl.ˊ(this.Kg, d);
    paramkc.ˊ(paramNumber);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fo
 * JD-Core Version:    0.7.0.1
 */