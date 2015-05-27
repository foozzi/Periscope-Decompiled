package org.spongycastle.jcajce.spec;

import javax.crypto.SecretKey;

public class RepeatedSecretKeySpec
  implements SecretKey
{
  private String aWI;
  
  public String getAlgorithm()
  {
    return this.aWI;
  }
  
  public byte[] getEncoded()
  {
    return null;
  }
  
  public String getFormat()
  {
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.spec.RepeatedSecretKeySpec
 * JD-Core Version:    0.7.0.1
 */