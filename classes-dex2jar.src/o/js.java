package o;

final class js
  extends gk<Boolean>
{
  public void ˊ(kc paramkc, Boolean paramBoolean)
  {
    if (paramBoolean == null) {
      paramBoolean = "null";
    } else {
      paramBoolean = paramBoolean.toString();
    }
    paramkc.ᖮ(paramBoolean);
  }
  
  public Boolean ᵎ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return Boolean.valueOf(paramjz.nextString());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.js
 * JD-Core Version:    0.7.0.1
 */