package o;

public final class cg
{
  public static Boolean ʻ(byte paramByte)
  {
    switch (paramByte)
    {
    default: 
      break;
    case 1: 
      return Boolean.TRUE;
    case 0: 
      return Boolean.FALSE;
    }
    return null;
  }
  
  public static byte ˋ(Boolean paramBoolean)
  {
    if (paramBoolean != null)
    {
      if (paramBoolean.booleanValue()) {
        return 1;
      }
      return 0;
    }
    return -1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.cg
 * JD-Core Version:    0.7.0.1
 */