package o;

public class ล
{
  private static volatile String[] BE;
  private static volatile boolean BF;
  
  public static boolean isTagEnabled(String paramString)
  {
    if (BF) {
      return true;
    }
    String[] arrayOfString = BE;
    if ((arrayOfString == null) || (arrayOfString.length == 0)) {
      return false;
    }
    int i = 0;
    while (i < arrayOfString.length)
    {
      if (arrayOfString[i].equals(paramString)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.à¸¥
 * JD-Core Version:    0.7.0.1
 */