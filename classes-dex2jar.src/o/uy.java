package o;

final class uy
{
  static ux aaa;
  static long aac;
  
  static ux ev()
  {
    try
    {
      if (aaa != null)
      {
        ux localux = aaa;
        aaa = localux.aaa;
        localux.aaa = null;
        aac -= 2048L;
        return localux;
      }
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
    return new ux();
  }
  
  static void ˋ(ux paramux)
  {
    if ((paramux.aaa != null) || (paramux.aab != null)) {
      throw new IllegalArgumentException();
    }
    if (paramux.ZY) {
      return;
    }
    try
    {
      long l = aac;
      if (l + 2048L > 65536L) {
        return;
      }
      aac += 2048L;
      paramux.aaa = aaa;
      paramux.limit = 0;
      paramux.pos = 0;
      aaa = paramux;
      return;
    }
    finally {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.uy
 * JD-Core Version:    0.7.0.1
 */