package o;

final class jp
  extends gk<Boolean>
{
  public void ˊ(kc paramkc, Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      paramkc.T();
      return;
    }
    paramkc.ˁ(paramBoolean.booleanValue());
  }
  
  public Boolean ᵎ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    if (paramjz.J() == kb.Ny) {
      return Boolean.valueOf(Boolean.parseBoolean(paramjz.nextString()));
    }
    return Boolean.valueOf(paramjz.nextBoolean());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.jp
 * JD-Core Version:    0.7.0.1
 */