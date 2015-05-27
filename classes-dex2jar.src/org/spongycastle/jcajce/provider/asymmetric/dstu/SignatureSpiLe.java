package org.spongycastle.jcajce.provider.asymmetric.dstu;

import java.io.IOException;
import java.security.SignatureException;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.DEROctetString;

public class SignatureSpiLe
  extends SignatureSpi
{
  protected byte[] engineSign()
  {
    byte[] arrayOfByte = ASN1OctetString.ﹸ(super.engineSign()).eM();
    ᒻ(arrayOfByte);
    try
    {
      arrayOfByte = new DEROctetString(arrayOfByte).getEncoded();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      throw new SignatureException(localException.toString());
    }
  }
  
  protected boolean engineVerify(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = ((ASN1OctetString)ASN1OctetString.ՙ(paramArrayOfByte)).eM();
    }
    catch (IOException paramArrayOfByte)
    {
      throw new SignatureException("error decoding signature bytes.");
    }
    ᒻ(paramArrayOfByte);
    try
    {
      boolean bool = super.engineVerify(new DEROctetString(paramArrayOfByte).getEncoded());
      return bool;
    }
    catch (SignatureException paramArrayOfByte)
    {
      throw paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new SignatureException(paramArrayOfByte.toString());
    }
  }
  
  void ᒻ(byte[] paramArrayOfByte)
  {
    int j = 0;
    while (j < paramArrayOfByte.length / 2)
    {
      int i = paramArrayOfByte[j];
      paramArrayOfByte[j] = paramArrayOfByte[(paramArrayOfByte.length - 1 - j)];
      paramArrayOfByte[(paramArrayOfByte.length - 1 - j)] = i;
      j += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dstu.SignatureSpiLe
 * JD-Core Version:    0.7.0.1
 */