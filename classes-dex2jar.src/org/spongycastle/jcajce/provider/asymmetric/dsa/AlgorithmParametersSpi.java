package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x509.DSAParameter;

public class AlgorithmParametersSpi
  extends java.security.AlgorithmParametersSpi
{
  DSAParameterSpec aWD;
  
  protected byte[] engineGetEncoded()
  {
    Object localObject = new DSAParameter(this.aWD.getP(), this.aWD.getQ(), this.aWD.getG());
    try
    {
      localObject = ((DSAParameter)localObject).getEncoded("DER");
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Error encoding DSAParameters");
    }
  }
  
  protected byte[] engineGetEncoded(String paramString)
  {
    if (ᕪ(paramString)) {
      return engineGetEncoded();
    }
    return null;
  }
  
  protected AlgorithmParameterSpec engineGetParameterSpec(Class paramClass)
  {
    if (paramClass == null) {
      throw new NullPointerException("argument to getParameterSpec must not be null");
    }
    return ᐧ(paramClass);
  }
  
  protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    if (!(paramAlgorithmParameterSpec instanceof DSAParameterSpec)) {
      throw new InvalidParameterSpecException("DSAParameterSpec required to initialise a DSA algorithm parameters object");
    }
    this.aWD = ((DSAParameterSpec)paramAlgorithmParameterSpec);
  }
  
  protected void engineInit(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = DSAParameter.ﭠ(ASN1Primitive.ՙ(paramArrayOfByte));
      this.aWD = new DSAParameterSpec(paramArrayOfByte.getP(), paramArrayOfByte.getQ(), paramArrayOfByte.getG());
      return;
    }
    catch (ClassCastException paramArrayOfByte)
    {
      throw new IOException("Not a valid DSA Parameter encoding.");
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
    {
      throw new IOException("Not a valid DSA Parameter encoding.");
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
    return "DSA Parameters";
  }
  
  protected AlgorithmParameterSpec ᐧ(Class paramClass)
  {
    if (paramClass == DSAParameterSpec.class) {
      return this.aWD;
    }
    throw new InvalidParameterSpecException("unknown parameter spec passed to DSA parameters object.");
  }
  
  protected boolean ᕪ(String paramString)
  {
    return (paramString == null) || (paramString.equals("ASN.1"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi
 * JD-Core Version:    0.7.0.1
 */