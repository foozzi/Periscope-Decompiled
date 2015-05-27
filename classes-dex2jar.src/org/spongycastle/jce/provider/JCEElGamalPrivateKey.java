package org.spongycastle.jce.provider;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.ElGamalPrivateKey;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.spec.ElGamalParameterSpec;

public class JCEElGamalPrivateKey
  implements ElGamalPrivateKey, DHPrivateKey, PKCS12BagAttributeCarrier
{
  BigInteger aFO;
  private PKCS12BagAttributeCarrierImpl aWq = new PKCS12BagAttributeCarrierImpl();
  ElGamalParameterSpec aXb;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    this.aFO = ((BigInteger)paramObjectInputStream.readObject());
    this.aXb = new ElGamalParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(getX());
    paramObjectOutputStream.writeObject(this.aXb.getP());
    paramObjectOutputStream.writeObject(this.aXb.getG());
  }
  
  public String getAlgorithm()
  {
    return "ElGamal";
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˋ(new AlgorithmIdentifier(OIWObjectIdentifiers.apP, new ElGamalParameter(this.aXb.getP(), this.aXb.getG())), new ASN1Integer(getX()));
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public DHParameterSpec getParams()
  {
    return new DHParameterSpec(this.aXb.getP(), this.aXb.getG());
  }
  
  public BigInteger getX()
  {
    return this.aFO;
  }
  
  public Enumeration nA()
  {
    return this.aWq.nA();
  }
  
  public ElGamalParameterSpec nG()
  {
    return this.aXb;
  }
  
  public void ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.aWq.ˋ(paramASN1ObjectIdentifier, paramASN1Encodable);
  }
  
  public ASN1Encodable ͺ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return this.aWq.ͺ(paramASN1ObjectIdentifier);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.JCEElGamalPrivateKey
 * JD-Core Version:    0.7.0.1
 */