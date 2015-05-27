package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.util.Strings;

public abstract class X509NameEntryConverter
{
  protected ASN1Primitive ʻ(String paramString, int paramInt)
  {
    paramString = Strings.ʰ(paramString);
    byte[] arrayOfByte = new byte[(paramString.length() - paramInt) / 2];
    int i = 0;
    while (i != arrayOfByte.length)
    {
      int j = paramString.charAt(i * 2 + paramInt);
      int k = paramString.charAt(i * 2 + paramInt + 1);
      if (j < 97) {
        arrayOfByte[i] = ((byte)(j - 48 << 4));
      } else {
        arrayOfByte[i] = ((byte)(j - 97 + 10 << 4));
      }
      if (k < 97) {
        arrayOfByte[i] = ((byte)(arrayOfByte[i] | (byte)(k - 48)));
      } else {
        arrayOfByte[i] = ((byte)(arrayOfByte[i] | (byte)(k - 97 + 10)));
      }
      i += 1;
    }
    return new ASN1InputStream(arrayOfByte).eH();
  }
  
  public abstract ASN1Primitive ˏ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, String paramString);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.x509.X509NameEntryConverter
 * JD-Core Version:    0.7.0.1
 */