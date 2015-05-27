package org.spongycastle.x509;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.Security;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSASSAPSSparams;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.util.Strings;

class X509Util
{
  private static Hashtable NW;
  private static Hashtable aWA = new Hashtable();
  private static Set aZL;
  
  static
  {
    NW = new Hashtable();
    aZL = new HashSet();
    aWA.put("MD2WITHRSAENCRYPTION", PKCSObjectIdentifiers.aqr);
    aWA.put("MD2WITHRSA", PKCSObjectIdentifiers.aqr);
    aWA.put("MD5WITHRSAENCRYPTION", PKCSObjectIdentifiers.aqs);
    aWA.put("MD5WITHRSA", PKCSObjectIdentifiers.aqs);
    aWA.put("SHA1WITHRSAENCRYPTION", PKCSObjectIdentifiers.aqt);
    aWA.put("SHA1WITHRSA", PKCSObjectIdentifiers.aqt);
    aWA.put("SHA224WITHRSAENCRYPTION", PKCSObjectIdentifiers.aqC);
    aWA.put("SHA224WITHRSA", PKCSObjectIdentifiers.aqC);
    aWA.put("SHA256WITHRSAENCRYPTION", PKCSObjectIdentifiers.aqz);
    aWA.put("SHA256WITHRSA", PKCSObjectIdentifiers.aqz);
    aWA.put("SHA384WITHRSAENCRYPTION", PKCSObjectIdentifiers.aqA);
    aWA.put("SHA384WITHRSA", PKCSObjectIdentifiers.aqA);
    aWA.put("SHA512WITHRSAENCRYPTION", PKCSObjectIdentifiers.aqB);
    aWA.put("SHA512WITHRSA", PKCSObjectIdentifiers.aqB);
    aWA.put("SHA1WITHRSAANDMGF1", PKCSObjectIdentifiers.aqy);
    aWA.put("SHA224WITHRSAANDMGF1", PKCSObjectIdentifiers.aqy);
    aWA.put("SHA256WITHRSAANDMGF1", PKCSObjectIdentifiers.aqy);
    aWA.put("SHA384WITHRSAANDMGF1", PKCSObjectIdentifiers.aqy);
    aWA.put("SHA512WITHRSAANDMGF1", PKCSObjectIdentifiers.aqy);
    aWA.put("RIPEMD160WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.avd);
    aWA.put("RIPEMD160WITHRSA", TeleTrusTObjectIdentifiers.avd);
    aWA.put("RIPEMD128WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.ave);
    aWA.put("RIPEMD128WITHRSA", TeleTrusTObjectIdentifiers.ave);
    aWA.put("RIPEMD256WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.avf);
    aWA.put("RIPEMD256WITHRSA", TeleTrusTObjectIdentifiers.avf);
    aWA.put("SHA1WITHDSA", X9ObjectIdentifiers.aEC);
    aWA.put("DSAWITHSHA1", X9ObjectIdentifiers.aEC);
    aWA.put("SHA224WITHDSA", NISTObjectIdentifiers.aoE);
    aWA.put("SHA256WITHDSA", NISTObjectIdentifiers.aoF);
    aWA.put("SHA384WITHDSA", NISTObjectIdentifiers.aoG);
    aWA.put("SHA512WITHDSA", NISTObjectIdentifiers.aoH);
    aWA.put("SHA1WITHECDSA", X9ObjectIdentifiers.aDQ);
    aWA.put("ECDSAWITHSHA1", X9ObjectIdentifiers.aDQ);
    aWA.put("SHA224WITHECDSA", X9ObjectIdentifiers.aDU);
    aWA.put("SHA256WITHECDSA", X9ObjectIdentifiers.aDV);
    aWA.put("SHA384WITHECDSA", X9ObjectIdentifiers.aDW);
    aWA.put("SHA512WITHECDSA", X9ObjectIdentifiers.aDX);
    aWA.put("GOST3411WITHGOST3410", CryptoProObjectIdentifiers.ahe);
    aWA.put("GOST3411WITHGOST3410-94", CryptoProObjectIdentifiers.ahe);
    aWA.put("GOST3411WITHECGOST3410", CryptoProObjectIdentifiers.ahf);
    aWA.put("GOST3411WITHECGOST3410-2001", CryptoProObjectIdentifiers.ahf);
    aWA.put("GOST3411WITHGOST3410-2001", CryptoProObjectIdentifiers.ahf);
    aZL.add(X9ObjectIdentifiers.aDQ);
    aZL.add(X9ObjectIdentifiers.aDU);
    aZL.add(X9ObjectIdentifiers.aDV);
    aZL.add(X9ObjectIdentifiers.aDW);
    aZL.add(X9ObjectIdentifiers.aDX);
    aZL.add(X9ObjectIdentifiers.aEC);
    aZL.add(NISTObjectIdentifiers.aoE);
    aZL.add(NISTObjectIdentifiers.aoF);
    aZL.add(NISTObjectIdentifiers.aoG);
    aZL.add(NISTObjectIdentifiers.aoH);
    aZL.add(CryptoProObjectIdentifiers.ahe);
    aZL.add(CryptoProObjectIdentifiers.ahf);
    AlgorithmIdentifier localAlgorithmIdentifier = new AlgorithmIdentifier(OIWObjectIdentifiers.apM, DERNull.abj);
    NW.put("SHA1WITHRSAANDMGF1", ˊ(localAlgorithmIdentifier, 20));
    localAlgorithmIdentifier = new AlgorithmIdentifier(NISTObjectIdentifiers.aoe, DERNull.abj);
    NW.put("SHA224WITHRSAANDMGF1", ˊ(localAlgorithmIdentifier, 28));
    localAlgorithmIdentifier = new AlgorithmIdentifier(NISTObjectIdentifiers.aob, DERNull.abj);
    NW.put("SHA256WITHRSAANDMGF1", ˊ(localAlgorithmIdentifier, 32));
    localAlgorithmIdentifier = new AlgorithmIdentifier(NISTObjectIdentifiers.aoc, DERNull.abj);
    NW.put("SHA384WITHRSAANDMGF1", ˊ(localAlgorithmIdentifier, 48));
    localAlgorithmIdentifier = new AlgorithmIdentifier(NISTObjectIdentifiers.aod, DERNull.abj);
    NW.put("SHA512WITHRSAANDMGF1", ˊ(localAlgorithmIdentifier, 64));
  }
  
  static Provider getProvider(String paramString)
  {
    Provider localProvider = Security.getProvider(paramString);
    if (localProvider == null) {
      throw new NoSuchProviderException("Provider " + paramString + " not found");
    }
    return localProvider;
  }
  
  private static RSASSAPSSparams ˊ(AlgorithmIdentifier paramAlgorithmIdentifier, int paramInt)
  {
    return new RSASSAPSSparams(paramAlgorithmIdentifier, new AlgorithmIdentifier(PKCSObjectIdentifiers.aqw, paramAlgorithmIdentifier), new ASN1Integer(paramInt), new ASN1Integer(1L));
  }
  
  static Implementation ˊ(String paramString1, String paramString2, Provider paramProvider)
  {
    for (paramString2 = Strings.ʟ(paramString2);; paramString2 = str)
    {
      str = paramProvider.getProperty("Alg.Alias." + paramString1 + "." + paramString2);
      if (str == null) {
        break;
      }
    }
    String str = paramProvider.getProperty(paramString1 + "." + paramString2);
    if (str != null) {
      try
      {
        paramString1 = paramProvider.getClass().getClassLoader();
        if (paramString1 != null) {
          paramString1 = paramString1.loadClass(str);
        } else {
          paramString1 = Class.forName(str);
        }
        paramString1 = new Implementation(paramString1.newInstance(), paramProvider);
        return paramString1;
      }
      catch (ClassNotFoundException paramString1)
      {
        throw new IllegalStateException("algorithm " + paramString2 + " in provider " + paramProvider.getName() + " but no class \"" + str + "\" found!");
      }
      catch (Exception paramString1)
      {
        throw new IllegalStateException("algorithm " + paramString2 + " in provider " + paramProvider.getName() + " but class \"" + str + "\" inaccessible!");
      }
    }
    throw new NoSuchAlgorithmException("cannot find implementation " + paramString2 + " for provider " + paramProvider.getName());
  }
  
  static class Implementation
  {
    Object bkZ;
    Provider bla;
    
    Implementation(Object paramObject, Provider paramProvider)
    {
      this.bkZ = paramObject;
      this.bla = paramProvider;
    }
    
    Provider getProvider()
    {
      return this.bla;
    }
    
    Object tG()
    {
      return this.bkZ;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.X509Util
 * JD-Core Version:    0.7.0.1
 */