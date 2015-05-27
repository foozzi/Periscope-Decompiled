package o;

final class jt
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
      byte b = (byte)paramjz.nextInt();
      return Byte.valueOf(b);
    }
    catch (NumberFormatException paramjz)
    {
      throw new gf(paramjz);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jt
 * JD-Core Version:    0.7.0.1
 */