package org.spongycastle.jcajce.provider.asymmetric.dstu;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.GOST3411Digest;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.DSTU4145Signer;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jce.interfaces.ECKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.provider.BouncyCastleProvider;

public class SignatureSpi
  extends java.security.SignatureSpi
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
  private static byte[] aWP = { 10, 9, 13, 6, 14, 11, 4, 5, 15, 1, 3, 12, 7, 0, 8, 2, 8, 0, 12, 4, 9, 6, 7, 11, 2, 3, 1, 15, 5, 14, 10, 13, 15, 6, 5, 8, 14, 11, 10, 4, 12, 0, 3, 7, 2, 9, 1, 13, 3, 8, 13, 9, 6, 11, 15, 0, 2, 5, 12, 10, 4, 14, 1, 7, 15, 8, 14, 9, 7, 2, 0, 13, 12, 6, 1, 5, 11, 4, 3, 10, 2, 8, 9, 7, 5, 15, 0, 11, 12, 1, 13, 14, 10, 3, 6, 4, 3, 8, 11, 5, 6, 4, 14, 10, 2, 12, 1, 7, 9, 15, 13, 0, 1, 2, 3, 14, 6, 13, 11, 8, 15, 10, 12, 5, 7, 9, 0, 4 };
  private Digest aFH;
  private DSA aWF = new DSTU4145Signer();
  
  protected Object engineGetParameter(String paramString)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    AsymmetricKeyParameter localAsymmetricKeyParameter = null;
    if ((paramPrivateKey instanceof ECKey)) {
      localAsymmetricKeyParameter = ECUtil.ˊ(paramPrivateKey);
    }
    this.aFH = new GOST3411Digest(aWP);
    if (this.appRandom != null)
    {
      this.aWF.ˊ(true, new ParametersWithRandom(localAsymmetricKeyParameter, this.appRandom));
      return;
    }
    this.aWF.ˊ(true, localAsymmetricKeyParameter);
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    AsymmetricKeyParameter localAsymmetricKeyParameter;
    if ((paramPublicKey instanceof ECPublicKey)) {
      localAsymmetricKeyParameter = ECUtil.ˊ(paramPublicKey);
    } else {
      try
      {
        paramPublicKey = BouncyCastleProvider.ʼ(SubjectPublicKeyInfo.ן(paramPublicKey.getEncoded()));
        if ((paramPublicKey instanceof ECPublicKey)) {
          localAsymmetricKeyParameter = ECUtil.ˊ(paramPublicKey);
        } else {
          throw new InvalidKeyException("can't recognise key type in DSA based signer");
        }
      }
      catch (Exception paramPublicKey)
      {
        throw new InvalidKeyException("can't recognise key type in DSA based signer");
      }
    }
    this.aFH = new GOST3411Digest(ᔅ(((BCDSTU4145PublicKey)paramPublicKey).nD()));
    this.aWF.ˊ(false, localAsymmetricKeyParameter);
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
    byte[] arrayOfByte1 = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte1, 0);
    try
    {
      Object localObject = this.aWF.ᵎ(arrayOfByte1);
      arrayOfByte1 = localObject[0].toByteArray();
      localObject = localObject[1].toByteArray();
      int i;
      if (arrayOfByte1.length > localObject.length) {
        i = arrayOfByte1.length * 2;
      } else {
        i = localObject.length * 2;
      }
      byte[] arrayOfByte2 = new byte[i];
      System.arraycopy(localObject, 0, arrayOfByte2, arrayOfByte2.length / 2 - localObject.length, localObject.length);
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, arrayOfByte2.length - arrayOfByte1.length, arrayOfByte1.length);
      arrayOfByte1 = new DEROctetString(arrayOfByte2).getEncoded();
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
    Object localObject;
    try
    {
      localObject = ((ASN1OctetString)ASN1OctetString.ՙ(paramArrayOfByte)).eM();
      paramArrayOfByte = new byte[localObject.length / 2];
      byte[] arrayOfByte2 = new byte[localObject.length / 2];
      System.arraycopy(localObject, 0, arrayOfByte2, 0, localObject.length / 2);
      System.arraycopy(localObject, localObject.length / 2, paramArrayOfByte, 0, localObject.length / 2);
      localObject = new BigInteger[2];
      localObject[0] = new BigInteger(1, paramArrayOfByte);
      localObject[1] = new BigInteger(1, arrayOfByte2);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new SignatureException("error decoding signature bytes.");
    }
    return this.aWF.ˊ(arrayOfByte1, localObject[0], localObject[1]);
  }
  
  byte[] ᔅ(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[''];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      arrayOfByte[(i * 2)] = ((byte)(paramArrayOfByte[i] >> 4 & 0xF));
      arrayOfByte[(i * 2 + 1)] = ((byte)(paramArrayOfByte[i] & 0xF));
      i += 1;
    }
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpi
 * JD-Core Version:    0.7.0.1
 */