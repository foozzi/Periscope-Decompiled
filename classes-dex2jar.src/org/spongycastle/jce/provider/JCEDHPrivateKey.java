package org.spongycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

public class JCEDHPrivateKey
  implements DHPrivateKey, PKCS12BagAttributeCarrier
{
  BigInteger aFO;
  private DHParameterSpec aWo;
  private PrivateKeyInfo aWp;
  private PKCS12BagAttributeCarrier aXi = new PKCS12BagAttributeCarrierImpl();
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    this.aFO = ((BigInteger)paramObjectInputStream.readObject());
    this.aWo = new DHParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), paramObjectInputStream.readInt());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(getX());
    paramObjectOutputStream.writeObject(this.aWo.getP());
    paramObjectOutputStream.writeObject(this.aWo.getG());
    paramObjectOutputStream.writeInt(this.aWo.getL());
  }
  
  public String getAlgorithm()
  {
    return "DH";
  }
  
  public byte[] getEncoded()
  {
    try
    {
      if (this.aWp != null)
      {
        arrayOfByte = this.aWp.getEncoded("DER");
        return arrayOfByte;
      }
      byte[] arrayOfByte = new PrivateKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.aqE, new DHParameter(this.aWo.getP(), this.aWo.getG(), this.aWo.getL())), new ASN1Integer(getX())).getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public DHParameterSpec getParams()
  {
    return this.aWo;
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
  
  public Enumeration nA()
  {
    return this.aXi.nA();
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
 * Qualified Name:     org.spongycastle.jce.provider.JCEDHPrivateKey
 * JD-Core Version:    0.7.0.1
 */