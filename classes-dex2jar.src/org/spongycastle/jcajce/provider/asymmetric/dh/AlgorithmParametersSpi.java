package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.io.IOException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.pkcs.DHParameter;

public class AlgorithmParametersSpi
  extends java.security.AlgorithmParametersSpi
{
  DHParameterSpec aWn;
  
  protected byte[] engineGetEncoded()
  {
    Object localObject = new DHParameter(this.aWn.getP(), this.aWn.getG(), this.aWn.getL());
    try
    {
      localObject = ((DHParameter)localObject).getEncoded("DER");
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Error encoding DHParameters");
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
    if (!(paramAlgorithmParameterSpec instanceof DHParameterSpec)) {
      throw new InvalidParameterSpecException("DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object");
    }
    this.aWn = ((DHParameterSpec)paramAlgorithmParameterSpec);
  }
  
  protected void engineInit(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = DHParameter.ᕁ(paramArrayOfByte);
      if (paramArrayOfByte.fH() != null) {
        this.aWn = new DHParameterSpec(paramArrayOfByte.getP(), paramArrayOfByte.getG(), paramArrayOfByte.fH().intValue());
      } else {
        this.aWn = new DHParameterSpec(paramArrayOfByte.getP(), paramArrayOfByte.getG());
      }
      return;
    }
    catch (ClassCastException paramArrayOfByte)
    {
      throw new IOException("Not a valid DH Parameter encoding.");
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
    {
      throw new IOException("Not a valid DH Parameter encoding.");
    }
  }
  
  protected void engineInit(byte[] paramArrayOfByte, String paramString)
  {
    if (ᕪ(paramString))
    {
      engineInit(paramArrayOfByte);
      return;
    }
    throw new IOException("Unknown parameter format " + paramString);
  }
  
  protected String engineToString()
  {
    return "Diffie-Hellman Parameters";
  }
  
  protected AlgorithmParameterSpec ᐧ(Class paramClass)
  {
    if (paramClass == DHParameterSpec.class) {
      return this.aWn;
    }
    throw new InvalidParameterSpecException("unknown parameter spec passed to DH parameters object.");
  }
  
  protected boolean ᕪ(String paramString)
  {
    return (paramString == null) || (paramString.equals("ASN.1"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi
 * JD-Core Version:    0.7.0.1
 */