package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x9.X9IntegerConverter;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.agreement.ECDHBasicAgreement;
import org.spongycastle.crypto.agreement.ECDHCBasicAgreement;
import org.spongycastle.crypto.agreement.ECMQVBasicAgreement;
import org.spongycastle.crypto.agreement.kdf.DHKDFParameters;
import org.spongycastle.crypto.agreement.kdf.ECDHKEKGenerator;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.params.DESParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.MQVPrivateParameters;
import org.spongycastle.crypto.params.MQVPublicParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jce.interfaces.ECPrivateKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.interfaces.MQVPrivateKey;
import org.spongycastle.jce.interfaces.MQVPublicKey;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;

public class KeyAgreementSpi
  extends javax.crypto.KeyAgreementSpi
{
  private static final X9IntegerConverter aDG = new X9IntegerConverter();
  private static final Hashtable aWA = new Hashtable();
  private static final Hashtable aWT = new Hashtable();
  private static final Hashtable aWU = new Hashtable();
  private DerivationFunction aKw;
  private String aWV;
  private ECDomainParameters aWW;
  private BasicAgreement aWX;
  private BigInteger aWz;
  
  static
  {
    Integer localInteger1 = Integers.valueOf(64);
    Integer localInteger2 = Integers.valueOf(128);
    Integer localInteger3 = Integers.valueOf(192);
    Integer localInteger4 = Integers.valueOf(256);
    aWA.put(NISTObjectIdentifiers.aoj.getId(), localInteger2);
    aWA.put(NISTObjectIdentifiers.aoq.getId(), localInteger3);
    aWA.put(NISTObjectIdentifiers.aox.getId(), localInteger4);
    aWA.put(NISTObjectIdentifiers.aom.getId(), localInteger2);
    aWA.put(NISTObjectIdentifiers.aot.getId(), localInteger3);
    aWA.put(NISTObjectIdentifiers.aoA.getId(), localInteger4);
    aWA.put(PKCSObjectIdentifiers.asG.getId(), localInteger3);
    aWA.put(PKCSObjectIdentifiers.aqO.getId(), localInteger3);
    aWA.put(OIWObjectIdentifiers.apI.getId(), localInteger1);
    aWT.put("DESEDE", PKCSObjectIdentifiers.aqO);
    aWT.put("AES", NISTObjectIdentifiers.aox);
    aWT.put("DES", OIWObjectIdentifiers.apI);
    aWU.put("DES", "DES");
    aWU.put("DESEDE", "DES");
    aWU.put(OIWObjectIdentifiers.apI.getId(), "DES");
    aWU.put(PKCSObjectIdentifiers.aqO.getId(), "DES");
    aWU.put(PKCSObjectIdentifiers.asG.getId(), "DES");
  }
  
  protected KeyAgreementSpi(String paramString, BasicAgreement paramBasicAgreement, DerivationFunction paramDerivationFunction)
  {
    this.aWV = paramString;
    this.aWX = paramBasicAgreement;
    this.aKw = paramDerivationFunction;
  }
  
  private byte[] ʽ(BigInteger paramBigInteger)
  {
    return aDG.ˊ(paramBigInteger, aDG.ˏ(this.aWW.iv()));
  }
  
  private void ˊ(Key paramKey)
  {
    if ((this.aWX instanceof ECMQVBasicAgreement))
    {
      if (!(paramKey instanceof MQVPrivateKey)) {
        throw new InvalidKeyException(this.aWV + " key agreement requires " + ᐨ(MQVPrivateKey.class) + " for initialisation");
      }
      MQVPrivateKey localMQVPrivateKey = (MQVPrivateKey)paramKey;
      ECPrivateKeyParameters localECPrivateKeyParameters1 = (ECPrivateKeyParameters)ECUtil.ˊ(localMQVPrivateKey.oP());
      ECPrivateKeyParameters localECPrivateKeyParameters2 = (ECPrivateKeyParameters)ECUtil.ˊ(localMQVPrivateKey.oQ());
      paramKey = null;
      if (localMQVPrivateKey.oR() != null) {
        paramKey = (ECPublicKeyParameters)ECUtil.ˊ(localMQVPrivateKey.oR());
      }
      paramKey = new MQVPrivateParameters(localECPrivateKeyParameters1, localECPrivateKeyParameters2, paramKey);
      this.aWW = localECPrivateKeyParameters1.kG();
      this.aWX.ˊ(paramKey);
      return;
    }
    if (!(paramKey instanceof PrivateKey)) {
      throw new InvalidKeyException(this.aWV + " key agreement requires " + ᐨ(ECPrivateKey.class) + " for initialisation");
    }
    paramKey = (ECPrivateKeyParameters)ECUtil.ˊ((PrivateKey)paramKey);
    this.aWW = paramKey.kG();
    this.aWX.ˊ(paramKey);
  }
  
  private static String ᐨ(Class paramClass)
  {
    paramClass = paramClass.getName();
    return paramClass.substring(paramClass.lastIndexOf('.') + 1);
  }
  
  protected Key engineDoPhase(Key paramKey, boolean paramBoolean)
  {
    if (this.aWW == null) {
      throw new IllegalStateException(this.aWV + " not initialised.");
    }
    if (!paramBoolean) {
      throw new IllegalStateException(this.aWV + " can only be between two parties.");
    }
    if ((this.aWX instanceof ECMQVBasicAgreement))
    {
      if (!(paramKey instanceof MQVPublicKey)) {
        throw new InvalidKeyException(this.aWV + " key agreement requires " + ᐨ(MQVPublicKey.class) + " for doPhase");
      }
      paramKey = (MQVPublicKey)paramKey;
      paramKey = new MQVPublicParameters((ECPublicKeyParameters)ECUtil.ˊ(paramKey.oS()), (ECPublicKeyParameters)ECUtil.ˊ(paramKey.oT()));
    }
    else
    {
      if (!(paramKey instanceof PublicKey)) {
        throw new InvalidKeyException(this.aWV + " key agreement requires " + ᐨ(ECPublicKey.class) + " for doPhase");
      }
      paramKey = ECUtil.ˊ((PublicKey)paramKey);
    }
    this.aWz = this.aWX.ˋ(paramKey);
    return null;
  }
  
  protected int engineGenerateSecret(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = engineGenerateSecret();
    if (paramArrayOfByte.length - paramInt < arrayOfByte.length) {
      throw new ShortBufferException(this.aWV + " key agreement: need " + arrayOfByte.length + " bytes");
    }
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, paramInt, arrayOfByte.length);
    return arrayOfByte.length;
  }
  
  protected SecretKey engineGenerateSecret(String paramString)
  {
    Object localObject2 = ʽ(this.aWz);
    Object localObject1 = Strings.ʟ(paramString);
    String str = paramString;
    if (aWT.containsKey(localObject1)) {
      str = ((ASN1ObjectIdentifier)aWT.get(localObject1)).getId();
    }
    if (this.aKw != null)
    {
      if (!aWA.containsKey(str)) {
        throw new NoSuchAlgorithmException("unknown algorithm encountered: " + paramString);
      }
      int i = ((Integer)aWA.get(str)).intValue();
      localObject2 = new DHKDFParameters(new ASN1ObjectIdentifier(str), i, (byte[])localObject2);
      localObject1 = new byte[i / 8];
      this.aKw.ˊ((DerivationParameters)localObject2);
      this.aKw.ᐧ((byte[])localObject1, 0, localObject1.length);
    }
    else
    {
      localObject1 = localObject2;
      if (aWA.containsKey(str))
      {
        localObject1 = new byte[((Integer)aWA.get(str)).intValue() / 8];
        System.arraycopy(localObject2, 0, localObject1, 0, localObject1.length);
      }
    }
    if (aWU.containsKey(str)) {
      DESParameters.ı((byte[])localObject1);
    }
    return new SecretKeySpec((byte[])localObject1, paramString);
  }
  
  protected byte[] engineGenerateSecret()
  {
    if (this.aKw != null) {
      throw new UnsupportedOperationException("KDF can only be used when algorithm is known");
    }
    return ʽ(this.aWz);
  }
  
  protected void engineInit(Key paramKey, SecureRandom paramSecureRandom)
  {
    ˊ(paramKey);
  }
  
  protected void engineInit(Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    if (paramAlgorithmParameterSpec != null) {
      throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
    }
    ˊ(paramKey);
  }
  
  public static class DH
    extends KeyAgreementSpi
  {
    public DH()
    {
      super(new ECDHBasicAgreement(), null);
    }
  }
  
  public static class DHC
    extends KeyAgreementSpi
  {
    public DHC()
    {
      super(new ECDHCBasicAgreement(), null);
    }
  }
  
  public static class DHwithSHA1KDF
    extends KeyAgreementSpi
  {
    public DHwithSHA1KDF()
    {
      super(new ECDHBasicAgreement(), new ECDHKEKGenerator(new SHA1Digest()));
    }
  }
  
  public static class MQV
    extends KeyAgreementSpi
  {
    public MQV()
    {
      super(new ECMQVBasicAgreement(), null);
    }
  }
  
  public static class MQVwithSHA1KDF
    extends KeyAgreementSpi
  {
    public MQVwithSHA1KDF()
    {
      super(new ECMQVBasicAgreement(), new ECDHKEKGenerator(new SHA1Digest()));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi
 * JD-Core Version:    0.7.0.1
 */