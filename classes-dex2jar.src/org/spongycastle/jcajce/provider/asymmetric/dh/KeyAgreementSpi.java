package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.crypto.params.DESParameters;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;

public class KeyAgreementSpi
  extends javax.crypto.KeyAgreementSpi
{
  private static final Hashtable aWA = new Hashtable();
  private BigInteger aFB;
  private BigInteger aFO;
  private BigInteger aFz;
  private BigInteger aWz;
  
  static
  {
    Integer localInteger1 = Integers.valueOf(64);
    Integer localInteger2 = Integers.valueOf(192);
    Integer localInteger3 = Integers.valueOf(128);
    Integer localInteger4 = Integers.valueOf(256);
    aWA.put("DES", localInteger1);
    aWA.put("DESEDE", localInteger2);
    aWA.put("BLOWFISH", localInteger3);
    aWA.put("AES", localInteger4);
  }
  
  private byte[] ʽ(BigInteger paramBigInteger)
  {
    int i = (this.aFz.bitLength() + 7) / 8;
    paramBigInteger = paramBigInteger.toByteArray();
    if (paramBigInteger.length == i) {
      return paramBigInteger;
    }
    if ((paramBigInteger[0] == 0) && (paramBigInteger.length == i + 1))
    {
      arrayOfByte = new byte[paramBigInteger.length - 1];
      System.arraycopy(paramBigInteger, 1, arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(paramBigInteger, 0, arrayOfByte, arrayOfByte.length - paramBigInteger.length, paramBigInteger.length);
    return arrayOfByte;
  }
  
  protected Key engineDoPhase(Key paramKey, boolean paramBoolean)
  {
    if (this.aFO == null) {
      throw new IllegalStateException("Diffie-Hellman not initialised.");
    }
    if (!(paramKey instanceof DHPublicKey)) {
      throw new InvalidKeyException("DHKeyAgreement doPhase requires DHPublicKey");
    }
    DHPublicKey localDHPublicKey = (DHPublicKey)paramKey;
    if ((!localDHPublicKey.getParams().getG().equals(this.aFB)) || (!localDHPublicKey.getParams().getP().equals(this.aFz))) {
      throw new InvalidKeyException("DHPublicKey not for this KeyAgreement!");
    }
    if (paramBoolean)
    {
      this.aWz = ((DHPublicKey)paramKey).getY().modPow(this.aFO, this.aFz);
      return null;
    }
    this.aWz = ((DHPublicKey)paramKey).getY().modPow(this.aFO, this.aFz);
    return new BCDHPublicKey(this.aWz, localDHPublicKey.getParams());
  }
  
  protected int engineGenerateSecret(byte[] paramArrayOfByte, int paramInt)
  {
    if (this.aFO == null) {
      throw new IllegalStateException("Diffie-Hellman not initialised.");
    }
    byte[] arrayOfByte = ʽ(this.aWz);
    if (paramArrayOfByte.length - paramInt < arrayOfByte.length) {
      throw new ShortBufferException("DHKeyAgreement - buffer too short");
    }
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, arrayOfByte.length);
    return arrayOfByte.length;
  }
  
  protected SecretKey engineGenerateSecret(String paramString)
  {
    if (this.aFO == null) {
      throw new IllegalStateException("Diffie-Hellman not initialised.");
    }
    String str = Strings.ʟ(paramString);
    byte[] arrayOfByte1 = ʽ(this.aWz);
    if (aWA.containsKey(str))
    {
      byte[] arrayOfByte2 = new byte[((Integer)aWA.get(str)).intValue() / 8];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte2.length);
      if (str.startsWith("DES")) {
        DESParameters.ı(arrayOfByte2);
      }
      return new SecretKeySpec(arrayOfByte2, paramString);
    }
    return new SecretKeySpec(arrayOfByte1, paramString);
  }
  
  protected byte[] engineGenerateSecret()
  {
    if (this.aFO == null) {
      throw new IllegalStateException("Diffie-Hellman not initialised.");
    }
    return ʽ(this.aWz);
  }
  
  protected void engineInit(Key paramKey, SecureRandom paramSecureRandom)
  {
    if (!(paramKey instanceof DHPrivateKey)) {
      throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey");
    }
    paramKey = (DHPrivateKey)paramKey;
    this.aFz = paramKey.getParams().getP();
    this.aFB = paramKey.getParams().getG();
    paramKey = paramKey.getX();
    this.aWz = paramKey;
    this.aFO = paramKey;
  }
  
  protected void engineInit(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (!(paramKey instanceof DHPrivateKey)) {
      throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey for initialisation");
    }
    paramKey = (DHPrivateKey)paramKey;
    if (paramAlgorithmParameterSpec != null)
    {
      if (!(paramAlgorithmParameterSpec instanceof DHParameterSpec)) {
        throw new InvalidAlgorithmParameterException("DHKeyAgreement only accepts DHParameterSpec");
      }
      paramAlgorithmParameterSpec = (DHParameterSpec)paramAlgorithmParameterSpec;
      this.aFz = paramAlgorithmParameterSpec.getP();
      this.aFB = paramAlgorithmParameterSpec.getG();
    }
    else
    {
      this.aFz = paramKey.getParams().getP();
      this.aFB = paramKey.getParams().getG();
    }
    paramKey = paramKey.getX();
    this.aWz = paramKey;
    this.aFO = paramKey;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi
 * JD-Core Version:    0.7.0.1
 */