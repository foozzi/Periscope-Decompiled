package org.spongycastle.crypto.tls;

public class NamedCurve
{
  public static boolean isValid(int paramInt)
  {
    return ((paramInt >= 1) && (paramInt <= 28)) || ((paramInt >= 65281) && (paramInt <= 65282));
  }
  
  public static boolean Ꮀ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 65281: 
    case 65282: 
      return false;
    }
    return true;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.NamedCurve
 * JD-Core Version:    0.7.0.1
 */