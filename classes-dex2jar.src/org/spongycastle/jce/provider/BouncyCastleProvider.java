package org.spongycastle.jce.provider;

import java.security.AccessController;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricKeyInfoConverter;

public final class BouncyCastleProvider
  extends Provider
  implements ConfigurableProvider
{
  public static final ProviderConfiguration baC = new BouncyCastleProviderConfiguration();
  private static final Map baD = new HashMap();
  private static final String[] baE = { "PBEPBKDF2", "PBEPKCS12" };
  private static final String[] baF = { "SipHash" };
  private static final String[] baG = { "AES", "ARC4", "Blowfish", "Camellia", "CAST5", "CAST6", "ChaCha", "DES", "DESede", "GOST28147", "Grainv1", "Grain128", "HC128", "HC256", "IDEA", "Noekeon", "RC2", "RC5", "RC6", "Rijndael", "Salsa20", "SEED", "Serpent", "Shacal2", "Skipjack", "TEA", "Twofish", "Threefish", "VMPC", "VMPCKSA3", "XTEA", "XSalsa20" };
  private static final String[] baH = { "X509", "IES" };
  private static final String[] baI = { "DSA", "DH", "EC", "RSA", "GOST", "ECGOST", "ElGamal", "DSTU4145" };
  private static final String[] baJ = { "GOST3411", "MD2", "MD4", "MD5", "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool" };
  private static final String[] baK = { "BC", "PKCS12" };
  private static String info = "BouncyCastle Security Provider v1.51";
  
  public BouncyCastleProvider()
  {
    super("SC", 1.51D, info);
    AccessController.doPrivileged(new BouncyCastleProvider.1(this));
  }
  
  private void setup()
  {
    ˊ("org.spongycastle.jcajce.provider.digest.", baJ);
    ˊ("org.spongycastle.jcajce.provider.symmetric.", baE);
    ˊ("org.spongycastle.jcajce.provider.symmetric.", baF);
    ˊ("org.spongycastle.jcajce.provider.symmetric.", baG);
    ˊ("org.spongycastle.jcajce.provider.asymmetric.", baH);
    ˊ("org.spongycastle.jcajce.provider.asymmetric.", baI);
    ˊ("org.spongycastle.jcajce.provider.keystore.", baK);
    put("X509Store.CERTIFICATE/COLLECTION", "org.spongycastle.jce.provider.X509StoreCertCollection");
    put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.spongycastle.jce.provider.X509StoreAttrCertCollection");
    put("X509Store.CRL/COLLECTION", "org.spongycastle.jce.provider.X509StoreCRLCollection");
    put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.spongycastle.jce.provider.X509StoreCertPairCollection");
    put("X509Store.CERTIFICATE/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPCerts");
    put("X509Store.CRL/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPCRLs");
    put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPAttrCerts");
    put("X509Store.CERTIFICATEPAIR/LDAP", "org.spongycastle.jce.provider.X509StoreLDAPCertPairs");
    put("X509StreamParser.CERTIFICATE", "org.spongycastle.jce.provider.X509CertParser");
    put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.spongycastle.jce.provider.X509AttrCertParser");
    put("X509StreamParser.CRL", "org.spongycastle.jce.provider.X509CRLParser");
    put("X509StreamParser.CERTIFICATEPAIR", "org.spongycastle.jce.provider.X509CertPairParser");
    put("Cipher.BROKENPBEWITHMD5ANDDES", "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
    put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.spongycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
    put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.spongycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
    put("CertPathValidator.RFC3281", "org.spongycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
    put("CertPathBuilder.RFC3281", "org.spongycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
    put("CertPathValidator.RFC3280", "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi");
    put("CertPathBuilder.RFC3280", "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi");
    put("CertPathValidator.PKIX", "org.spongycastle.jce.provider.PKIXCertPathValidatorSpi");
    put("CertPathBuilder.PKIX", "org.spongycastle.jce.provider.PKIXCertPathBuilderSpi");
    put("CertStore.Collection", "org.spongycastle.jce.provider.CertStoreCollectionSpi");
    put("CertStore.LDAP", "org.spongycastle.jce.provider.X509LDAPCertStoreSpi");
    put("CertStore.Multi", "org.spongycastle.jce.provider.MultiCertStoreSpi");
    put("Alg.Alias.CertStore.X509LDAP", "LDAP");
  }
  
  public static PublicKey ʼ(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    AsymmetricKeyInfoConverter localAsymmetricKeyInfoConverter = (AsymmetricKeyInfoConverter)baD.get(paramSubjectPublicKeyInfo.hU().fK());
    if (localAsymmetricKeyInfoConverter == null) {
      return null;
    }
    return localAsymmetricKeyInfoConverter.ˋ(paramSubjectPublicKeyInfo);
  }
  
  private void ˊ(String paramString, String[] paramArrayOfString)
  {
    int i = 0;
    while (i != paramArrayOfString.length)
    {
      Object localObject1 = null;
      try
      {
        Object localObject2 = getClass().getClassLoader();
        if (localObject2 != null)
        {
          localObject2 = ((ClassLoader)localObject2).loadClass(paramString + paramArrayOfString[i] + "$Mappings");
          localObject1 = localObject2;
        }
        else
        {
          localObject2 = Class.forName(paramString + paramArrayOfString[i] + "$Mappings");
          localObject1 = localObject2;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException) {}
      if (localObject1 != null) {
        try
        {
          ((AlgorithmProvider)localObject1.newInstance()).ˊ(this);
        }
        catch (Exception localException)
        {
          throw new InternalError("cannot create instance of " + paramString + paramArrayOfString[i] + "$Mappings : " + localException);
        }
      }
      i += 1;
    }
  }
  
  public static PrivateKey ˏ(PrivateKeyInfo paramPrivateKeyInfo)
  {
    AsymmetricKeyInfoConverter localAsymmetricKeyInfoConverter = (AsymmetricKeyInfoConverter)baD.get(paramPrivateKeyInfo.fW().fK());
    if (localAsymmetricKeyInfoConverter == null) {
      return null;
    }
    return localAsymmetricKeyInfoConverter.ˊ(paramPrivateKeyInfo);
  }
  
  public void ˊ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, AsymmetricKeyInfoConverter paramAsymmetricKeyInfoConverter)
  {
    baD.put(paramASN1ObjectIdentifier, paramAsymmetricKeyInfoConverter);
  }
  
  public void ﹶ(String paramString1, String paramString2)
  {
    if (containsKey(paramString1)) {
      throw new IllegalStateException("duplicate provider key (" + paramString1 + ") found");
    }
    put(paramString1, paramString2);
  }
  
  public boolean ﹺ(String paramString1, String paramString2)
  {
    return (containsKey(paramString1 + "." + paramString2)) || (containsKey("Alg.Alias." + paramString1 + "." + paramString2));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.BouncyCastleProvider
 * JD-Core Version:    0.7.0.1
 */