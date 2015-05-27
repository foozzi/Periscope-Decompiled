package org.spongycastle.crypto.engines;

import java.math.BigInteger;

public class CramerShoupCoreEngine
{
  private static final BigInteger ONE = BigInteger.valueOf(1L);
  private String label = null;
  
  public static class CramerShoupCiphertextException
    extends Exception
  {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.engines.CramerShoupCoreEngine
 * JD-Core Version:    0.7.0.1
 */