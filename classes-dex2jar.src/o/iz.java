package o;

final class iz
  extends gk<StringBuilder>
{
  public void ˊ(kc paramkc, StringBuilder paramStringBuilder)
  {
    if (paramStringBuilder == null) {
      paramStringBuilder = null;
    } else {
      paramStringBuilder = paramStringBuilder.toString();
    }
    paramkc.ᖮ(paramStringBuilder);
  }
  
  public StringBuilder ˑ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return new StringBuilder(paramjz.nextString());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.iz
 * JD-Core Version:    0.7.0.1
 */