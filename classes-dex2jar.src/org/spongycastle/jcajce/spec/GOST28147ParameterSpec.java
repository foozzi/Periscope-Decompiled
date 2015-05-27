package org.spongycastle.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.crypto.engines.GOST28147Engine;
import org.spongycastle.util.Arrays;

public class GOST28147ParameterSpec
  implements AlgorithmParameterSpec
{
  private static Map aZG = new HashMap();
  private byte[] aFY = null;
  private byte[] iv = null;
  
  static
  {
    aZG.put(CryptoProObjectIdentifiers.agY, "E-A");
    aZG.put(CryptoProObjectIdentifiers.agZ, "E-B");
    aZG.put(CryptoProObjectIdentifiers.aha, "E-C");
    aZG.put(CryptoProObjectIdentifiers.ahb, "E-D");
  }
  
  public GOST28147ParameterSpec(String paramString)
  {
    this.aFY = GOST28147Engine.ᓒ(paramString);
  }
  
  public GOST28147ParameterSpec(ASN1ObjectIdentifier paramASN1ObjectIdentifier, byte[] paramArrayOfByte)
  {
    this(ˎ(paramASN1ObjectIdentifier));
    this.iv = Arrays.І(paramArrayOfByte);
  }
  
  private static String ˎ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    String str = (String)aZG.get(paramASN1ObjectIdentifier);
    if (str == null) {
      throw new IllegalArgumentException("unknown OID: " + paramASN1ObjectIdentifier);
    }
    return str;
  }
  
  public byte[] getIV()
  {
    if (this.iv == null) {
      return null;
    }
    byte[] arrayOfByte = new byte[this.iv.length];
    System.arraycopy(this.iv, 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public byte[] nD()
  {
    return this.aFY;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.spec.GOST28147ParameterSpec
 * JD-Core Version:    0.7.0.1
 */