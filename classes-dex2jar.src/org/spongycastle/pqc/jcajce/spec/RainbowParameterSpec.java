package org.spongycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.util.Arrays;

public class RainbowParameterSpec
  implements AlgorithmParameterSpec
{
  private static final int[] bie = { 6, 12, 17, 22, 33 };
  private int[] bhZ = bie;
  
  public int[] qC()
  {
    return Arrays.י(this.bhZ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.spec.RainbowParameterSpec
 * JD-Core Version:    0.7.0.1
 */