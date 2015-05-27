package org.spongycastle.jce.provider;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jce.interfaces.ElGamalPublicKey;
import org.spongycastle.jce.spec.ElGamalParameterSpec;

public class JCEElGamalPublicKey
  implements ElGamalPublicKey, DHPublicKey
{
  private BigInteger aPZ;
  private ElGamalParameterSpec aXb;
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    this.aPZ = ((BigInteger)paramObjectInputStream.readObject());
    this.aXb = new ElGamalParameterSpec((BigInteger)paramObjectInputStream.readObject(), (BigInteger)paramObjectInputStream.readObject());
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeObject(getY());
    paramObjectOutputStream.writeObject(this.aXb.getP());
    paramObjectOutputStream.writeObject(this.aXb.getG());
  }
  
  public String getAlgorithm()
  {
    return "ElGamal";
  }
  
  public byte[] getEncoded()
  {
    return KeyUtil.ˊ(new AlgorithmIdentifier(OIWObjectIdentifiers.apP, new ElGamalParameter(this.aXb.getP(), this.aXb.getG())), new ASN1Integer(this.aPZ));
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public DHParameterSpec getParams()
  {
    return new DHParameterSpec(this.aXb.getP(), this.aXb.getG());
  }
  
  public BigInteger getY()
  {
    return this.aPZ;
  }
  
  public ElGamalParameterSpec nG()
  {
    return this.aXb;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.JCEElGamalPublicKey
 * JD-Core Version:    0.7.0.1
 */