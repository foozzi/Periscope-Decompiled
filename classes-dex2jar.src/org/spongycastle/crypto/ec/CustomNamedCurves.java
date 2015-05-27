package org.spongycastle.crypto.ec;

import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.sec.SECObjectIdentifiers;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.Config;
import org.spongycastle.math.ec.endo.GLVTypeBEndomorphism;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.Strings;

public class CustomNamedCurves
{
  static X9ECParametersHolder aIj = new CustomNamedCurves.1();
  static final Hashtable aIk;
  static final Hashtable aIl;
  static final Hashtable aIm;
  static final Hashtable aIn;
  static X9ECParametersHolder ato = new CustomNamedCurves.2();
  static X9ECParametersHolder atp = new CustomNamedCurves.3();
  static X9ECParametersHolder atq = new CustomNamedCurves.4();
  static X9ECParametersHolder atr = new CustomNamedCurves.5();
  static X9ECParametersHolder ats = new CustomNamedCurves.6();
  static X9ECParametersHolder att = new CustomNamedCurves.7();
  static X9ECParametersHolder atu = new CustomNamedCurves.8();
  static X9ECParametersHolder atv = new CustomNamedCurves.9();
  
  static
  {
    aIk = new Hashtable();
    aIl = new Hashtable();
    aIm = new Hashtable();
    aIn = new Hashtable();
    ˊ("curve25519", aIj);
    ˋ("secp192k1", SECObjectIdentifiers.aum, ato);
    ˋ("secp192r1", SECObjectIdentifiers.auv, atp);
    ˋ("secp224k1", SECObjectIdentifiers.aun, atq);
    ˋ("secp224r1", SECObjectIdentifiers.auo, atr);
    ˋ("secp256k1", SECObjectIdentifiers.atZ, ats);
    ˋ("secp256r1", SECObjectIdentifiers.auw, att);
    ˋ("secp384r1", SECObjectIdentifiers.aup, atu);
    ˋ("secp521r1", SECObjectIdentifiers.auq, atv);
    ˋ("P-192", SECObjectIdentifiers.auv);
    ˋ("P-224", SECObjectIdentifiers.auo);
    ˋ("P-256", SECObjectIdentifiers.auw);
    ˋ("P-384", SECObjectIdentifiers.aup);
    ˋ("P-521", SECObjectIdentifiers.auq);
  }
  
  public static Enumeration jk()
  {
    return aIk.keys();
  }
  
  private static ECCurve ˊ(ECCurve paramECCurve)
  {
    return paramECCurve;
  }
  
  private static ECCurve ˊ(ECCurve paramECCurve, GLVTypeBParameters paramGLVTypeBParameters)
  {
    return paramECCurve.pf().ˊ(new GLVTypeBEndomorphism(paramECCurve, paramGLVTypeBParameters)).pq();
  }
  
  static void ˊ(String paramString, X9ECParametersHolder paramX9ECParametersHolder)
  {
    aIk.put(paramString, paramX9ECParametersHolder);
  }
  
  static void ˋ(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    paramString = Strings.ʰ(paramString);
    aIl.put(paramString, paramASN1ObjectIdentifier);
    aIk.put(paramString, aIm.get(paramASN1ObjectIdentifier));
  }
  
  static void ˋ(String paramString, ASN1ObjectIdentifier paramASN1ObjectIdentifier, X9ECParametersHolder paramX9ECParametersHolder)
  {
    aIk.put(paramString, paramX9ECParametersHolder);
    aIl.put(paramString, paramASN1ObjectIdentifier);
    aIn.put(paramASN1ObjectIdentifier, paramString);
    aIm.put(paramASN1ObjectIdentifier, paramX9ECParametersHolder);
  }
  
  public static X9ECParameters ג(String paramString)
  {
    paramString = (X9ECParametersHolder)aIk.get(Strings.ʰ(paramString));
    if (paramString == null) {
      return null;
    }
    return paramString.getParameters();
  }
  
  public static X9ECParameters ᐝ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    paramASN1ObjectIdentifier = (X9ECParametersHolder)aIm.get(paramASN1ObjectIdentifier);
    if (paramASN1ObjectIdentifier == null) {
      return null;
    }
    return paramASN1ObjectIdentifier.getParameters();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.ec.CustomNamedCurves
 * JD-Core Version:    0.7.0.1
 */