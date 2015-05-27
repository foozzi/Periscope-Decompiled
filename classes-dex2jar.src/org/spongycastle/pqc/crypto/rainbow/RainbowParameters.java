package org.spongycastle.pqc.crypto.rainbow;

import org.spongycastle.crypto.CipherParameters;

public class RainbowParameters
  implements CipherParameters
{
  private int[] bhZ;
  private final int[] bie = { 6, 12, 17, 22, 33 };
  
  public RainbowParameters()
  {
    this.bhZ = this.bie;
  }
  
  public RainbowParameters(int[] paramArrayOfInt)
  {
    this.bhZ = paramArrayOfInt;
    try
    {
      rV();
      return;
    }
    catch (Exception paramArrayOfInt)
    {
      paramArrayOfInt.printStackTrace();
    }
  }
  
  private void rV()
  {
    if (this.bhZ == null) {
      throw new Exception("no layers defined.");
    }
    if (this.bhZ.length > 1)
    {
      int i = 0;
      while (i < this.bhZ.length - 1)
      {
        if (this.bhZ[i] >= this.bhZ[(i + 1)]) {
          throw new Exception("v[i] has to be smaller than v[i+1]");
        }
        i += 1;
      }
      return;
    }
    throw new Exception("Rainbow needs at least 1 layer, such that v1 < v2.");
  }
  
  public int[] qC()
  {
    return this.bhZ;
  }
  
  public int qN()
  {
    return this.bhZ.length - 1;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.rainbow.RainbowParameters
 * JD-Core Version:    0.7.0.1
 */