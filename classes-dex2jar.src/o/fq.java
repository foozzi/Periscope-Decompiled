package o;

class fq
  extends gk<Number>
{
  fq(fl paramfl) {}
  
  public void ˊ(kc paramkc, Number paramNumber)
  {
    if (paramNumber == null)
    {
      paramkc.T();
      return;
    }
    paramkc.ᖮ(paramNumber.toString());
  }
  
  public Number ˏ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return Long.valueOf(paramjz.nextLong());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fq
 * JD-Core Version:    0.7.0.1
 */