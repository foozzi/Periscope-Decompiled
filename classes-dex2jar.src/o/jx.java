package o;

final class jx
  extends gk<Number>
{
  public void ˊ(kc paramkc, Number paramNumber)
  {
    paramkc.ˊ(paramNumber);
  }
  
  public Number ˏ(jz paramjz)
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
 * Qualified Name:     o.jx
 * JD-Core Version:    0.7.0.1
 */