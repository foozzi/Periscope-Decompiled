package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.NoSuchProviderException;
import java.security.cert.CertPath;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.pkcs.ContentInfo;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.SignedData;
import org.spongycastle.util.io.pem.PemObject;
import org.spongycastle.util.io.pem.PemWriter;

public class PKIXCertPath
  extends CertPath
{
  static final List aYd;
  private List aYe;
  
  static
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("PkiPath");
    localArrayList.add("PEM");
    localArrayList.add("PKCS7");
    aYd = Collections.unmodifiableList(localArrayList);
  }
  
  PKIXCertPath(InputStream paramInputStream, String paramString)
  {
    super("X.509");
    label300:
    label303:
    for (;;)
    {
      try
      {
        Object localObject;
        if (paramString.equalsIgnoreCase("PkiPath"))
        {
          paramInputStream = new ASN1InputStream(paramInputStream).eH();
          if (!(paramInputStream instanceof ASN1Sequence)) {
            throw new CertificateException("input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath");
          }
          paramInputStream = ((ASN1Sequence)paramInputStream).eT();
          this.aYe = new ArrayList();
          paramString = CertificateFactory.getInstance("X.509", "SC");
          if (!paramInputStream.hasMoreElements()) {
            break label300;
          }
          localObject = ((ASN1Encodable)paramInputStream.nextElement()).ez().getEncoded("DER");
          this.aYe.add(0, paramString.generateCertificate(new ByteArrayInputStream((byte[])localObject)));
          continue;
        }
        if ((paramString.equalsIgnoreCase("PKCS7")) || (paramString.equalsIgnoreCase("PEM")))
        {
          paramInputStream = new BufferedInputStream(paramInputStream);
          this.aYe = new ArrayList();
          paramString = CertificateFactory.getInstance("X.509", "SC");
          localObject = paramString.generateCertificate(paramInputStream);
          if (localObject == null) {
            break label303;
          }
          this.aYe.add(localObject);
          continue;
        }
        throw new CertificateException("unsupported encoding: " + paramString);
      }
      catch (IOException paramInputStream)
      {
        throw new CertificateException("IOException throw while decoding CertPath:\n" + paramInputStream.toString());
      }
      catch (NoSuchProviderException paramInputStream)
      {
        throw new CertificateException("BouncyCastle provider not found while trying to get a CertificateFactory:\n" + paramInputStream.toString());
      }
      this.aYe = ˑ(this.aYe);
      return;
    }
  }
  
  PKIXCertPath(List paramList)
  {
    super("X.509");
    this.aYe = ˑ(new ArrayList(paramList));
  }
  
  private byte[] ʼ(ASN1Encodable paramASN1Encodable)
  {
    try
    {
      paramASN1Encodable = paramASN1Encodable.ez().getEncoded("DER");
      return paramASN1Encodable;
    }
    catch (IOException paramASN1Encodable)
    {
      throw new CertificateEncodingException("Exception thrown: " + paramASN1Encodable);
    }
  }
  
  private ASN1Primitive ˏ(X509Certificate paramX509Certificate)
  {
    try
    {
      paramX509Certificate = new ASN1InputStream(paramX509Certificate.getEncoded()).eH();
      return paramX509Certificate;
    }
    catch (Exception paramX509Certificate)
    {
      throw new CertificateEncodingException("Exception while encoding certificate: " + paramX509Certificate.toString());
    }
  }
  
  private List ˑ(List paramList)
  {
    if (paramList.size() < 2) {
      return paramList;
    }
    Object localObject1 = ((X509Certificate)paramList.get(0)).getIssuerX500Principal();
    int k = 1;
    int i = 1;
    int j;
    for (;;)
    {
      j = k;
      if (i == paramList.size()) {
        break;
      }
      if (((X500Principal)localObject1).equals(((X509Certificate)paramList.get(i)).getSubjectX500Principal()))
      {
        localObject1 = ((X509Certificate)paramList.get(i)).getIssuerX500Principal();
      }
      else
      {
        j = 0;
        break;
      }
      i += 1;
    }
    if (j != 0) {
      return paramList;
    }
    localObject1 = new ArrayList(paramList.size());
    ArrayList localArrayList = new ArrayList(paramList);
    i = 0;
    Object localObject2;
    Object localObject3;
    while (i < paramList.size())
    {
      localObject2 = (X509Certificate)paramList.get(i);
      int m = 0;
      localObject3 = ((X509Certificate)localObject2).getSubjectX500Principal();
      j = 0;
      for (;;)
      {
        k = m;
        if (j == paramList.size()) {
          break;
        }
        if (((X509Certificate)paramList.get(j)).getIssuerX500Principal().equals(localObject3))
        {
          k = 1;
          break;
        }
        j += 1;
      }
      if (k == 0)
      {
        ((List)localObject1).add(localObject2);
        paramList.remove(i);
      }
      i += 1;
    }
    if (((List)localObject1).size() > 1) {
      return localArrayList;
    }
    i = 0;
    while (i != ((List)localObject1).size())
    {
      localObject2 = ((X509Certificate)((List)localObject1).get(i)).getIssuerX500Principal();
      j = 0;
      while (j < paramList.size())
      {
        localObject3 = (X509Certificate)paramList.get(j);
        if (((X500Principal)localObject2).equals(((X509Certificate)localObject3).getSubjectX500Principal()))
        {
          ((List)localObject1).add(localObject3);
          paramList.remove(j);
          break;
        }
        j += 1;
      }
      i += 1;
    }
    if (paramList.size() > 0) {
      return localArrayList;
    }
    return localObject1;
  }
  
  public List getCertificates()
  {
    return Collections.unmodifiableList(new ArrayList(this.aYe));
  }
  
  public byte[] getEncoded()
  {
    Object localObject = getEncodings();
    if (((Iterator)localObject).hasNext())
    {
      localObject = ((Iterator)localObject).next();
      if ((localObject instanceof String)) {
        return getEncoded((String)localObject);
      }
    }
    return null;
  }
  
  public byte[] getEncoded(String paramString)
  {
    Object localObject;
    if (paramString.equalsIgnoreCase("PkiPath"))
    {
      paramString = new ASN1EncodableVector();
      localObject = this.aYe.listIterator(this.aYe.size());
      while (((ListIterator)localObject).hasPrevious()) {
        paramString.ˊ(ˏ((X509Certificate)((ListIterator)localObject).previous()));
      }
      return ʼ(new DERSequence(paramString));
    }
    int i;
    if (paramString.equalsIgnoreCase("PKCS7"))
    {
      paramString = new ContentInfo(PKCSObjectIdentifiers.aeB, null);
      localObject = new ASN1EncodableVector();
      i = 0;
      while (i != this.aYe.size())
      {
        ((ASN1EncodableVector)localObject).ˊ(ˏ((X509Certificate)this.aYe.get(i)));
        i += 1;
      }
      paramString = new SignedData(new ASN1Integer(1L), new DERSet(), paramString, new DERSet((ASN1EncodableVector)localObject), null, new DERSet());
      return ʼ(new ContentInfo(PKCSObjectIdentifiers.aeC, paramString));
    }
    if (paramString.equalsIgnoreCase("PEM"))
    {
      paramString = new ByteArrayOutputStream();
      localObject = new PemWriter(new OutputStreamWriter(paramString));
      i = 0;
      try
      {
        while (i != this.aYe.size())
        {
          ((PemWriter)localObject).ˊ(new PemObject("CERTIFICATE", ((X509Certificate)this.aYe.get(i)).getEncoded()));
          i += 1;
        }
        ((PemWriter)localObject).close();
      }
      catch (Exception paramString)
      {
        throw new CertificateEncodingException("can't encode certificate for PEM encoded path");
      }
      return paramString.toByteArray();
    }
    throw new CertificateEncodingException("unsupported encoding: " + paramString);
  }
  
  public Iterator getEncodings()
  {
    return aYd.iterator();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.x509.PKIXCertPath
 * JD-Core Version:    0.7.0.1
 */