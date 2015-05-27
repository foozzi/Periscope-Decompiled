package org.spongycastle.crypto.parsers;

import java.io.InputStream;
import java.math.BigInteger;
import org.spongycastle.crypto.KeyParser;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;

public class DHIESPublicKeyParser
  implements KeyParser
{
  private DHParameters aFh;
  
  public DHIESPublicKeyParser(DHParameters paramDHParameters)
  {
    this.aFh = paramDHParameters;
  }
  
  public AsymmetricKeyParameter ʿ(InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[(this.aFh.getP().bitLength() + 7) / 8];
    paramInputStream.read(arrayOfByte, 0, arrayOfByte.length);
    return new DHPublicKeyParameters(new BigInteger(1, arrayOfByte), this.aFh);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.parsers.DHIESPublicKeyParser
 * JD-Core Version:    0.7.0.1
 */