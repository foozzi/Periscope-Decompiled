package org.spongycastle.jce.spec;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.KeySpec;
import org.spongycastle.jce.interfaces.MQVPrivateKey;

public class MQVPrivateKeySpec
  implements KeySpec, MQVPrivateKey
{
  private PrivateKey bcc;
  private PrivateKey bcd;
  private PublicKey bce;
  
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
  
  public PrivateKey oP()
  {
    return this.bcc;
  }
  
  public PrivateKey oQ()
  {
    return this.bcd;
  }
  
  public PublicKey oR()
  {
    return this.bce;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.spec.MQVPrivateKeySpec
 * JD-Core Version:    0.7.0.1
 */