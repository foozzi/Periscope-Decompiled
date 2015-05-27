package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.spongycastle.asn1.x500.X500Name;

public class CertificateRequest
{
  protected Vector aSE;
  protected short[] aSW;
  protected Vector aSX;
  
  public CertificateRequest(short[] paramArrayOfShort, Vector paramVector1, Vector paramVector2)
  {
    this.aSW = paramArrayOfShort;
    this.aSE = paramVector1;
    this.aSX = paramVector2;
  }
  
  public static CertificateRequest ˊ(TlsContext paramTlsContext, InputStream paramInputStream)
  {
    int j = TlsUtils.ﾞ(paramInputStream);
    short[] arrayOfShort = new short[j];
    int i = 0;
    while (i < j)
    {
      arrayOfShort[i] = TlsUtils.ﾞ(paramInputStream);
      i += 1;
    }
    Vector localVector = null;
    if (TlsUtils.ᐝ(paramTlsContext)) {
      localVector = TlsUtils.ˊ(false, paramInputStream);
    }
    paramTlsContext = new Vector();
    paramInputStream = new ByteArrayInputStream(TlsUtils.ᴵ(paramInputStream));
    while (paramInputStream.available() > 0) {
      paramTlsContext.addElement(X500Name.ᒾ(TlsUtils.ᐢ(TlsUtils.ᴵ(paramInputStream))));
    }
    return new CertificateRequest(arrayOfShort, localVector, paramTlsContext);
  }
  
  public void encode(OutputStream paramOutputStream)
  {
    if ((this.aSW == null) || (this.aSW.length == 0)) {
      TlsUtils.ᐝ(0, paramOutputStream);
    } else {
      TlsUtils.ˋ(this.aSW, paramOutputStream);
    }
    if (this.aSE != null) {
      TlsUtils.ˊ(this.aSE, false, paramOutputStream);
    }
    if ((this.aSX == null) || (this.aSX.isEmpty()))
    {
      TlsUtils.ʻ(0, paramOutputStream);
      return;
    }
    Vector localVector = new Vector(this.aSX.size());
    int j = 0;
    int i = 0;
    while (i < this.aSX.size())
    {
      byte[] arrayOfByte = ((X500Name)this.aSX.elementAt(i)).getEncoded("DER");
      localVector.addElement(arrayOfByte);
      j += arrayOfByte.length + 2;
      i += 1;
    }
    TlsUtils.ᴻ(j);
    TlsUtils.ʻ(j, paramOutputStream);
    i = 0;
    while (i < localVector.size())
    {
      TlsUtils.ˎ((byte[])localVector.elementAt(i), paramOutputStream);
      i += 1;
    }
  }
  
  public short[] lR()
  {
    return this.aSW;
  }
  
  public Vector lS()
  {
    return this.aSE;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.CertificateRequest
 * JD-Core Version:    0.7.0.1
 */