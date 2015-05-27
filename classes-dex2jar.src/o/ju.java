package o;

final class ju
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
    try
    {
      short s = (short)paramjz.nextInt();
      return Short.valueOf(s);
    }
    catch (NumberFormatException paramjz)
    {
      throw new gf(paramjz);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ju
 * JD-Core Version:    0.7.0.1
 */