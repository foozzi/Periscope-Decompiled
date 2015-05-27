package o;

final class iu
  extends gk<Number>
{
  public void ˊ(kc paramkc, Number paramNumber)
  {
    paramkc.ˊ(paramNumber);
  }
  
  public Number ˏ(jz paramjz)
  {
    kb localkb = paramjz.J();
    switch (ir.1.LP[localkb.ordinal()])
    {
    default: 
      break;
    case 4: 
      paramjz.nextNull();
      return null;
    case 1: 
      return new hj(paramjz.nextString());
    }
    throw new gf("Expecting number, got: " + localkb);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.iu
 * JD-Core Version:    0.7.0.1
 */