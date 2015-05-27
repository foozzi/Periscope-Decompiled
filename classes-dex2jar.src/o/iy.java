package o;

import java.math.BigInteger;

final class iy
  extends gk<BigInteger>
{
  public void ˊ(kc paramkc, BigInteger paramBigInteger)
  {
    paramkc.ˊ(paramBigInteger);
  }
  
  public BigInteger ˍ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    try
    {
      paramjz = new BigInteger(paramjz.nextString());
      return paramjz;
    }
    catch (NumberFormatException paramjz)
    {
      throw new gf(paramjz);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.iy
 * JD-Core Version:    0.7.0.1
 */