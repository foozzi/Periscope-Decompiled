package org.spongycastle.asn1.sec;

import java.math.BigInteger;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Config;
import org.spongycastle.math.ec.endo.GLVTypeBEndomorphism;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

public class SECNamedCurves
{
  static final Hashtable ahv;
  static final Hashtable ahw;
  static X9ECParametersHolder atA;
  static X9ECParametersHolder atB;
  static X9ECParametersHolder atC;
  static X9ECParametersHolder atD;
  static X9ECParametersHolder atE;
  static X9ECParametersHolder atF;
  static X9ECParametersHolder atG;
  static X9ECParametersHolder atH;
  static X9ECParametersHolder atI;
  static X9ECParametersHolder atJ;
  static X9ECParametersHolder atK;
  static X9ECParametersHolder atL;
  static X9ECParametersHolder atM;
  static X9ECParametersHolder atN;
  static final Hashtable atO;
  static X9ECParametersHolder ath = new SECNamedCurves.1();
  static X9ECParametersHolder ati = new SECNamedCurves.2();
  static X9ECParametersHolder atj = new SECNamedCurves.3();
  static X9ECParametersHolder atk = new SECNamedCurves.4();
  static X9ECParametersHolder atl = new SECNamedCurves.5();
  static X9ECParametersHolder atm = new SECNamedCurves.6();
  static X9ECParametersHolder atn = new SECNamedCurves.7();
  static X9ECParametersHolder ato = new SECNamedCurves.8();
  static X9ECParametersHolder atp = new SECNamedCurves.9();
  static X9ECParametersHolder atq = new SECNamedCurves.10();
  static X9ECParametersHolder atr = new SECNamedCurves.11();
  static X9ECParametersHolder ats = new SECNamedCurves.12();
  static X9ECParametersHolder att = new SECNamedCurves.13();
  static X9ECParametersHolder atu = new SECNamedCurves.14();
  static X9ECParametersHolder atv = new SECNamedCurves.15();
  static X9ECParametersHolder atw = new SECNamedCurves.16();
  static X9ECParametersHolder atx = new SECNamedCurves.17();
  static X9ECParametersHolder aty = new SECNamedCurves.18();
  static X9ECParametersHolder atz = new SECNamedCurves.19();
  
  static
  {
    atA = new SECNamedCurves.20();
    atB = new SECNamedCurves.21();
    atC = new SECNamedCurves.22();
    atD = new SECNamedCurves.23();
    atE = new SECNamedCurves.24();
    atF = new SECNamedCurves.25();
    atG = new SECNamedCurves.26();
    atH = new SECNamedCurves.27();
    atI = new SECNamedCurves.28();
    atJ = new SECNamedCurves.29();
    atK = new SECNamedCurves.30();
    atL = new SECNamedCurves.31();
    atM = new SECNamedCurves.32();
    atN = new SECNamedCurves.33();
    ahv = new Hashtable();
    atO = new Hashtable();
    ahw = new Hashtable();
    ˊ("secp112r1", SECObjectIdentifiers.atV, ath);
    ˊ("secp112r2", SECObjectIdentifiers.atW, ati);
    ˊ("secp128r1", SECObjectIdentifiers.auj, atj);
    ˊ("secp128r2", SECObjectIdentifiers.auk, atk);
    ˊ("secp160k1", SECObjectIdentifiers.atY, atl);
    ˊ("secp160r1", SECObjectIdentifiers.atX, atm);
    ˊ("secp160r2", SECObjectIdentifiers.aul, atn);
    ˊ("secp192k1", SECObjectIdentifiers.aum, ato);
    ˊ("secp192r1", SECObjectIdentifiers.auv, atp);
    ˊ("secp224k1", SECObjectIdentifiers.aun, atq);
    ˊ("secp224r1", SECObjectIdentifiers.auo, atr);
    ˊ("secp256k1", SECObjectIdentifiers.atZ, ats);
    ˊ("secp256r1", SECObjectIdentifiers.auw, att);
    ˊ("secp384r1", SECObjectIdentifiers.aup, atu);
    ˊ("secp521r1", SECObjectIdentifiers.auq, atv);
    ˊ("sect113r1", SECObjectIdentifiers.atT, atw);
    ˊ("sect113r2", SECObjectIdentifiers.atU, atx);
    ˊ("sect131r1", SECObjectIdentifiers.aud, aty);
    ˊ("sect131r2", SECObjectIdentifiers.aue, atz);
    ˊ("sect163k1", SECObjectIdentifiers.atQ, atA);
    ˊ("sect163r1", SECObjectIdentifiers.atR, atB);
    ˊ("sect163r2", SECObjectIdentifiers.aua, atC);
    ˊ("sect193r1", SECObjectIdentifiers.auf, atD);
    ˊ("sect193r2", SECObjectIdentifiers.aug, atE);
    ˊ("sect233k1", SECObjectIdentifiers.auh, atF);
    ˊ("sect233r1", SECObjectIdentifiers.aui, atG);
    ˊ("sect239k1", SECObjectIdentifiers.atS, atH);
    ˊ("sect283k1", SECObjectIdentifiers.aub, atI);
    ˊ("sect283r1", SECObjectIdentifiers.auc, atJ);
    ˊ("sect409k1", SECObjectIdentifiers.aur, atK);
    ˊ("sect409r1", SECObjectIdentifiers.aus, atL);
    ˊ("sect571k1", SECObjectIdentifiers.aut, atM);
    ˊ("sect571r1", SECObjectIdentifiers.auu, atN);
  }
  
  private static ECCurve ˊ(ECCurve paramECCurve)
  {
    return paramECCurve;
  }
  
  private static ECCurve ˊ(ECCurve paramECCurve, GLVTypeBParameters paramGLVTypeBParameters)
  {
    return paramECCurve.pf().ˊ(new GLVTypeBEndomorphism(paramECCurve, paramGLVTypeBParameters)).pq();
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
  
  private static BigInteger ז(String paramString)
  {
    return new BigInteger(1, Hex.ᵥ(paramString));
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
 * Qualified Name:     org.spongycastle.asn1.sec.SECNamedCurves
 * JD-Core Version:    0.7.0.1
 */