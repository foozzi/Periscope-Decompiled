package o;

final class iw
  extends gk<String>
{
  public String ˉ(jz paramjz)
  {
    kb localkb = paramjz.J();
    if (localkb == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    if (localkb == kb.NA) {
      return Boolean.toString(paramjz.nextBoolean());
    }
    return paramjz.nextString();
  }
  
  public void ˊ(kc paramkc, String paramString)
  {
    paramkc.ᖮ(paramString);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.iw
 * JD-Core Version:    0.7.0.1
 */