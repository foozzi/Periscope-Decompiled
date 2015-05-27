package o;

import java.util.Random;

public abstract class anw
{
  private static final Random bIx = new Random();
  private static final char[] bOv = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  
  public static boolean isEmpty(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (paramCharSequence.length() == 0);
  }
  
  public static boolean ᐨ(CharSequence paramCharSequence)
  {
    return (paramCharSequence != null) && (paramCharSequence.length() > 0);
  }
  
  public static String ᔨ(int paramInt)
  {
    if (paramInt < 1) {
      return null;
    }
    char[] arrayOfChar = new char[paramInt];
    paramInt = 0;
    while (paramInt < arrayOfChar.length)
    {
      arrayOfChar[paramInt] = bOv[bIx.nextInt(71)];
      paramInt += 1;
    }
    return new String(arrayOfChar);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.anw
 * JD-Core Version:    0.7.0.1
 */