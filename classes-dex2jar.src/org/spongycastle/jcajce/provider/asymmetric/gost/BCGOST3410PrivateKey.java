package org.spongycastle.jcajce.provider.asymmetric.gost;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.GOST3410Params;
import org.spongycastle.jce.interfaces.GOST3410PrivateKey;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.spec.GOST3410ParameterSpec;
import org.spongycastle.jce.spec.GOST3410PrivateKeySpec;
import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

public class BCGOST3410PrivateKey
  implements GOST3410PrivateKey, PKCS12BagAttributeCarrier
{
  private BigInteger aFO;
  private transient GOST3410Params aXh;
  private transient PKCS12BagAttributeCarrier aXi = new PKCS12BagAttributeCarrierImpl();
  
  protected BCGOST3410PrivateKey() {}
  
  BCGOST3410PrivateKey(PrivateKeyInfo paramPrivateKeyInfo)
  {
    GOST3410PublicKeyAlgParameters localGOST3410PublicKeyAlgParameters = new GOST3410PublicKeyAlgParameters((ASN1Sequence)paramPrivateKeyInfo.fX().fL());
    paramPrivateKeyInfo = ASN1OctetString.ﹸ(paramPrivateKeyInfo.fY()).eM();
    byte[] arrayOfByte = new byte[paramPrivateKeyInfo.length];
    int i = 0;
    while (i != paramPrivateKeyInfo.length)
    {
      arrayOfByte[i] = paramPrivateKeyInfo[(paramPrivateKeyInfo.length - 1 - i)];
      i += 1;
    }
    this.aFO = new BigInteger(1, arrayOfByte);
    this.aXh = GOST3410ParameterSpec.ˊ(localGOST3410PublicKeyAlgParameters);
  }
  
  BCGOST3410PrivateKey(GOST3410PrivateKeyParameters paramGOST3410PrivateKeyParameters, GOST3410ParameterSpec paramGOST3410ParameterSpec)
  {
    this.aFO = paramGOST3410PrivateKeyParameters.getX();
    this.aXh = paramGOST3410ParameterSpec;
    if (paramGOST3410ParameterSpec == null) {
      throw new IllegalArgumentException("spec is null");
    }
  }
  
  BCGOST3410PrivateKey(GOST3410PrivateKey paramGOST3410PrivateKey)
  {
    this.aFO = paramGOST3410PrivateKey.getX();
    this.aXh = paramGOST3410PrivateKey.nH();
  }
  
  BCGOST3410PrivateKey(GOST3410PrivateKeySpec paramGOST3410PrivateKeySpec)
  {
    this.aFO = paramGOST3410PrivateKeySpec.getX();
    this.aXh = new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec(paramGOST3410PrivateKeySpec.getP(), paramGOST3410PrivateKeySpec.getQ(), paramGOST3410PrivateKeySpec.getA()));
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    String str = (String)paramObjectInputStream.readObject();
    if (str != null)
    {
      this.aXh = new GOST3410ParameterSpec(str, (String)paramObjectInputStream.readObject(), (String)paramObjectInputStream.readObject());
    }
    else
    {
      this.aXh = new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject()));
      paramObjectInputStream.readObject();
      paramObjectInputStream.readObject();
    }
    this.aXi = new PKCS12BagAttributeCarrierImpl();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.defaultWriteObject();
    if (this.aXh.oL() != null)
    {
      paramObjectOutputStream.writeObject(this.aXh.oL());
      paramObjectOutputStream.writeObject(this.aXh.oM());
      paramObjectOutputStream.writeObject(this.aXh.oN());
      return;
    }
    paramObjectOutputStream.writeObject(null);
    paramObjectOutputStream.writeObject(this.aXh.oO().getP());
    paramObjectOutputStream.writeObject(this.aXh.oO().getQ());
    paramObjectOutputStream.writeObject(this.aXh.oO().getA());
    paramObjectOutputStream.writeObject(this.aXh.oM());
    paramObjectOutputStream.writeObject(this.aXh.oN());
  }
  
  private boolean ʽ(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == paramObject2) {
      return true;
    }
    if (paramObject1 == null) {
      return false;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GOST3410PrivateKey)) {
      return false;
    }
    paramObject = (GOST3410PrivateKey)paramObject;
    return (getX().equals(paramObject.getX())) && (nH().oO().equals(paramObject.nH().oO())) && (nH().oM().equals(paramObject.nH().oM())) && (ʽ(nH().oN(), paramObject.nH().oN()));
  }
  
  public String getAlgorithm()
  {
    return "GOST3410";
  }
  
  public byte[] getEncoded()
  {
    byte[] arrayOfByte = getX().toByteArray();
    Object localObject;
    if (arrayOfByte[0] == 0) {
      localObject = new byte[arrayOfByte.length - 1];
    } else {
      localObject = new byte[arrayOfByte.length];
    }
    int i = 0;
    while (i != localObject.length)
    {
      localObject[i] = arrayOfByte[(arrayOfByte.length - 1 - i)];
      i += 1;
    }
    try
    {
      if ((this.aXh instanceof GOST3410ParameterSpec)) {
        localObject = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.ahc, new GOST3410PublicKeyAlgParameters(new ASN1ObjectIdentifier(this.aXh.oL()), new ASN1ObjectIdentifier(this.aXh.oM()))), new DEROctetString((byte[])localObject));
      } else {
        localObject = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.ahc), new DEROctetString((byte[])localObject));
      }
      localObject = ((PrivateKeyInfo)localObject).getEncoded("DER");
      return localObject;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
  
  public int hashCode()
  {
    return getX().hashCode() ^ this.aXh.hashCode();
  }
  
  public Enumeration nA()
  {
    return this.aXi.nA();
  }
  
  public GOST3410Params nH()
  {
    return this.aXh;
  }
  
  public void ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.aXi.ˋ(paramASN1ObjectIdentifier, paramASN1Encodable);
  }
  
  public ASN1Encodable ͺ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return this.aXi.ͺ(paramASN1ObjectIdentifier);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.gost.BCGOST3410PrivateKey
 * JD-Core Version:    0.7.0.1
 */