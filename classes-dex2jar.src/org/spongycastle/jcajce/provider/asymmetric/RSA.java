package org.spongycastle.jcajce.provider.asymmetric;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.util.AsymmetricAlgorithmProvider;

public class RSA
{
  public static class Mappings
    extends AsymmetricAlgorithmProvider
  {
    private void ˊ(ConfigurableProvider paramConfigurableProvider, String paramString1, String paramString2, ASN1ObjectIdentifier paramASN1ObjectIdentifier)
    {
      String str1 = paramString1 + "WITHRSA";
      String str2 = paramString1 + "withRSA";
      String str3 = paramString1 + "WithRSA";
      String str4 = paramString1 + "/" + "RSA";
      String str5 = paramString1 + "WITHRSAENCRYPTION";
      String str6 = paramString1 + "withRSAEncryption";
      paramString1 = paramString1 + "WithRSAEncryption";
      paramConfigurableProvider.ﹶ("Signature." + str1, paramString2);
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + str2, str1);
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + str3, str1);
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + str5, str1);
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + str6, str1);
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + paramString1, str1);
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + str4, str1);
      if (paramASN1ObjectIdentifier != null)
      {
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + paramASN1ObjectIdentifier, str1);
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature.OID." + paramASN1ObjectIdentifier, str1);
      }
    }
    
    public void ˊ(ConfigurableProvider paramConfigurableProvider)
    {
      paramConfigurableProvider.ﹶ("AlgorithmParameters.OAEP", "org.spongycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$OAEP");
      paramConfigurableProvider.ﹶ("AlgorithmParameters.PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi$PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.RSAPSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.RSASSA-PSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA224withRSA/PSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA256withRSA/PSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA384withRSA/PSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA512withRSA/PSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA224WITHRSAANDMGF1", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA256WITHRSAANDMGF1", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA384WITHRSAANDMGF1", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA512WITHRSAANDMGF1", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.RAWRSAPSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.NONEWITHRSAPSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.NONEWITHRSASSA-PSS", "PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.NONEWITHRSAANDMGF1", "PSS");
      paramConfigurableProvider.ﹶ("Cipher.RSA", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding");
      paramConfigurableProvider.ﹶ("Cipher.RSA/RAW", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$NoPadding");
      paramConfigurableProvider.ﹶ("Cipher.RSA/PKCS1", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding");
      paramConfigurableProvider.ﹶ("Cipher.1.2.840.113549.1.1.1", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding");
      paramConfigurableProvider.ﹶ("Cipher.2.5.8.1.1", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding");
      paramConfigurableProvider.ﹶ("Cipher.RSA/1", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PrivateOnly");
      paramConfigurableProvider.ﹶ("Cipher.RSA/2", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$PKCS1v1_5Padding_PublicOnly");
      paramConfigurableProvider.ﹶ("Cipher.RSA/OAEP", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$OAEPPadding");
      paramConfigurableProvider.ﹶ("Cipher." + PKCSObjectIdentifiers.aqv, "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$OAEPPadding");
      paramConfigurableProvider.ﹶ("Cipher.RSA/ISO9796-1", "org.spongycastle.jcajce.provider.asymmetric.rsa.CipherSpi$ISO9796d1Padding");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.RSA//RAW", "RSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.RSA//NOPADDING", "RSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.RSA//PKCS1PADDING", "RSA/PKCS1");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.RSA//OAEPPADDING", "RSA/OAEP");
      paramConfigurableProvider.ﹶ("Alg.Alias.Cipher.RSA//ISO9796-1PADDING", "RSA/ISO9796-1");
      paramConfigurableProvider.ﹶ("KeyFactory.RSA", "org.spongycastle.jcajce.provider.asymmetric.rsa.KeyFactorySpi");
      paramConfigurableProvider.ﹶ("KeyPairGenerator.RSA", "org.spongycastle.jcajce.provider.asymmetric.rsa.KeyPairGeneratorSpi");
      KeyFactorySpi localKeyFactorySpi = new KeyFactorySpi();
      ˊ(paramConfigurableProvider, PKCSObjectIdentifiers.aqq, "RSA", localKeyFactorySpi);
      ˊ(paramConfigurableProvider, X509ObjectIdentifiers.aCf, "RSA", localKeyFactorySpi);
      ˊ(paramConfigurableProvider, PKCSObjectIdentifiers.aqv, "RSA", localKeyFactorySpi);
      ˊ(paramConfigurableProvider, PKCSObjectIdentifiers.aqy, "RSA", localKeyFactorySpi);
      ˋ(paramConfigurableProvider, PKCSObjectIdentifiers.aqq, "RSA");
      ˋ(paramConfigurableProvider, X509ObjectIdentifiers.aCf, "RSA");
      ˋ(paramConfigurableProvider, PKCSObjectIdentifiers.aqv, "OAEP");
      ˋ(paramConfigurableProvider, PKCSObjectIdentifiers.aqy, "PSS");
      paramConfigurableProvider.ﹶ("Signature.RSASSA-PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$PSSwithRSA");
      paramConfigurableProvider.ﹶ("Signature." + PKCSObjectIdentifiers.aqy, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$PSSwithRSA");
      paramConfigurableProvider.ﹶ("Signature.OID." + PKCSObjectIdentifiers.aqy, "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$PSSwithRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA224WITHRSAANDMGF1", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA256WITHRSAANDMGF1", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA384WITHRSAANDMGF1", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA512WITHRSAANDMGF1", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA224withRSA/PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA224withRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA256withRSA/PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA256withRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA384withRSA/PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA384withRSA");
      paramConfigurableProvider.ﹶ("Signature.SHA512withRSA/PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA512withRSA");
      paramConfigurableProvider.ﹶ("Signature.RSA", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$noneRSA");
      paramConfigurableProvider.ﹶ("Signature.RAWRSASSA-PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$nonePSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.RAWRSA", "RSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.NONEWITHRSA", "RSA");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.RAWRSAPSS", "RAWRSASSA-PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.NONEWITHRSAPSS", "RAWRSASSA-PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.NONEWITHRSASSA-PSS", "RAWRSASSA-PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.NONEWITHRSAANDMGF1", "RAWRSASSA-PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.RSAPSS", "RSASSA-PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA224withRSAandMGF1", "SHA224withRSA/PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA256withRSAandMGF1", "SHA256withRSA/PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA384withRSAandMGF1", "SHA384withRSA/PSS");
      paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA512withRSAandMGF1", "SHA512withRSA/PSS");
      if (paramConfigurableProvider.ﹺ("MessageDigest", "MD2")) {
        ˊ(paramConfigurableProvider, "MD2", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD2", PKCSObjectIdentifiers.aqr);
      }
      if (paramConfigurableProvider.ﹺ("MessageDigest", "MD4")) {
        ˊ(paramConfigurableProvider, "MD4", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD4", PKCSObjectIdentifiers.apG);
      }
      if (paramConfigurableProvider.ﹺ("MessageDigest", "MD5"))
      {
        ˊ(paramConfigurableProvider, "MD5", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$MD5", PKCSObjectIdentifiers.aqs);
        paramConfigurableProvider.ﹶ("Signature.MD5withRSA/ISO9796-2", "org.spongycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$MD5WithRSAEncryption");
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature.MD5WithRSA/ISO9796-2", "MD5withRSA/ISO9796-2");
      }
      if (paramConfigurableProvider.ﹺ("MessageDigest", "SHA1"))
      {
        paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA1withRSA/PSS", "PSS");
        paramConfigurableProvider.ﹶ("Alg.Alias.AlgorithmParameters.SHA1WITHRSAANDMGF1", "PSS");
        paramConfigurableProvider.ﹶ("Signature.SHA1withRSA/PSS", "org.spongycastle.jcajce.provider.asymmetric.rsa.PSSSignatureSpi$SHA1withRSA");
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1withRSAandMGF1", "SHA1withRSA/PSS");
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1WITHRSAANDMGF1", "SHA1withRSA/PSS");
        ˊ(paramConfigurableProvider, "SHA1", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA1", PKCSObjectIdentifiers.aqt);
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature.SHA1WithRSA/ISO9796-2", "SHA1withRSA/ISO9796-2");
        paramConfigurableProvider.ﹶ("Signature.SHA1withRSA/ISO9796-2", "org.spongycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$SHA1WithRSAEncryption");
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature." + OIWObjectIdentifiers.apO, "SHA1WITHRSA");
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature.OID." + OIWObjectIdentifiers.apO, "SHA1WITHRSA");
      }
      ˊ(paramConfigurableProvider, "SHA224", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA224", PKCSObjectIdentifiers.aqC);
      ˊ(paramConfigurableProvider, "SHA256", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA256", PKCSObjectIdentifiers.aqz);
      ˊ(paramConfigurableProvider, "SHA384", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA384", PKCSObjectIdentifiers.aqA);
      ˊ(paramConfigurableProvider, "SHA512", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$SHA512", PKCSObjectIdentifiers.aqB);
      if (paramConfigurableProvider.ﹺ("MessageDigest", "RIPEMD128"))
      {
        ˊ(paramConfigurableProvider, "RIPEMD128", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128", TeleTrusTObjectIdentifiers.ave);
        ˊ(paramConfigurableProvider, "RMD128", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD128", null);
      }
      if (paramConfigurableProvider.ﹺ("MessageDigest", "RIPEMD160"))
      {
        ˊ(paramConfigurableProvider, "RIPEMD160", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160", TeleTrusTObjectIdentifiers.avd);
        ˊ(paramConfigurableProvider, "RMD160", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD160", null);
        paramConfigurableProvider.ﹶ("Alg.Alias.Signature.RIPEMD160WithRSA/ISO9796-2", "RIPEMD160withRSA/ISO9796-2");
        paramConfigurableProvider.ﹶ("Signature.RIPEMD160withRSA/ISO9796-2", "org.spongycastle.jcajce.provider.asymmetric.rsa.ISOSignatureSpi$RIPEMD160WithRSAEncryption");
      }
      if (paramConfigurableProvider.ﹺ("MessageDigest", "RIPEMD256"))
      {
        ˊ(paramConfigurableProvider, "RIPEMD256", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256", TeleTrusTObjectIdentifiers.avf);
        ˊ(paramConfigurableProvider, "RMD256", "org.spongycastle.jcajce.provider.asymmetric.rsa.DigestSignatureSpi$RIPEMD256", null);
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.RSA
 * JD-Core Version:    0.7.0.1
 */