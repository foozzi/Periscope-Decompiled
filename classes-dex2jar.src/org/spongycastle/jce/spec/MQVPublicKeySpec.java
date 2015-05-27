package org.spongycastle.jce.spec;

import java.security.PublicKey;
import java.security.spec.KeySpec;
import org.spongycastle.jce.interfaces.MQVPublicKey;

public class MQVPublicKeySpec
  implements KeySpec, MQVPublicKey
{
  private PublicKey bcf;
  private PublicKey bcg;
  
  public String getAlgorithm()
  {
    return "ECMQV";
  }
  
  public byte[] getEncoded()
  {
    return null;
  }
  
  public String getFormat()
  {
    return null;
  }
  
  public PublicKey oS()
  {
    return this.bcf;
  }
  
  public PublicKey oT()
  {
    return this.bcg;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.MQVPublicKeySpec
 * JD-Core Version:    0.7.0.1
 */