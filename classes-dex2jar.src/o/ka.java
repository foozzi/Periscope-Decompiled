package o;

final class ka
  extends hi
{
  public void ʻ(jz paramjz)
  {
    if ((paramjz instanceof ic))
    {
      ((ic)paramjz).M();
      return;
    }
    int j = jz.ᵢ(paramjz);
    int i = j;
    if (j == 0) {
      i = jz.ⁱ(paramjz);
    }
    if (i == 13)
    {
      jz.ˊ(paramjz, 9);
      return;
    }
    if (i == 12)
    {
      jz.ˊ(paramjz, 8);
      return;
    }
    if (i == 14)
    {
      jz.ˊ(paramjz, 10);
      return;
    }
    throw new IllegalStateException("Expected a name but was " + paramjz.J() + " " + " at line " + jz.ﹶ(paramjz) + " column " + jz.ﹺ(paramjz) + " path " + paramjz.getPath());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ka
 * JD-Core Version:    0.7.0.1
 */