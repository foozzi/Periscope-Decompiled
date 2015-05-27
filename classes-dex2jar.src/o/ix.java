package o;

import java.math.BigDecimal;

final class ix
  extends gk<BigDecimal>
{
  public void ˊ(kc paramkc, BigDecimal paramBigDecimal)
  {
    paramkc.ˊ(paramBigDecimal);
  }
  
  public BigDecimal ˌ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    try
    {
      paramjz = new BigDecimal(paramjz.nextString());
      return paramjz;
    }
    catch (NumberFormatException paramjz)
    {
      throw new gf(paramjz);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ix
 * JD-Core Version:    0.7.0.1
 */