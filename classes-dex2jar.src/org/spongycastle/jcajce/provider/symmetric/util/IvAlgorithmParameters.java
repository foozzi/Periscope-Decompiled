package org.spongycastle.jcajce.provider.symmetric.util;

import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.util.Arrays;

public class IvAlgorithmParameters
  extends BaseAlgorithmParameters
{
  private byte[] iv;
  
  protected byte[] engineGetEncoded()
  {
    return engineGetEncoded("ASN.1");
  }
  
  protected byte[] engineGetEncoded(String paramString)
  {
    if (ᕪ(paramString)) {
      return new DEROctetString(engineGetEncoded("RAW")).getEncoded();
    }
    if (paramString.equals("RAW")) {
      return Arrays.І(this.iv);
    }
    return null;
  }
  
  protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    if (!(paramAlgorithmParameterSpec instanceof IvParameterSpec)) {
      throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
    }
    this.iv = ((IvParameterSpec)paramAlgorithmParameterSpec).getIV();
  }
  
  protected void engineInit(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte.length % 8 != 0)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte[0] == 4)
      {
        arrayOfByte = paramArrayOfByte;
        if (paramArrayOfByte[1] == paramArrayOfByte.length - 2) {
          arrayOfByte = ((ASN1OctetString)ASN1Primitive.ՙ(paramArrayOfByte)).eM();
        }
      }
    }
    this.iv = Arrays.І(arrayOfByte);
  }
  
  protected void engineInit(byte[] paramArrayOfByte, String paramString)
  {
    if (ᕪ(paramString)) {
      try
      {
        engineInit(((ASN1OctetString)ASN1Primitive.ՙ(paramArrayOfByte)).eM());
        return;
      }
      catch (Exception paramArrayOfByte)
      {
        throw new IOException("Exception decoding: " + paramArrayOfByte);
      }
    }
    if (paramString.equals("RAW"))
    {
      engineInit(paramArrayOfByte);
      return;
    }
    throw new IOException("Unknown parameters format in IV parameters object");
  }
  
  public String engineToString()
  {
    return "IV Parameters";
  }
  
  protected AlgorithmParameterSpec ᐧ(Class paramClass)
  {
    if (paramClass == IvParameterSpec.class) {
      return new IvParameterSpec(this.iv);
    }
    throw new InvalidParameterSpecException("unknown parameter spec passed to IV parameters object.");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters
 * JD-Core Version:    0.7.0.1
 */