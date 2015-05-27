package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;

public class ServerDHParams
{
  protected DHPublicKeyParameters aUD;
  
  public ServerDHParams(DHPublicKeyParameters paramDHPublicKeyParameters)
  {
    if (paramDHPublicKeyParameters == null) {
      throw new IllegalArgumentException("'publicKey' cannot be null");
    }
    this.aUD = paramDHPublicKeyParameters;
  }
  
  public static ServerDHParams ـ(InputStream paramInputStream)
  {
    BigInteger localBigInteger1 = TlsDHUtils.ᐨ(paramInputStream);
    BigInteger localBigInteger2 = TlsDHUtils.ᐨ(paramInputStream);
    return new ServerDHParams(new DHPublicKeyParameters(TlsDHUtils.ᐨ(paramInputStream), new DHParameters(localBigInteger1, localBigInteger2)));
  }
  
  public void encode(OutputStream paramOutputStream)
  {
    DHParameters localDHParameters = this.aUD.kA();
    BigInteger localBigInteger = this.aUD.getY();
    TlsDHUtils.ˊ(localDHParameters.getP(), paramOutputStream);
    TlsDHUtils.ˊ(localDHParameters.getG(), paramOutputStream);
    TlsDHUtils.ˊ(localBigInteger, paramOutputStream);
  }
  
  public DHPublicKeyParameters mH()
  {
    return this.aUD;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.ServerDHParams
 * JD-Core Version:    0.7.0.1
 */