package org.spongycastle.jce;

import java.io.IOException;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Set;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.CertificationRequest;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSASSAPSSparams;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;

public class PKCS10CertificationRequest
  extends CertificationRequest
{
  private static Hashtable NW;
  private static Hashtable aWA = new Hashtable();
  private static Hashtable aWT;
  private static Hashtable aZK;
  private static Set aZL;
  
  static
  {
    NW = new Hashtable();
    aZK = new Hashtable();
    aWT = new Hashtable();
    aZL = new HashSet();
    aWA.put("MD2WITHRSAENCRYPTION", new ASN1ObjectIdentifier("1.2.840.113549.1.1.2"));
    aWA.put("MD2WITHRSA", new ASN1ObjectIdentifier("1.2.840.113549.1.1.2"));
    aWA.put("MD5WITHRSAENCRYPTION", new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"));
    aWA.put("MD5WITHRSA", new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"));
    aWA.put("RSAWITHMD5", new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"));
    aWA.put("SHA1WITHRSAENCRYPTION", new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"));
    aWA.put("SHA1WITHRSA", new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"));
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
    aWA.put("RSAWITHSHA1", new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"));
    aWA.put("RIPEMD128WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.ave);
    aWA.put("RIPEMD128WITHRSA", TeleTrusTObjectIdentifiers.ave);
    aWA.put("RIPEMD160WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.avd);
    aWA.put("RIPEMD160WITHRSA", TeleTrusTObjectIdentifiers.avd);
    aWA.put("RIPEMD256WITHRSAENCRYPTION", TeleTrusTObjectIdentifiers.avf);
    aWA.put("RIPEMD256WITHRSA", TeleTrusTObjectIdentifiers.avf);
    aWA.put("SHA1WITHDSA", new ASN1ObjectIdentifier("1.2.840.10040.4.3"));
    aWA.put("DSAWITHSHA1", new ASN1ObjectIdentifier("1.2.840.10040.4.3"));
    aWA.put("SHA224WITHDSA", NISTObjectIdentifiers.aoE);
    aWA.put("SHA256WITHDSA", NISTObjectIdentifiers.aoF);
    aWA.put("SHA384WITHDSA", NISTObjectIdentifiers.aoG);
    aWA.put("SHA512WITHDSA", NISTObjectIdentifiers.aoH);
    aWA.put("SHA1WITHECDSA", X9ObjectIdentifiers.aDQ);
    aWA.put("SHA224WITHECDSA", X9ObjectIdentifiers.aDU);
    aWA.put("SHA256WITHECDSA", X9ObjectIdentifiers.aDV);
    aWA.put("SHA384WITHECDSA", X9ObjectIdentifiers.aDW);
    aWA.put("SHA512WITHECDSA", X9ObjectIdentifiers.aDX);
    aWA.put("ECDSAWITHSHA1", X9ObjectIdentifiers.aDQ);
    aWA.put("GOST3411WITHGOST3410", CryptoProObjectIdentifiers.ahe);
    aWA.put("GOST3410WITHGOST3411", CryptoProObjectIdentifiers.ahe);
    aWA.put("GOST3411WITHECGOST3410", CryptoProObjectIdentifiers.ahf);
    aWA.put("GOST3411WITHECGOST3410-2001", CryptoProObjectIdentifiers.ahf);
    aWA.put("GOST3411WITHGOST3410-2001", CryptoProObjectIdentifiers.ahf);
    aWT.put(new ASN1ObjectIdentifier("1.2.840.113549.1.1.5"), "SHA1WITHRSA");
    aWT.put(PKCSObjectIdentifiers.aqC, "SHA224WITHRSA");
    aWT.put(PKCSObjectIdentifiers.aqz, "SHA256WITHRSA");
    aWT.put(PKCSObjectIdentifiers.aqA, "SHA384WITHRSA");
    aWT.put(PKCSObjectIdentifiers.aqB, "SHA512WITHRSA");
    aWT.put(CryptoProObjectIdentifiers.ahe, "GOST3411WITHGOST3410");
    aWT.put(CryptoProObjectIdentifiers.ahf, "GOST3411WITHECGOST3410");
    aWT.put(new ASN1ObjectIdentifier("1.2.840.113549.1.1.4"), "MD5WITHRSA");
    aWT.put(new ASN1ObjectIdentifier("1.2.840.113549.1.1.2"), "MD2WITHRSA");
    aWT.put(new ASN1ObjectIdentifier("1.2.840.10040.4.3"), "SHA1WITHDSA");
    aWT.put(X9ObjectIdentifiers.aDQ, "SHA1WITHECDSA");
    aWT.put(X9ObjectIdentifiers.aDU, "SHA224WITHECDSA");
    aWT.put(X9ObjectIdentifiers.aDV, "SHA256WITHECDSA");
    aWT.put(X9ObjectIdentifiers.aDW, "SHA384WITHECDSA");
    aWT.put(X9ObjectIdentifiers.aDX, "SHA512WITHECDSA");
    aWT.put(OIWObjectIdentifiers.apO, "SHA1WITHRSA");
    aWT.put(OIWObjectIdentifiers.apN, "SHA1WITHDSA");
    aWT.put(NISTObjectIdentifiers.aoE, "SHA224WITHDSA");
    aWT.put(NISTObjectIdentifiers.aoF, "SHA256WITHDSA");
    aZK.put(PKCSObjectIdentifiers.aqq, "RSA");
    aZK.put(X9ObjectIdentifiers.aEB, "DSA");
    aZL.add(X9ObjectIdentifiers.aDQ);
    aZL.add(X9ObjectIdentifiers.aDU);
    aZL.add(X9ObjectIdentifiers.aDV);
    aZL.add(X9ObjectIdentifiers.aDW);
    aZL.add(X9ObjectIdentifiers.aDX);
    aZL.add(X9ObjectIdentifiers.aEC);
    aZL.add(NISTObjectIdentifiers.aoE);
    aZL.add(NISTObjectIdentifiers.aoF);
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
  
  private static RSASSAPSSparams ˊ(AlgorithmIdentifier paramAlgorithmIdentifier, int paramInt)
  {
    return new RSASSAPSSparams(paramAlgorithmIdentifier, new AlgorithmIdentifier(PKCSObjectIdentifiers.aqw, paramAlgorithmIdentifier), new ASN1Integer(paramInt), new ASN1Integer(1L));
  }
  
  public byte[] getEncoded()
  {
    try
    {
      byte[] arrayOfByte = getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException.toString());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.PKCS10CertificationRequest
 * JD-Core Version:    0.7.0.1
 */