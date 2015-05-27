package o;

class ᵌ
{
  static final int[] ᔆ = new int[0];
  static final long[] ᴖ = new long[0];
  static final Object[] ᴬ = new Object[0];
  
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static int ˈ(int paramInt)
  {
    return ˉ(paramInt * 4) / 4;
  }
  
  public static int ˉ(int paramInt)
  {
    int i = 4;
    while (i < 32)
    {
      if (paramInt <= (1 << i) - 12) {
        return (1 << i) - 12;
      }
      i += 1;
    }
    return paramInt;
  }
  
  static int ˊ(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = 0;
    paramInt1 -= 1;
    while (i <= paramInt1)
    {
      int j = i + paramInt1 >>> 1;
      int k = paramArrayOfInt[j];
      if (k < paramInt2) {
        i = j + 1;
      } else if (k > paramInt2) {
        paramInt1 = j - 1;
      } else {
        return j;
      }
    }
    return i ^ 0xFFFFFFFF;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.áµ
 * JD-Core Version:    0.7.0.1
 */