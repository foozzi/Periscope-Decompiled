package o;

class ᒻ$if
  implements ᒻ.ˎ
{
  private static int ˋ(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int i;
    if ((paramInt2 & paramInt3) != 0) {
      i = 1;
    } else {
      i = 0;
    }
    paramInt4 |= paramInt5;
    if ((paramInt2 & paramInt4) != 0) {
      paramInt2 = 1;
    } else {
      paramInt2 = 0;
    }
    if (i != 0)
    {
      if (paramInt2 != 0) {
        throw new IllegalArgumentException("bad arguments");
      }
      return (paramInt4 ^ 0xFFFFFFFF) & paramInt1;
    }
    if (paramInt2 != 0) {
      return (paramInt3 ^ 0xFFFFFFFF) & paramInt1;
    }
    return paramInt1;
  }
  
  public boolean metaStateHasModifiers(int paramInt1, int paramInt2)
  {
    return ˋ(ˋ(normalizeMetaState(paramInt1) & 0xF7, paramInt2, 1, 64, 128), paramInt2, 2, 16, 32) == paramInt2;
  }
  
  public boolean metaStateHasNoModifiers(int paramInt)
  {
    return (normalizeMetaState(paramInt) & 0xF7) == 0;
  }
  
  public int normalizeMetaState(int paramInt)
  {
    int i = paramInt;
    if ((paramInt & 0xC0) != 0) {
      i = paramInt | 0x1;
    }
    paramInt = i;
    if ((i & 0x30) != 0) {
      paramInt = i | 0x2;
    }
    return paramInt & 0xF7;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á».if
 * JD-Core Version:    0.7.0.1
 */