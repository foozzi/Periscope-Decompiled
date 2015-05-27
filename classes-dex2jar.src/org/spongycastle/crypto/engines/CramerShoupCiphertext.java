package org.spongycastle.crypto.engines;

import java.math.BigInteger;

public class CramerShoupCiphertext
{
  BigInteger aJA;
  BigInteger aJB;
  BigInteger aJC;
  BigInteger aJD;
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("u1: " + this.aJA.toString());
    localStringBuffer.append("\nu2: " + this.aJB.toString());
    localStringBuffer.append("\ne: " + this.aJC.toString());
    localStringBuffer.append("\nv: " + this.aJD.toString());
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.CramerShoupCiphertext
 * JD-Core Version:    0.7.0.1
 */