package o;

final class ja
  extends gk<StringBuffer>
{
  public void ˊ(kc paramkc, StringBuffer paramStringBuffer)
  {
    if (paramStringBuffer == null) {
      paramStringBuffer = null;
    } else {
      paramStringBuffer = paramStringBuffer.toString();
    }
    paramkc.ᖮ(paramStringBuffer);
  }
  
  public StringBuffer ـ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    return new StringBuffer(paramjz.nextString());
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ja
 * JD-Core Version:    0.7.0.1
 */