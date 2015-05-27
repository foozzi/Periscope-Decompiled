package org.spongycastle.jcajce.provider.util;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.util.Strings;

public class DigestFactory
{
  private static Set aZA;
  private static Set aZB;
  private static Set aZC;
  private static Set aZD;
  private static Map aZE;
  private static Set aZy = new HashSet();
  private static Set aZz = new HashSet();
  
  static
  {
    aZA = new HashSet();
    aZB = new HashSet();
    aZC = new HashSet();
    aZD = new HashSet();
    aZE = new HashMap();
    aZy.add("MD5");
    aZy.add(PKCSObjectIdentifiers.aqT.getId());
    aZz.add("SHA1");
    aZz.add("SHA-1");
    aZz.add(OIWObjectIdentifiers.apM.getId());
    aZA.add("SHA224");
    aZA.add("SHA-224");
    aZA.add(NISTObjectIdentifiers.aoe.getId());
    aZB.add("SHA256");
    aZB.add("SHA-256");
    aZB.add(NISTObjectIdentifiers.aob.getId());
    aZC.add("SHA384");
    aZC.add("SHA-384");
    aZC.add(NISTObjectIdentifiers.aoc.getId());
    aZD.add("SHA512");
    aZD.add("SHA-512");
    aZD.add(NISTObjectIdentifiers.aod.getId());
    aZE.put("MD5", PKCSObjectIdentifiers.aqT);
    aZE.put(PKCSObjectIdentifiers.aqT.getId(), PKCSObjectIdentifiers.aqT);
    aZE.put("SHA1", OIWObjectIdentifiers.apM);
    aZE.put("SHA-1", OIWObjectIdentifiers.apM);
    aZE.put(OIWObjectIdentifiers.apM.getId(), OIWObjectIdentifiers.apM);
    aZE.put("SHA224", NISTObjectIdentifiers.aoe);
    aZE.put("SHA-224", NISTObjectIdentifiers.aoe);
    aZE.put(NISTObjectIdentifiers.aoe.getId(), NISTObjectIdentifiers.aoe);
    aZE.put("SHA256", NISTObjectIdentifiers.aob);
    aZE.put("SHA-256", NISTObjectIdentifiers.aob);
    aZE.put(NISTObjectIdentifiers.aob.getId(), NISTObjectIdentifiers.aob);
    aZE.put("SHA384", NISTObjectIdentifiers.aoc);
    aZE.put("SHA-384", NISTObjectIdentifiers.aoc);
    aZE.put(NISTObjectIdentifiers.aoc.getId(), NISTObjectIdentifiers.aoc);
    aZE.put("SHA512", NISTObjectIdentifiers.aod);
    aZE.put("SHA-512", NISTObjectIdentifiers.aod);
    aZE.put(NISTObjectIdentifiers.aod.getId(), NISTObjectIdentifiers.aod);
  }
  
  public static ASN1ObjectIdentifier ϊ(String paramString)
  {
    return (ASN1ObjectIdentifier)aZE.get(paramString);
  }
  
  public static Digest ﺛ(String paramString)
  {
    paramString = Strings.ʟ(paramString);
    if (aZz.contains(paramString)) {
      return new SHA1Digest();
    }
    if (aZy.contains(paramString)) {
      return new MD5Digest();
    }
    if (aZA.contains(paramString)) {
      return new SHA224Digest();
    }
    if (aZB.contains(paramString)) {
      return new SHA256Digest();
    }
    if (aZC.contains(paramString)) {
      return new SHA384Digest();
    }
    if (aZD.contains(paramString)) {
      return new SHA512Digest();
    }
    return null;
  }
  
  public static boolean ｰ(String paramString1, String paramString2)
  {
    return ((aZz.contains(paramString1)) && (aZz.contains(paramString2))) || ((aZA.contains(paramString1)) && (aZA.contains(paramString2))) || ((aZB.contains(paramString1)) && (aZB.contains(paramString2))) || ((aZC.contains(paramString1)) && (aZC.contains(paramString2))) || ((aZD.contains(paramString1)) && (aZD.contains(paramString2))) || ((aZy.contains(paramString1)) && (aZy.contains(paramString2)));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.util.DigestFactory
 * JD-Core Version:    0.7.0.1
 */