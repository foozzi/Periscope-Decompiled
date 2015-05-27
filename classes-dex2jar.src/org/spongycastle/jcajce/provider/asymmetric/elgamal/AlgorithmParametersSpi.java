package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jce.spec.ElGamalParameterSpec;

public class AlgorithmParametersSpi
  extends BaseAlgorithmParameters
{
  ElGamalParameterSpec aXa;
  
  protected byte[] engineGetEncoded()
  {
    Object localObject = new ElGamalParameter(this.aXa.getP(), this.aXa.getG());
    try
    {
      localObject = ((ElGamalParameter)localObject).getEncoded("DER");
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Error encoding ElGamalParameters");
    }
  }
  
  protected byte[] engineGetEncoded(String paramString)
  {
    if ((ᕪ(paramString)) || (paramString.equalsIgnoreCase("X.509"))) {
      return engineGetEncoded();
    }
    return null;
  }
  
  protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    if ((!(paramAlgorithmParameterSpec instanceof ElGamalParameterSpec)) && (!(paramAlgorithmParameterSpec instanceof DHParameterSpec))) {
      throw new InvalidParameterSpecException("DHParameterSpec required to initialise a ElGamal algorithm parameters object");
    }
    if ((paramAlgorithmParameterSpec instanceof ElGamalParameterSpec))
    {
      this.aXa = ((ElGamalParameterSpec)paramAlgorithmParameterSpec);
      return;
    }
    paramAlgorithmParameterSpec = (DHParameterSpec)paramAlgorithmParameterSpec;
    this.aXa = new ElGamalParameterSpec(paramAlgorithmParameterSpec.getP(), paramAlgorithmParameterSpec.getG());
  }
  
  protected void engineInit(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = ElGamalParameter.ᔅ(ASN1Primitive.ՙ(paramArrayOfByte));
      this.aXa = new ElGamalParameterSpec(paramArrayOfByte.getP(), paramArrayOfByte.getG());
      return;
    }
    catch (ClassCastException paramArrayOfByte)
    {
      throw new IOException("Not a valid ElGamal Parameter encoding.");
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
    {
      throw new IOException("Not a valid ElGamal Parameter encoding.");
    }
  }
  
  protected void engineInit(byte[] paramArrayOfByte, String paramString)
  {
    if ((ᕪ(paramString)) || (paramString.equalsIgnoreCase("X.509")))
    {
      engineInit(paramArrayOfByte);
      return;
    }
    throw new IOException("Unknown parameter format " + paramString);
  }
  
  protected String engineToString()
  {
    return "ElGamal Parameters";
  }
  
  protected AlgorithmParameterSpec ᐧ(Class paramClass)
  {
    if (paramClass == ElGamalParameterSpec.class) {
      return this.aXa;
    }
    if (paramClass == DHParameterSpec.class) {
      return new DHParameterSpec(this.aXa.getP(), this.aXa.getG());
    }
    throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.elgamal.AlgorithmParametersSpi
 * JD-Core Version:    0.7.0.1
 */