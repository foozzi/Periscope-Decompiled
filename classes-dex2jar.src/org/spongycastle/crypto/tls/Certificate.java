package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

public class Certificate
{
  public static final Certificate aSU = new Certificate(new org.spongycastle.asn1.x509.Certificate[0]);
  protected org.spongycastle.asn1.x509.Certificate[] aSV;
  
  public Certificate(org.spongycastle.asn1.x509.Certificate[] paramArrayOfCertificate)
  {
    if (paramArrayOfCertificate == null) {
      throw new IllegalArgumentException("'certificateList' cannot be null");
    }
    this.aSV = paramArrayOfCertificate;
  }
  
  public static Certificate ˌ(InputStream paramInputStream)
  {
    int i = TlsUtils.ՙ(paramInputStream);
    if (i == 0) {
      return aSU;
    }
    Object localObject = new ByteArrayInputStream(TlsUtils.ᐝ(i, paramInputStream));
    paramInputStream = new Vector();
    while (((ByteArrayInputStream)localObject).available() > 0) {
      paramInputStream.addElement(org.spongycastle.asn1.x509.Certificate.ⅰ(TlsUtils.ᐢ(TlsUtils.ᵎ((InputStream)localObject))));
    }
    localObject = new org.spongycastle.asn1.x509.Certificate[paramInputStream.size()];
    i = 0;
    while (i < paramInputStream.size())
    {
      localObject[i] = ((org.spongycastle.asn1.x509.Certificate)paramInputStream.elementAt(i));
      i += 1;
    }
    return new Certificate((org.spongycastle.asn1.x509.Certificate[])localObject);
  }
  
  public void encode(OutputStream paramOutputStream)
  {
    Vector localVector = new Vector(this.aSV.length);
    int j = 0;
    int i = 0;
    while (i < this.aSV.length)
    {
      byte[] arrayOfByte = this.aSV[i].getEncoded("DER");
      localVector.addElement(arrayOfByte);
      j += arrayOfByte.length + 3;
      i += 1;
    }
    TlsUtils.ᵠ(j);
    TlsUtils.ʼ(j, paramOutputStream);
    i = 0;
    while (i < localVector.size())
    {
      TlsUtils.ˏ((byte[])localVector.elementAt(i), paramOutputStream);
      i += 1;
    }
  }
  
  public int getLength()
  {
    return this.aSV.length;
  }
  
  public boolean isEmpty()
  {
    return this.aSV.length == 0;
  }
  
  public org.spongycastle.asn1.x509.Certificate[] lP()
  {
    return lQ();
  }
  
  protected org.spongycastle.asn1.x509.Certificate[] lQ()
  {
    org.spongycastle.asn1.x509.Certificate[] arrayOfCertificate = new org.spongycastle.asn1.x509.Certificate[this.aSV.length];
    System.arraycopy(this.aSV, 0, arrayOfCertificate, 0, arrayOfCertificate.length);
    return arrayOfCertificate;
  }
  
  public org.spongycastle.asn1.x509.Certificate ץ(int paramInt)
  {
    return this.aSV[paramInt];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.Certificate
 * JD-Core Version:    0.7.0.1
 */