package org.spongycastle.jcajce.provider.asymmetric.gost;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.jce.spec.GOST3410ParameterSpec;
import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

public class AlgorithmParametersSpi
  extends java.security.AlgorithmParametersSpi
{
  GOST3410ParameterSpec aXg;
  
  protected byte[] engineGetEncoded()
  {
    Object localObject = new GOST3410PublicKeyAlgParameters(new ASN1ObjectIdentifier(this.aXg.oL()), new ASN1ObjectIdentifier(this.aXg.oM()), new ASN1ObjectIdentifier(this.aXg.oN()));
    try
    {
      localObject = ((GOST3410PublicKeyAlgParameters)localObject).getEncoded("DER");
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Error encoding GOST3410Parameters");
    }
  }
  
  protected byte[] engineGetEncoded(String paramString)
  {
    if ((ᕪ(paramString)) || (paramString.equalsIgnoreCase("X.509"))) {
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
    if (!(paramAlgorithmParameterSpec instanceof GOST3410ParameterSpec)) {
      throw new InvalidParameterSpecException("GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object");
    }
    this.aXg = ((GOST3410ParameterSpec)paramAlgorithmParameterSpec);
  }
  
  protected void engineInit(byte[] paramArrayOfByte)
  {
    try
    {
      this.aXg = GOST3410ParameterSpec.ˊ(new GOST3410PublicKeyAlgParameters((ASN1Sequence)ASN1Primitive.ՙ(paramArrayOfByte)));
      return;
    }
    catch (ClassCastException paramArrayOfByte)
    {
      throw new IOException("Not a valid GOST3410 Parameter encoding.");
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
    {
      throw new IOException("Not a valid GOST3410 Parameter encoding.");
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
    return "GOST3410 Parameters";
  }
  
  protected AlgorithmParameterSpec ᐧ(Class paramClass)
  {
    if (paramClass == GOST3410PublicKeyParameterSetSpec.class) {
      return this.aXg;
    }
    throw new InvalidParameterSpecException("unknown parameter spec passed to GOST3410 parameters object.");
  }
  
  protected boolean ᕪ(String paramString)
  {
    return (paramString == null) || (paramString.equals("ASN.1"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.gost.AlgorithmParametersSpi
 * JD-Core Version:    0.7.0.1
 */