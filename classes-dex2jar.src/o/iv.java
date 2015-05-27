package o;

final class iv
  extends gk<Character>
{
  public Character ˈ(jz paramjz)
  {
    if (paramjz.J() == kb.NB)
    {
      paramjz.nextNull();
      return null;
    }
    paramjz = paramjz.nextString();
    if (paramjz.length() != 1) {
      throw new gf("Expecting character, got: " + paramjz);
    }
    return Character.valueOf(paramjz.charAt(0));
  }
  
  public void ˊ(kc paramkc, Character paramCharacter)
  {
    if (paramCharacter == null) {
      paramCharacter = null;
    } else {
      paramCharacter = String.valueOf(paramCharacter);
    }
    paramkc.ᖮ(paramCharacter);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.iv
 * JD-Core Version:    0.7.0.1
 */