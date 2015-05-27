package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.bsi.BSIObjectIdentifiers;
import org.spongycastle.asn1.eac.EACObjectIdentifiers;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi.EC;
import org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi.ECMQV;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class EC
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("KeyAgreement.ECDH", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DH");
      paramConfigurableProvider.ﹶ("KeyAgreement.ECDHC", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHC");
      paramConfigurableProvider.ﹶ("KeyAgreement.ECMQV", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQV");
      paramConfigurableProvider.ﹶ("KeyAgreement." + X9ObjectIdentifiers.aEE, "org.spongycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1KDF");
      paramConfigurableProvider.ﹶ("KeyAgreement." + X9ObjectIdentifiers.aEG, "org.spongycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$MQVwithSHA1KDF");
      paramConfigurableProvider.ﹶ("KeyAgreement.ECDHWITHSHA1KDF", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi$DHwithSHA1KDF");
      ˊ(paramConfigurableProvider, X9ObjectIdentifiers.aDS, "EC", new KeyFactorySpi.EC());
      ˊ(paramConfigurableProvider, X9ObjectIdentifiers.aEE, "EC", new KeyFactorySpi.EC());
      ˊ(paramConfigurableProvider, X9ObjectIdentifiers.aEG, "ECMQV", new KeyFactorySpi.ECMQV());
      ˋ(paramConfigurableProvider, X9ObjectIdentifiers.aDS, "EC");
      ˋ(paramConfigurableProvider, X9ObjectIdentifiers.aEE, "EC");
      ˋ(paramConfigurableProvider, X9ObjectIdentifiers.aEG, "EC");
      paramConfigurableProvider.ﹶ("KeyFactory.EC", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$EC");
      paramConfigurableProvider.ﹶ("KeyFactory.ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDSA");
      paramConfigurableProvider.ﹶ("KeyFactory.ECDH", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDH");
      paramConfigurableProvider.ﹶ("KeyFactory.ECDHC", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECDHC");
      paramConfigurableProvider.ﹶ("KeyFactory.ECMQV", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyFactorySpi$ECMQV");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.EC", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$EC");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDSA");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.ECDH", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDH");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.ECDHWITHSHA1KDF", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDH");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.ECDHC", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDHC");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.ECIES", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECDH");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.ECMQV", "org.spongycastle.jcajce.provider.asymmetric.ec.KeyPairGeneratorSpi$ECMQV");
      paramConfigurableProvider.ﹶ("Cipher.ECIES", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIES");
      paramConfigurableProvider.ﹶ("Cipher.ECIESwithAES", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithAES");
      paramConfigurableProvider.ﹶ("Cipher.ECIESWITHAES", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithAES");
      paramConfigurableProvider.ﹶ("Cipher.ECIESwithDESEDE", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithDESede");
      paramConfigurableProvider.ﹶ("Cipher.ECIESWITHDESEDE", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithDESede");
      paramConfigurableProvider.ﹶ("Cipher.ECIESwithAES-CBC", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.ECIESWITHAES-CBC", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithAESCBC");
      paramConfigurableProvider.ﹶ("Cipher.ECIESwithDESEDE-CBC", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithDESedeCBC");
      paramConfigurableProvider.ﹶ("Cipher.ECIESWITHDESEDE-CBC", "org.spongycastle.jcajce.provider.asymmetric.ec.IESCipher$ECIESwithDESedeCBC");
      paramConfigurableProvider.ﹶ("Signature.ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA");
      paramConfigurableProvider.ﹶ("Signature.NONEwithECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSAnone");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1withECDSA", "ECDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.ECDSAwithSHA1", "ECDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1WITHECDSA", "ECDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.ECDSAWITHSHA1", "ECDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1WithECDSA", "ECDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.ECDSAWithSHA1", "ECDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.1.2.840.10045.4.1", "ECDSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + TeleTrusTObjectIdentifiers.avh, "ECDSA");
      paramConfigurableProvider.ﹶ("Signature.DETECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA");
      paramConfigurableProvider.ﹶ("Signature.SHA1WITHDETECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA");
      paramConfigurableProvider.ﹶ("Signature.SHA224WITHDETECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA224");
      paramConfigurableProvider.ﹶ("Signature.SHA256WITHDETECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA256");
      paramConfigurableProvider.ﹶ("Signature.SHA384WITHDETECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA384");
      paramConfigurableProvider.ﹶ("Signature.SHA512WITHDETECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDetDSA512");
      ˊ(paramConfigurableProvider, "SHA224", "ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA224", X9ObjectIdentifiers.aDU);
      ˊ(paramConfigurableProvider, "SHA256", "ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA256", X9ObjectIdentifiers.aDV);
      ˊ(paramConfigurableProvider, "SHA384", "ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA384", X9ObjectIdentifiers.aDW);
      ˊ(paramConfigurableProvider, "SHA512", "ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSA512", X9ObjectIdentifiers.aDX);
      ˊ(paramConfigurableProvider, "RIPEMD160", "ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecDSARipeMD160", TeleTrusTObjectIdentifiers.avi);
      paramConfigurableProvider.ﹶ("Signature.SHA1WITHECNR", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR");
      paramConfigurableProvider.ﹶ("Signature.SHA224WITHECNR", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR224");
      paramConfigurableProvider.ﹶ("Signature.SHA256WITHECNR", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR256");
      paramConfigurableProvider.ﹶ("Signature.SHA384WITHECNR", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR384");
      paramConfigurableProvider.ﹶ("Signature.SHA512WITHECNR", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecNR512");
      ˊ(paramConfigurableProvider, "SHA1", "CVC-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA", EACObjectIdentifiers.ajs);
      ˊ(paramConfigurableProvider, "SHA224", "CVC-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224", EACObjectIdentifiers.ajt);
      ˊ(paramConfigurableProvider, "SHA256", "CVC-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256", EACObjectIdentifiers.aju);
      ˊ(paramConfigurableProvider, "SHA384", "CVC-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384", EACObjectIdentifiers.ajv);
      ˊ(paramConfigurableProvider, "SHA512", "CVC-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512", EACObjectIdentifiers.ajw);
      ˊ(paramConfigurableProvider, "SHA1", "PLAIN-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA", BSIObjectIdentifiers.abU);
      ˊ(paramConfigurableProvider, "SHA224", "PLAIN-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA224", BSIObjectIdentifiers.abV);
      ˊ(paramConfigurableProvider, "SHA256", "PLAIN-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA256", BSIObjectIdentifiers.abW);
      ˊ(paramConfigurableProvider, "SHA384", "PLAIN-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA384", BSIObjectIdentifiers.abX);
      ˊ(paramConfigurableProvider, "SHA512", "PLAIN-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecCVCDSA512", BSIObjectIdentifiers.abY);
      ˊ(paramConfigurableProvider, "RIPEMD160", "PLAIN-ECDSA", "org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi$ecPlainDSARP160", BSIObjectIdentifiers.abZ);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.EC
 * JD-Core Version:    0.7.0.1
 */