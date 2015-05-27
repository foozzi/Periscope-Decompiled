package org.spongycastle.crypto.params;

public class DESedeParameters
  extends DESParameters
{
  public static boolean ᵢ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2)
    {
      if (DESParameters.ⁱ(paramArrayOfByte, paramInt1)) {
        return true;
      }
      paramInt1 += 8;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.params.DESedeParameters
 * JD-Core Version:    0.7.0.1
 */