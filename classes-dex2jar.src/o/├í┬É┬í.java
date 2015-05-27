package o;

import android.graphics.Color;

public class ᐡ
{
  public static int ˊ(int paramInt1, int paramInt2)
  {
    int i = Color.alpha(paramInt2);
    int j = Color.alpha(paramInt1);
    int k = ˋ(j, i);
    return Color.argb(k, ˊ(Color.red(paramInt1), j, Color.red(paramInt2), i, k), ˊ(Color.green(paramInt1), j, Color.green(paramInt2), i, k), ˊ(Color.blue(paramInt1), j, Color.blue(paramInt2), i, k));
  }
  
  private static int ˊ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (paramInt5 == 0) {
      return 0;
    }
    return (paramInt1 * 255 * paramInt2 + paramInt3 * paramInt4 * (255 - paramInt2)) / (paramInt5 * 255);
  }
  
  private static int ˋ(int paramInt1, int paramInt2)
  {
    return 255 - (255 - paramInt2) * (255 - paramInt1) / 255;
  }
  
  public static int ˎ(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 0) || (paramInt2 > 255)) {
      throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }
    return 0xFFFFFF & paramInt1 | paramInt2 << 24;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¡
 * JD-Core Version:    0.7.0.1
 */