package org.spongycastle.crypto.tls;

import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.agreement.DHBasicAgreement;
import org.spongycastle.crypto.generators.DHBasicKeyPairGenerator;
import org.spongycastle.crypto.params.DHKeyGenerationParameters;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.util.BigIntegers;

public class TlsDHUtils
{
  static final BigInteger ONE = BigInteger.valueOf(1L);
  static final BigInteger aKc = BigInteger.valueOf(2L);
  
  public static AsymmetricCipherKeyPair ˊ(SecureRandom paramSecureRandom, DHParameters paramDHParameters)
  {
    DHBasicKeyPairGenerator localDHBasicKeyPairGenerator = new DHBasicKeyPairGenerator();
    localDHBasicKeyPairGenerator.ˊ(new DHKeyGenerationParameters(paramSecureRandom, paramDHParameters));
    return localDHBasicKeyPairGenerator.iF();
  }
  
  public static DHPrivateKeyParameters ˊ(SecureRandom paramSecureRandom, DHParameters paramDHParameters, OutputStream paramOutputStream)
  {
    paramSecureRandom = ˊ(paramSecureRandom, paramDHParameters);
    ˊ(((DHPublicKeyParameters)paramSecureRandom.iD()).getY(), paramOutputStream);
    return (DHPrivateKeyParameters)paramSecureRandom.iE();
  }
  
  public static DHPublicKeyParameters ˊ(DHPublicKeyParameters paramDHPublicKeyParameters)
  {
    BigInteger localBigInteger1 = paramDHPublicKeyParameters.getY();
    Object localObject = paramDHPublicKeyParameters.kA();
    BigInteger localBigInteger2 = ((DHParameters)localObject).getP();
    localObject = ((DHParameters)localObject).getG();
    if (!localBigInteger2.isProbablePrime(2)) {
      throw new TlsFatalAlert((short)47);
    }
    if ((((BigInteger)localObject).compareTo(aKc) < 0) || (((BigInteger)localObject).compareTo(localBigInteger2.subtract(aKc)) > 0)) {
      throw new TlsFatalAlert((short)47);
    }
    if ((localBigInteger1.compareTo(aKc) < 0) || (localBigInteger1.compareTo(localBigInteger2.subtract(ONE)) > 0)) {
      throw new TlsFatalAlert((short)47);
    }
    return paramDHPublicKeyParameters;
  }
  
  public static void ˊ(BigInteger paramBigInteger, OutputStream paramOutputStream)
  {
    TlsUtils.ˎ(BigIntegers.ᵎ(paramBigInteger), paramOutputStream);
  }
  
  public static byte[] ˊ(DHPublicKeyParameters paramDHPublicKeyParameters, DHPrivateKeyParameters paramDHPrivateKeyParameters)
  {
    DHBasicAgreement localDHBasicAgreement = new DHBasicAgreement();
    localDHBasicAgreement.ˊ(paramDHPrivateKeyParameters);
    return BigIntegers.ᵎ(localDHBasicAgreement.ˋ(paramDHPublicKeyParameters));
  }
  
  public static DHPrivateKeyParameters ˋ(SecureRandom paramSecureRandom, DHParameters paramDHParameters, OutputStream paramOutputStream)
  {
    paramSecureRandom = ˊ(paramSecureRandom, paramDHParameters);
    new ServerDHParams((DHPublicKeyParameters)paramSecureRandom.iD()).encode(paramOutputStream);
    return (DHPrivateKeyParameters)paramSecureRandom.iE();
  }
  
  public static BigInteger ᐨ(InputStream paramInputStream)
  {
    return new BigInteger(1, TlsUtils.ᴵ(paramInputStream));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsDHUtils
 * JD-Core Version:    0.7.0.1
 */