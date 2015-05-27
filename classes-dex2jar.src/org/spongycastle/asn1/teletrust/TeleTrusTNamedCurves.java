package org.spongycastle.asn1.teletrust;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.util.Strings;

public class TeleTrusTNamedCurves
{
  static final Hashtable ahv;
  static final Hashtable ahw;
  static final Hashtable atO;
  static X9ECParametersHolder auK = new TeleTrusTNamedCurves.1();
  static X9ECParametersHolder auL = new TeleTrusTNamedCurves.2();
  static X9ECParametersHolder auM = new TeleTrusTNamedCurves.3();
  static X9ECParametersHolder auN = new TeleTrusTNamedCurves.4();
  static X9ECParametersHolder auO = new TeleTrusTNamedCurves.5();
  static X9ECParametersHolder auP = new TeleTrusTNamedCurves.6();
  static X9ECParametersHolder auQ = new TeleTrusTNamedCurves.7();
  static X9ECParametersHolder auR = new TeleTrusTNamedCurves.8();
  static X9ECParametersHolder auS = new TeleTrusTNamedCurves.9();
  static X9ECParametersHolder auT = new TeleTrusTNamedCurves.10();
  static X9ECParametersHolder auU = new TeleTrusTNamedCurves.11();
  static X9ECParametersHolder auV = new TeleTrusTNamedCurves.12();
  static X9ECParametersHolder auW = new TeleTrusTNamedCurves.13();
  static X9ECParametersHolder auX = new TeleTrusTNamedCurves.14();
  
  static
  {
    ahv = new Hashtable();
    atO = new Hashtable();
    ahw = new Hashtable();
    ˊ("brainpoolp160r1", TeleTrusTObjectIdentifiers.avl, auK);
    ˊ("brainpoolp160t1", TeleTrusTObjectIdentifiers.avm, auL);
    ˊ("brainpoolp192r1", TeleTrusTObjectIdentifiers.avn, auM);
    ˊ("brainpoolp192t1", TeleTrusTObjectIdentifiers.avo, auN);
    ˊ("brainpoolp224r1", TeleTrusTObjectIdentifiers.avp, auO);
    ˊ("brainpoolp224t1", TeleTrusTObjectIdentifiers.avq, auP);
    ˊ("brainpoolp256r1", TeleTrusTObjectIdentifiers.avr, auQ);
    ˊ("brainpoolp256t1", TeleTrusTObjectIdentifiers.avs, auR);
    ˊ("brainpoolp320r1", TeleTrusTObjectIdentifiers.avt, auS);
    ˊ("brainpoolp320t1", TeleTrusTObjectIdentifiers.avu, auT);
    ˊ("brainpoolp384r1", TeleTrusTObjectIdentifiers.avv, auU);
    ˊ("brainpoolp384t1", TeleTrusTObjectIdentifiers.avw, auV);
    ˊ("brainpoolp512r1", TeleTrusTObjectIdentifiers.avx, auW);
    ˊ("brainpoolp512t1", TeleTrusTObjectIdentifiers.avy, auX);
  }
  
  private static ECCurve ˊ(ECCurve paramECCurve)
  {
    return paramECCurve;
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
 * Qualified Name:     org.spongycastle.asn1.teletrust.TeleTrusTNamedCurves
 * JD-Core Version:    0.7.0.1
 */