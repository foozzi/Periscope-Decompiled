package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;

public class KeyPurposeId
  extends ASN1Object
{
  public static final KeyPurposeId aAa = new KeyPurposeId(azJ.ﾆ("16"));
  public static final KeyPurposeId aAb = new KeyPurposeId(azJ.ﾆ("17"));
  public static final KeyPurposeId aAc = new KeyPurposeId(azJ.ﾆ("18"));
  public static final KeyPurposeId aAd = new KeyPurposeId(azJ.ﾆ("19"));
  public static final KeyPurposeId aAe = new KeyPurposeId(new ASN1ObjectIdentifier("1.3.6.1.4.1.311.20.2.2"));
  private static final ASN1ObjectIdentifier azJ = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.3");
  public static final KeyPurposeId azK = new KeyPurposeId(Extension.azb.ﾆ("0"));
  public static final KeyPurposeId azL = new KeyPurposeId(azJ.ﾆ("1"));
  public static final KeyPurposeId azM = new KeyPurposeId(azJ.ﾆ("2"));
  public static final KeyPurposeId azN = new KeyPurposeId(azJ.ﾆ("3"));
  public static final KeyPurposeId azO = new KeyPurposeId(azJ.ﾆ("4"));
  public static final KeyPurposeId azP = new KeyPurposeId(azJ.ﾆ("5"));
  public static final KeyPurposeId azQ = new KeyPurposeId(azJ.ﾆ("6"));
  public static final KeyPurposeId azR = new KeyPurposeId(azJ.ﾆ("7"));
  public static final KeyPurposeId azS = new KeyPurposeId(azJ.ﾆ("8"));
  public static final KeyPurposeId azT = new KeyPurposeId(azJ.ﾆ("9"));
  public static final KeyPurposeId azU = new KeyPurposeId(azJ.ﾆ("10"));
  public static final KeyPurposeId azV = new KeyPurposeId(azJ.ﾆ("11"));
  public static final KeyPurposeId azW = new KeyPurposeId(azJ.ﾆ("12"));
  public static final KeyPurposeId azX = new KeyPurposeId(azJ.ﾆ("13"));
  public static final KeyPurposeId azY = new KeyPurposeId(azJ.ﾆ("14"));
  public static final KeyPurposeId azZ = new KeyPurposeId(azJ.ﾆ("15"));
  private ASN1ObjectIdentifier ayt;
  
  private KeyPurposeId(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    this.ayt = paramASN1ObjectIdentifier;
  }
  
  public ASN1Primitive ez()
  {
    return this.ayt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.KeyPurposeId
 * JD-Core Version:    0.7.0.1
 */