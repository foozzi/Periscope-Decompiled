package org.spongycastle.jcajce.provider.asymmetric.gost;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.GOST3410PublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jce.interfaces.GOST3410Params;
import org.spongycastle.jce.interfaces.GOST3410PublicKey;
import org.spongycastle.jce.spec.GOST3410ParameterSpec;
import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;
import org.spongycastle.jce.spec.GOST3410PublicKeySpec;

public class BCGOST3410PublicKey
  implements GOST3410PublicKey
{
  private BigInteger aPZ;
  private transient GOST3410Params aXh;
  
  BCGOST3410PublicKey(SubjectPublicKeyInfo paramSubjectPublicKeyInfo)
  {
    GOST3410PublicKeyAlgParameters localGOST3410PublicKeyAlgParameters = new GOST3410PublicKeyAlgParameters((ASN1Sequence)paramSubjectPublicKeyInfo.fX().fL());
    try
    {
      paramSubjectPublicKeyInfo = ((DEROctetString)paramSubjectPublicKeyInfo.hV()).eM();
      byte[] arrayOfByte = new byte[paramSubjectPublicKeyInfo.length];
      int i = 0;
      while (i != paramSubjectPublicKeyInfo.length)
      {
        arrayOfByte[i] = paramSubjectPublicKeyInfo[(paramSubjectPublicKeyInfo.length - 1 - i)];
        i += 1;
      }
      this.aPZ = new BigInteger(1, arrayOfByte);
    }
    catch (IOException paramSubjectPublicKeyInfo)
    {
      throw new IllegalArgumentException("invalid info structure in GOST3410 public key");
    }
    this.aXh = GOST3410ParameterSpec.ˊ(localGOST3410PublicKeyAlgParameters);
  }
  
  BCGOST3410PublicKey(GOST3410PublicKeyParameters paramGOST3410PublicKeyParameters, GOST3410ParameterSpec paramGOST3410ParameterSpec)
  {
    this.aPZ = paramGOST3410PublicKeyParameters.getY();
    this.aXh = paramGOST3410ParameterSpec;
  }
  
  BCGOST3410PublicKey(GOST3410PublicKey paramGOST3410PublicKey)
  {
    this.aPZ = paramGOST3410PublicKey.getY();
    this.aXh = paramGOST3410PublicKey.nH();
  }
  
  BCGOST3410PublicKey(GOST3410PublicKeySpec paramGOST3410PublicKeySpec)
  {
    this.aPZ = paramGOST3410PublicKeySpec.getY();
    this.aXh = new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec(paramGOST3410PublicKeySpec.getP(), paramGOST3410PublicKeySpec.getQ(), paramGOST3410PublicKeySpec.getA()));
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    paramObjectInputStream.defaultReadObject();
    String str = (String)paramObjectInputStream.readObject();
    if (str != null)
    {
      this.aXh = new GOST3410ParameterSpec(str, (String)paramObjectInputStream.readObject(), (String)paramObjectInputStream.readObject());
      return;
    }
    this.aXh = new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject()));
    paramObjectInputStream.readObject();
    paramObjectInputStream.readObject();
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
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof BCGOST3410PublicKey))
    {
      paramObject = (BCGOST3410PublicKey)paramObject;
      return (this.aPZ.equals(paramObject.aPZ)) && (this.aXh.equals(paramObject.aXh));
    }
    return false;
  }
  
  public String getAlgorithm()
  {
    return "GOST3410";
  }
  
  public byte[] getEncoded()
  {
    byte[] arrayOfByte = getY().toByteArray();
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
      if ((this.aXh instanceof GOST3410ParameterSpec))
      {
        if (this.aXh.oN() != null) {
          localObject = new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.ahc, new GOST3410PublicKeyAlgParameters(new ASN1ObjectIdentifier(this.aXh.oL()), new ASN1ObjectIdentifier(this.aXh.oM()), new ASN1ObjectIdentifier(this.aXh.oN()))), new DEROctetString((byte[])localObject));
        } else {
          localObject = new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.ahc, new GOST3410PublicKeyAlgParameters(new ASN1ObjectIdentifier(this.aXh.oL()), new ASN1ObjectIdentifier(this.aXh.oM()))), new DEROctetString((byte[])localObject));
        }
      }
      else {
        localObject = new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.ahc), new DEROctetString((byte[])localObject));
      }
      localObject = KeyUtil.ᐝ((SubjectPublicKeyInfo)localObject);
      return localObject;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
  
  public int hashCode()
  {
    return this.aPZ.hashCode() ^ this.aXh.hashCode();
  }
  
  public GOST3410Params nH()
  {
    return this.aXh;
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("GOST3410 Public Key").append(str);
    localStringBuffer.append("            y: ").append(getY().toString(16)).append(str);
    return localStringBuffer.toString();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.gost.BCGOST3410PublicKey
 * JD-Core Version:    0.7.0.1
 */