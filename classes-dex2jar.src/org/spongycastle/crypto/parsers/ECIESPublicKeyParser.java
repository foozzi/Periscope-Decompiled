package org.spongycastle.crypto.parsers;

import java.io.IOException;
import java.io.InputStream;
import org.spongycastle.crypto.KeyParser;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECCurve;

public class ECIESPublicKeyParser
  implements KeyParser
{
  private ECDomainParameters aQL;
  
  public ECIESPublicKeyParser(ECDomainParameters paramECDomainParameters)
  {
    this.aQL = paramECDomainParameters;
  }
  
  public AsymmetricKeyParameter ʿ(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    byte[] arrayOfByte;
    switch (i)
    {
    default: 
      break;
    case 0: 
      throw new IOException("Sender's public key invalid.");
    case 2: 
    case 3: 
      arrayOfByte = new byte[(this.aQL.iv().getFieldSize() + 7) / 8 + 1];
      break;
    case 4: 
    case 6: 
    case 7: 
      arrayOfByte = new byte[(this.aQL.iv().getFieldSize() + 7) / 8 * 2 + 1];
      break;
    }
    throw new IOException("Sender's public key has invalid point encoding 0x" + Integer.toString(i, 16));
    arrayOfByte[0] = ((byte)i);
    paramInputStream.read(arrayOfByte, 1, arrayOfByte.length - 1);
    return new ECPublicKeyParameters(this.aQL.iv().ᕁ(arrayOfByte), this.aQL);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.parsers.ECIESPublicKeyParser
 * JD-Core Version:    0.7.0.1
 */