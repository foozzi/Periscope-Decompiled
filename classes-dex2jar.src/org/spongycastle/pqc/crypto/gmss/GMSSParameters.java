package org.spongycastle.pqc.crypto.gmss;

import org.spongycastle.util.Arrays;

public class GMSSParameters
{
  private int[] aGN;
  private int[] beC;
  private int beO;
  private int[] beP;
  
  public GMSSParameters(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    ˏ(paramInt, paramArrayOfInt1, paramArrayOfInt2, paramArrayOfInt3);
  }
  
  private void ˏ(int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3)
  {
    int i = 1;
    String str = "";
    this.beO = paramInt;
    if ((this.beO == paramArrayOfInt2.length) && (this.beO == paramArrayOfInt1.length))
    {
      paramInt = i;
      if (this.beO == paramArrayOfInt3.length) {}
    }
    else
    {
      paramInt = 0;
      str = "Unexpected parameterset format";
    }
    i = 0;
    while (i < this.beO)
    {
      if ((paramArrayOfInt3[i] < 2) || ((paramArrayOfInt1[i] - paramArrayOfInt3[i]) % 2 != 0))
      {
        paramInt = 0;
        str = "Wrong parameter K (K >= 2 and H-K even required)!";
      }
      if ((paramArrayOfInt1[i] < 4) || (paramArrayOfInt2[i] < 2))
      {
        paramInt = 0;
        str = "Wrong parameter H or w (H > 3 and w > 1 required)!";
      }
      i += 1;
    }
    if (paramInt != 0)
    {
      this.beC = Arrays.י(paramArrayOfInt1);
      this.beP = Arrays.י(paramArrayOfInt2);
      this.aGN = Arrays.י(paramArrayOfInt3);
      return;
    }
    throw new IllegalArgumentException(str);
  }
  
  public int qN()
  {
    return this.beO;
  }
  
  public int[] qO()
  {
    return Arrays.י(this.beC);
  }
  
  public int[] qP()
  {
    return Arrays.י(this.beP);
  }
  
  public int[] qQ()
  {
    return Arrays.י(this.aGN);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.gmss.GMSSParameters
 * JD-Core Version:    0.7.0.1
 */