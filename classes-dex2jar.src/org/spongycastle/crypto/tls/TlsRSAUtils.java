package org.spongycastle.crypto.tls;

import java.io.OutputStream;
import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.encodings.PKCS1Encoding;
import org.spongycastle.crypto.engines.RSABlindedEngine;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.util.Arrays;

public class TlsRSAUtils
{
  public static byte[] ˊ(TlsContext paramTlsContext, RSAKeyParameters paramRSAKeyParameters, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[48];
    paramTlsContext.lG().nextBytes(arrayOfByte);
    TlsUtils.ˊ(paramTlsContext.lI(), arrayOfByte, 0);
    PKCS1Encoding localPKCS1Encoding = new PKCS1Encoding(new RSABlindedEngine());
    localPKCS1Encoding.ˊ(true, new ParametersWithRandom(paramRSAKeyParameters, paramTlsContext.lG()));
    try
    {
      paramRSAKeyParameters = localPKCS1Encoding.ˑ(arrayOfByte, 0, arrayOfByte.length);
      if (TlsUtils.ˎ(paramTlsContext)) {
        paramOutputStream.write(paramRSAKeyParameters);
      } else {
        TlsUtils.ˎ(paramRSAKeyParameters, paramOutputStream);
      }
      return arrayOfByte;
    }
    catch (InvalidCipherTextException paramTlsContext)
    {
      throw new TlsFatalAlert((short)80);
    }
  }
  
  public static byte[] ˊ(TlsContext paramTlsContext, RSAKeyParameters paramRSAKeyParameters, byte[] paramArrayOfByte)
  {
    ProtocolVersion localProtocolVersion = paramTlsContext.lI();
    byte[] arrayOfByte2 = new byte[48];
    paramTlsContext.lG().nextBytes(arrayOfByte2);
    byte[] arrayOfByte1 = Arrays.І(arrayOfByte2);
    try
    {
      PKCS1Encoding localPKCS1Encoding = new PKCS1Encoding(new RSABlindedEngine(), arrayOfByte2);
      localPKCS1Encoding.ˊ(false, new ParametersWithRandom(paramRSAKeyParameters, paramTlsContext.lG()));
      paramTlsContext = localPKCS1Encoding.ˑ(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
    catch (Exception paramTlsContext)
    {
      paramTlsContext = arrayOfByte1;
    }
    int i = localProtocolVersion.getMajorVersion() ^ paramTlsContext[0] & 0xFF | localProtocolVersion.getMinorVersion() ^ paramTlsContext[1] & 0xFF;
    i |= i >> 1;
    i |= i >> 2;
    int j = ((i | i >> 4) & 0x1) - 1 ^ 0xFFFFFFFF;
    i = 0;
    while (i < 48)
    {
      paramTlsContext[i] = ((byte)(paramTlsContext[i] & (j ^ 0xFFFFFFFF) | arrayOfByte2[i] & j));
      i += 1;
    }
    return paramTlsContext;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsRSAUtils
 * JD-Core Version:    0.7.0.1
 */