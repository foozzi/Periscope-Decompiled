package org.spongycastle.jcajce.provider.asymmetric.gost;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.GOST3411Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.GOST3410Signer;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.GOST3410Util;
import org.spongycastle.jce.interfaces.ECKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.interfaces.GOST3410Key;
import org.spongycastle.jce.provider.BouncyCastleProvider;

public class SignatureSpi
  extends java.security.SignatureSpi
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
  private Digest aFH = new GOST3411Digest();
  private SecureRandom aFa;
  private DSA aWF = new GOST3410Signer();
  
  protected Object engineGetParameter(String paramString)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    if ((paramPrivateKey instanceof ECKey)) {
      paramPrivateKey = ECUtil.ˊ(paramPrivateKey);
    } else {
      paramPrivateKey = GOST3410Util.ˊ(paramPrivateKey);
    }
    this.aFH.reset();
    if (this.aFa != null)
    {
      this.aWF.ˊ(true, new ParametersWithRandom(paramPrivateKey, this.aFa));
      return;
    }
    this.aWF.ˊ(true, paramPrivateKey);
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey, SecureRandom paramSecureRandom)
  {
    this.aFa = paramSecureRandom;
    engineInitSign(paramPrivateKey);
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof ECPublicKey)) {
      paramPublicKey = ECUtil.ˊ(paramPublicKey);
    } else if ((paramPublicKey instanceof GOST3410Key)) {
      paramPublicKey = GOST3410Util.ˊ(paramPublicKey);
    } else {
      try
      {
        paramPublicKey = BouncyCastleProvider.ʼ(SubjectPublicKeyInfo.ן(paramPublicKey.getEncoded()));
        if ((paramPublicKey instanceof ECPublicKey)) {
          paramPublicKey = ECUtil.ˊ(paramPublicKey);
        } else {
          throw new InvalidKeyException("can't recognise key type in DSA based signer");
        }
      }
      catch (Exception paramPublicKey)
      {
        throw new InvalidKeyException("can't recognise key type in DSA based signer");
      }
    }
    this.aFH.reset();
    this.aWF.ˊ(false, paramPublicKey);
  }
  
  protected void engineSetParameter(String paramString, Object paramObject)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineSetParameter(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected byte[] engineSign()
  {
    byte[] arrayOfByte2 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte2, 0);
    try
    {
      byte[] arrayOfByte1 = new byte[64];
      Object localObject = this.aWF.ᵎ(arrayOfByte2);
      arrayOfByte2 = localObject[0].toByteArray();
      localObject = localObject[1].toByteArray();
      if (localObject[0] != 0) {
        System.arraycopy(localObject, 0, arrayOfByte1, 32 - localObject.length, localObject.length);
      } else {
        System.arraycopy(localObject, 1, arrayOfByte1, 32 - (localObject.length - 1), localObject.length - 1);
      }
      if (arrayOfByte2[0] != 0)
      {
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 64 - arrayOfByte2.length, arrayOfByte2.length);
        return arrayOfByte1;
      }
      System.arraycopy(arrayOfByte2, 1, arrayOfByte1, 64 - (arrayOfByte2.length - 1), arrayOfByte2.length - 1);
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      throw new SignatureException(localException.toString());
    }
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected boolean engineVerify(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte1, 0);
    try
    {
      byte[] arrayOfByte2 = new byte[32];
      byte[] arrayOfByte3 = new byte[32];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte3, 0, 32);
      System.arraycopy(paramArrayOfByte, 32, arrayOfByte2, 0, 32);
      paramArrayOfByte = new BigInteger[2];
      paramArrayOfByte[0] = new BigInteger(1, arrayOfByte2);
      paramArrayOfByte[1] = new BigInteger(1, arrayOfByte3);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new SignatureException("error decoding signature bytes.");
    }
    return this.aWF.ˊ(arrayOfByte1, paramArrayOfByte[0], paramArrayOfByte[1]);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.gost.SignatureSpi
 * JD-Core Version:    0.7.0.1
 */