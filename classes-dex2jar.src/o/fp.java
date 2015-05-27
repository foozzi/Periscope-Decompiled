package o;

class fp
  extends gk<Number>
{
  fp(fl paramfl) {}
  
  public void ˊ(kc paramkc, Number paramNumber)
  {
    if (paramNumber == null)
    {
      paramkc.T();
      return;
    }
    float f = paramNumber.floatValue();
    fl.ˊ(this.Kg, f);
    paramkc.ˊ(paramNumber);
  }
  
  public Float ˎ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return Float.valueOf((float)paramjz.nextDouble());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.fp
 * JD-Core Version:    0.7.0.1
 */