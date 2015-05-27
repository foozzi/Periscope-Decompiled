package org.spongycastle.jce.provider;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

public class JCEDHPublicKey
  implements DHPublicKey
{
  private BigInteger aPZ;
  private DHParameterSpec aWo;
  private SubjectPublicKeyInfo aWr;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    this.aPZ = ((BigInteger)paramObjectInputStream.readObject());
    this.aWo = new DHParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject(), paramObjectInputStream.readInt());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(getY());
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
    if (this.aWr != null) {
      return KeyUtil.ᐝ(this.aWr);
    }
    return KeyUtil.ˊ(new AlgorithmIdentifier(PKCSObjectIdentifiers.aqE, new DHParameter(this.aWo.getP(), this.aWo.getG(), this.aWo.getL())), new ASN1Integer(this.aPZ));
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public DHParameterSpec getParams()
  {
    return this.aWo;
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.JCEDHPublicKey
 * JD-Core Version:    0.7.0.1
 */