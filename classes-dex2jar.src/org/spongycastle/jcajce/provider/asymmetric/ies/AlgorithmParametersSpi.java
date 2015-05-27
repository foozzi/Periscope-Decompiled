package org.spongycastle.jcajce.provider.asymmetric.ies;

import java.io.IOException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.jce.spec.IESParameterSpec;

public class AlgorithmParametersSpi
  extends java.security.AlgorithmParametersSpi
{
  IESParameterSpec aXl;
  
  protected byte[] engineGetEncoded()
  {
    try
    {
      Object localObject = new ASN1EncodableVector();
      ((ASN1EncodableVector)localObject).ˊ(new DEROctetString(this.aXl.kN()));
      ((ASN1EncodableVector)localObject).ˊ(new DEROctetString(this.aXl.kO()));
      ((ASN1EncodableVector)localObject).ˊ(new ASN1Integer(this.aXl.kP()));
      localObject = new DERSequence((ASN1EncodableVector)localObject).getEncoded("DER");
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Error encoding IESParameters");
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
    if (!(paramAlgorithmParameterSpec instanceof IESParameterSpec)) {
      throw new InvalidParameterSpecException("IESParameterSpec required to initialise a IES algorithm parameters object");
    }
    this.aXl = ((IESParameterSpec)paramAlgorithmParameterSpec);
  }
  
  protected void engineInit(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = (ASN1Sequence)ASN1Primitive.ՙ(paramArrayOfByte);
      this.aXl = new IESParameterSpec(((ASN1OctetString)paramArrayOfByte.ϲ(0)).eM(), ((ASN1OctetString)paramArrayOfByte.ϲ(0)).eM(), ((ASN1Integer)paramArrayOfByte.ϲ(0)).eA().intValue());
      return;
    }
    catch (ClassCastException paramArrayOfByte)
    {
      throw new IOException("Not a valid IES Parameter encoding.");
    }
    catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
    {
      throw new IOException("Not a valid IES Parameter encoding.");
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
    return "IES Parameters";
  }
  
  protected AlgorithmParameterSpec ᐧ(Class paramClass)
  {
    if (paramClass == IESParameterSpec.class) {
      return this.aXl;
    }
    throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
  }
  
  protected boolean ᕪ(String paramString)
  {
    return (paramString == null) || (paramString.equals("ASN.1"));
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ies.AlgorithmParametersSpi
 * JD-Core Version:    0.7.0.1
 */