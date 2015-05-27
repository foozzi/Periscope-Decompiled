package org.spongycastle.jce.spec;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.KeySpec;
import org.spongycastle.jce.interfaces.IESKey;

public class IEKeySpec
  implements KeySpec, IESKey
{
  private PublicKey bca;
  private PrivateKey bcb;
  
  public String getAlgorithm()
  {
    return "IES";
  }
  
  public byte[] getEncoded()
  {
    return null;
  }
  
  public String getFormat()
  {
    return null;
  }
  
  public PrivateKey getPrivate()
  {
    return this.bcb;
  }
  
  public PublicKey getPublic()
  {
    return this.bca;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.IEKeySpec
 * JD-Core Version:    0.7.0.1
 */