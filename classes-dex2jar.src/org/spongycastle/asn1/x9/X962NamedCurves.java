package org.spongycastle.asn1.x9;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.util.Strings;

public class X962NamedCurves
{
  static X9ECParametersHolder aCY = new X962NamedCurves.1();
  static X9ECParametersHolder aCZ = new X962NamedCurves.2();
  static X9ECParametersHolder aDa = new X962NamedCurves.3();
  static X9ECParametersHolder aDb = new X962NamedCurves.4();
  static X9ECParametersHolder aDc = new X962NamedCurves.5();
  static X9ECParametersHolder aDd = new X962NamedCurves.6();
  static X9ECParametersHolder aDe = new X962NamedCurves.7();
  static X9ECParametersHolder aDf = new X962NamedCurves.8();
  static X9ECParametersHolder aDg = new X962NamedCurves.9();
  static X9ECParametersHolder aDh = new X962NamedCurves.10();
  static X9ECParametersHolder aDi = new X962NamedCurves.11();
  static X9ECParametersHolder aDj = new X962NamedCurves.12();
  static X9ECParametersHolder aDk = new X962NamedCurves.13();
  static X9ECParametersHolder aDl = new X962NamedCurves.14();
  static X9ECParametersHolder aDm = new X962NamedCurves.15();
  static X9ECParametersHolder aDn = new X962NamedCurves.16();
  static X9ECParametersHolder aDo = new X962NamedCurves.17();
  static X9ECParametersHolder aDp = new X962NamedCurves.18();
  static X9ECParametersHolder aDq = new X962NamedCurves.19();
  static X9ECParametersHolder aDr = new X962NamedCurves.20();
  static X9ECParametersHolder aDs = new X962NamedCurves.21();
  static X9ECParametersHolder aDt = new X962NamedCurves.22();
  static X9ECParametersHolder aDu = new X962NamedCurves.23();
  static final Hashtable ahv = new Hashtable();
  static final Hashtable ahw;
  static final Hashtable atO = new Hashtable();
  
  static
  {
    ahw = new Hashtable();
    ˊ("prime192v1", X9ObjectIdentifiers.aEu, aCY);
    ˊ("prime192v2", X9ObjectIdentifiers.aEv, aCZ);
    ˊ("prime192v3", X9ObjectIdentifiers.aEw, aDa);
    ˊ("prime239v1", X9ObjectIdentifiers.aEx, aDb);
    ˊ("prime239v2", X9ObjectIdentifiers.aEy, aDc);
    ˊ("prime239v3", X9ObjectIdentifiers.aEz, aDd);
    ˊ("prime256v1", X9ObjectIdentifiers.aEA, aDe);
    ˊ("c2pnb163v1", X9ObjectIdentifiers.aDZ, aDf);
    ˊ("c2pnb163v2", X9ObjectIdentifiers.aEa, aDg);
    ˊ("c2pnb163v3", X9ObjectIdentifiers.aEb, aDh);
    ˊ("c2pnb176w1", X9ObjectIdentifiers.aEc, aDi);
    ˊ("c2tnb191v1", X9ObjectIdentifiers.aEd, aDj);
    ˊ("c2tnb191v2", X9ObjectIdentifiers.aEe, aDk);
    ˊ("c2tnb191v3", X9ObjectIdentifiers.aEf, aDl);
    ˊ("c2pnb208w1", X9ObjectIdentifiers.aEi, aDm);
    ˊ("c2tnb239v1", X9ObjectIdentifiers.aEj, aDn);
    ˊ("c2tnb239v2", X9ObjectIdentifiers.aEk, aDo);
    ˊ("c2tnb239v3", X9ObjectIdentifiers.aEl, aDp);
    ˊ("c2pnb272w1", X9ObjectIdentifiers.aEo, aDq);
    ˊ("c2pnb304w1", X9ObjectIdentifiers.aEp, aDr);
    ˊ("c2tnb359v1", X9ObjectIdentifiers.aEq, aDs);
    ˊ("c2pnb368w1", X9ObjectIdentifiers.aEr, aDt);
    ˊ("c2tnb431r1", X9ObjectIdentifiers.aEs, aDu);
  }
  
  static void ˊ(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier, X9ECParametersHolder paramX9ECParametersHolder)
  {
    ahv.put(paramString, paramASN1ObjectIdentifier);
    ahw.put(paramASN1ObjectIdentifier, paramString);
    atO.put(paramASN1ObjectIdentifier, paramX9ECParametersHolder);
  }
  
  public static String ˎ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return (String)ahw.get(paramASN1ObjectIdentifier);
  }
  
  public static ASN1ObjectIdentifier ϊ(String paramString)
  {
    return (ASN1ObjectIdentifier)ahv.get(Strings.ʰ(paramString));
  }
  
  public static X9ECParameters ג(String paramString)
  {
    paramString = (ASN1ObjectIdentifier)ahv.get(Strings.ʰ(paramString));
    if (paramString != null) {
      return ᐝ(paramString);
    }
    return null;
  }
  
  public static X9ECParameters ᐝ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    paramASN1ObjectIdentifier = (X9ECParametersHolder)atO.get(paramASN1ObjectIdentifier);
    if (paramASN1ObjectIdentifier != null) {
      return paramASN1ObjectIdentifier.getParameters();
    }
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x9.X962NamedCurves
 * JD-Core Version:    0.7.0.1
 */