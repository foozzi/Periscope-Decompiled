package org.spongycastle.jcajce.provider.asymmetric.x509;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1OutputStream;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1String;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.misc.MiscObjectIdentifiers;
import org.spongycastle.asn1.misc.NetscapeCertType;
import org.spongycastle.asn1.misc.NetscapeRevocationURL;
import org.spongycastle.asn1.misc.VerisignCzagExtension;
import org.spongycastle.asn1.util.ASN1Dump;
import org.spongycastle.asn1.x500.X500Name;
import org.spongycastle.asn1.x500.style.RFC4519Style;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.BasicConstraints;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.Extensions;
import org.spongycastle.asn1.x509.GeneralName;
import org.spongycastle.asn1.x509.KeyUsage;
import org.spongycastle.asn1.x509.TBSCertificate;
import org.spongycastle.asn1.x509.Time;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.X509Principal;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.provider.RFC3280CertPathUtilities;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.encoders.Hex;

class X509CertificateObject
  extends X509Certificate
  implements PKCS12BagAttributeCarrier
{
  private PKCS12BagAttributeCarrier aXi = new PKCS12BagAttributeCarrierImpl();
  private int aYh;
  private org.spongycastle.asn1.x509.Certificate aYn;
  private BasicConstraints aYo;
  private boolean[] aYp;
  private boolean aYq;
  
  public X509CertificateObject(org.spongycastle.asn1.x509.Certificate paramCertificate)
  {
    this.aYn = paramCertificate;
    try
    {
      paramCertificate = ᴷ("2.5.29.19");
      if (paramCertificate != null) {
        this.aYo = BasicConstraints.ᵤ(ASN1Primitive.ՙ(paramCertificate));
      }
    }
    catch (Exception paramCertificate)
    {
      throw new CertificateParsingException("cannot construct BasicConstraints: " + paramCertificate);
    }
    for (;;)
    {
      Object localObject;
      int j;
      try
      {
        paramCertificate = ᴷ("2.5.29.15");
        if (paramCertificate != null)
        {
          localObject = DERBitString.ʸ(ASN1Primitive.ՙ(paramCertificate));
          paramCertificate = ((DERBitString)localObject).getBytes();
          j = paramCertificate.length * 8 - ((DERBitString)localObject).ff();
          if (j < 9)
          {
            i = 9;
            this.aYp = new boolean[i];
            i = 0;
            if (i == j) {
              break;
            }
            localObject = this.aYp;
            if ((paramCertificate[(i / 8)] & 128 >>> i % 8) == 0) {
              break label206;
            }
            k = 1;
            break label209;
          }
        }
        else
        {
          this.aYp = null;
          return;
        }
      }
      catch (Exception paramCertificate)
      {
        throw new CertificateParsingException("cannot construct KeyUsage: " + paramCertificate);
      }
      int i = j;
      continue;
      label206:
      int k = 0;
      label209:
      localObject[i] = k;
      i += 1;
    }
  }
  
  private int nL()
  {
    int j = 0;
    try
    {
      byte[] arrayOfByte = getEncoded();
      int i = 1;
      while (i < arrayOfByte.length)
      {
        int k = arrayOfByte[i];
        j += k * i;
        i += 1;
      }
      return j;
    }
    catch (CertificateEncodingException localCertificateEncodingException) {}
    return 0;
  }
  
  private void ˊ(PublicKey paramPublicKey, Signature paramSignature)
  {
    if (!ˊ(this.aYn.hk(), this.aYn.hd().hX())) {
      throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
    }
    X509SignatureUtil.ˊ(paramSignature, this.aYn.hk().fL());
    paramSignature.initVerify(paramPublicKey);
    paramSignature.update(getTBSCertificate());
    if (!paramSignature.verify(getSignature())) {
      throw new SignatureException("certificate does not verify with supplied key");
    }
  }
  
  private boolean ˊ(AlgorithmIdentifier paramAlgorithmIdentifier1, AlgorithmIdentifier paramAlgorithmIdentifier2)
  {
    if (!paramAlgorithmIdentifier1.fK().equals(paramAlgorithmIdentifier2.fK())) {
      return false;
    }
    if (paramAlgorithmIdentifier1.fL() == null) {
      return (paramAlgorithmIdentifier2.fL() == null) || (paramAlgorithmIdentifier2.fL().equals(DERNull.abj));
    }
    if (paramAlgorithmIdentifier2.fL() == null) {
      return (paramAlgorithmIdentifier1.fL() == null) || (paramAlgorithmIdentifier1.fL().equals(DERNull.abj));
    }
    return paramAlgorithmIdentifier1.fL().equals(paramAlgorithmIdentifier2.fL());
  }
  
  private static Collection ᔊ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        ArrayList localArrayList1 = new ArrayList();
        paramArrayOfByte = ASN1Sequence.ﹾ(paramArrayOfByte).eT();
        Object localObject;
        ArrayList localArrayList2;
        if (paramArrayOfByte.hasMoreElements())
        {
          localObject = GeneralName.ﻳ(paramArrayOfByte.nextElement());
          localArrayList2 = new ArrayList();
          localArrayList2.add(Integers.valueOf(((GeneralName)localObject).eW()));
        }
        switch (((GeneralName)localObject).eW())
        {
        case 0: 
        case 3: 
        case 5: 
          localArrayList2.add(((GeneralName)localObject).getEncoded());
          break;
        case 4: 
          localArrayList2.add(X500Name.ˊ(RFC4519Style.awn, ((GeneralName)localObject).hw()).toString());
          break;
        case 1: 
        case 2: 
        case 6: 
          localArrayList2.add(((ASN1String)((GeneralName)localObject).hw()).getString());
          break;
        case 8: 
          localArrayList2.add(ASN1ObjectIdentifier.ﹴ(((GeneralName)localObject).hw()).getId());
          break;
        case 7: 
          localObject = DEROctetString.ﹸ(((GeneralName)localObject).hw()).eM();
          try
          {
            localObject = InetAddress.getByAddress((byte[])localObject).getHostAddress();
          }
          catch (UnknownHostException localUnknownHostException) {}
          continue;
          localUnknownHostException.add(localObject);
          continue;
          throw new IOException("Bad tag number: " + ((GeneralName)localObject).eW());
          localArrayList1.add(Collections.unmodifiableList(localUnknownHostException));
          continue;
          int i = localArrayList1.size();
          if (i == 0) {
            return null;
          }
          paramArrayOfByte = Collections.unmodifiableCollection(localArrayList1);
          return paramArrayOfByte;
        }
      }
      catch (Exception paramArrayOfByte)
      {
        throw new CertificateParsingException(paramArrayOfByte.getMessage());
      }
    }
  }
  
  private byte[] ᴷ(String paramString)
  {
    Extensions localExtensions = this.aYn.hd().gX();
    if (localExtensions != null)
    {
      paramString = localExtensions.ʻ(new ASN1ObjectIdentifier(paramString));
      if (paramString != null) {
        return paramString.hy().eM();
      }
    }
    return null;
  }
  
  public void checkValidity()
  {
    checkValidity(new Date());
  }
  
  public void checkValidity(Date paramDate)
  {
    if (paramDate.getTime() > getNotAfter().getTime()) {
      throw new CertificateExpiredException("certificate expired on " + this.aYn.hh().eB());
    }
    if (paramDate.getTime() < getNotBefore().getTime()) {
      throw new CertificateNotYetValidException("certificate not valid till " + this.aYn.hg().eB());
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (!(paramObject instanceof java.security.cert.Certificate)) {
      return false;
    }
    paramObject = (java.security.cert.Certificate)paramObject;
    try
    {
      boolean bool = Arrays.ﹺ(getEncoded(), paramObject.getEncoded());
      return bool;
    }
    catch (CertificateEncodingException paramObject) {}
    return false;
  }
  
  public int getBasicConstraints()
  {
    if (this.aYo != null)
    {
      if (this.aYo.gZ())
      {
        if (this.aYo.ha() == null) {
          return 2147483647;
        }
        return this.aYo.ha().intValue();
      }
      return -1;
    }
    return -1;
  }
  
  public Set getCriticalExtensionOIDs()
  {
    if (getVersion() == 3)
    {
      HashSet localHashSet = new HashSet();
      Extensions localExtensions = this.aYn.hd().gX();
      if (localExtensions != null)
      {
        Enumeration localEnumeration = localExtensions.hA();
        while (localEnumeration.hasMoreElements())
        {
          ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
          if (localExtensions.ʻ(localASN1ObjectIdentifier).isCritical()) {
            localHashSet.add(localASN1ObjectIdentifier.getId());
          }
        }
        return localHashSet;
      }
    }
    return null;
  }
  
  public byte[] getEncoded()
  {
    try
    {
      byte[] arrayOfByte = this.aYn.getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new CertificateEncodingException(localIOException.toString());
    }
  }
  
  public List getExtendedKeyUsage()
  {
    Object localObject = ᴷ("2.5.29.37");
    if (localObject != null) {
      try
      {
        localObject = (ASN1Sequence)new ASN1InputStream((byte[])localObject).eH();
        ArrayList localArrayList = new ArrayList();
        int i = 0;
        while (i != ((ASN1Sequence)localObject).size())
        {
          localArrayList.add(((ASN1ObjectIdentifier)((ASN1Sequence)localObject).ϲ(i)).getId());
          i += 1;
        }
        localObject = Collections.unmodifiableList(localArrayList);
        return localObject;
      }
      catch (Exception localException)
      {
        throw new CertificateParsingException("error processing extended key usage extension");
      }
    }
    return null;
  }
  
  public byte[] getExtensionValue(String paramString)
  {
    Extensions localExtensions = this.aYn.hd().gX();
    if (localExtensions != null)
    {
      paramString = localExtensions.ʻ(new ASN1ObjectIdentifier(paramString));
      if (paramString != null) {
        try
        {
          paramString = paramString.hy().getEncoded();
          return paramString;
        }
        catch (Exception paramString)
        {
          throw new IllegalStateException("error parsing " + paramString.toString());
        }
      }
    }
    return null;
  }
  
  public Collection getIssuerAlternativeNames()
  {
    return ᔊ(ᴷ(Extension.ayM.getId()));
  }
  
  public Principal getIssuerDN()
  {
    try
    {
      X509Principal localX509Principal = new X509Principal(X500Name.ᒾ(this.aYn.hf().getEncoded()));
      return localX509Principal;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public boolean[] getIssuerUniqueID()
  {
    Object localObject = this.aYn.hd().ia();
    if (localObject != null)
    {
      byte[] arrayOfByte = ((DERBitString)localObject).getBytes();
      localObject = new boolean[arrayOfByte.length * 8 - ((DERBitString)localObject).ff()];
      int i = 0;
      while (i != localObject.length)
      {
        int j;
        if ((arrayOfByte[(i / 8)] & 128 >>> i % 8) != 0) {
          j = 1;
        } else {
          j = 0;
        }
        localObject[i] = j;
        i += 1;
      }
      return localObject;
    }
    return null;
  }
  
  public X500Principal getIssuerX500Principal()
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      new ASN1OutputStream((OutputStream)localObject).ˋ(this.aYn.hf());
      localObject = new X500Principal(((ByteArrayOutputStream)localObject).toByteArray());
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("can't encode issuer DN");
    }
  }
  
  public boolean[] getKeyUsage()
  {
    return this.aYp;
  }
  
  public Set getNonCriticalExtensionOIDs()
  {
    if (getVersion() == 3)
    {
      HashSet localHashSet = new HashSet();
      Extensions localExtensions = this.aYn.hd().gX();
      if (localExtensions != null)
      {
        Enumeration localEnumeration = localExtensions.hA();
        while (localEnumeration.hasMoreElements())
        {
          ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
          if (!localExtensions.ʻ(localASN1ObjectIdentifier).isCritical()) {
            localHashSet.add(localASN1ObjectIdentifier.getId());
          }
        }
        return localHashSet;
      }
    }
    return null;
  }
  
  public Date getNotAfter()
  {
    return this.aYn.hh().getDate();
  }
  
  public Date getNotBefore()
  {
    return this.aYn.hg().getDate();
  }
  
  public PublicKey getPublicKey()
  {
    try
    {
      PublicKey localPublicKey = BouncyCastleProvider.ʼ(this.aYn.hj());
      return localPublicKey;
    }
    catch (IOException localIOException) {}
    return null;
  }
  
  public BigInteger getSerialNumber()
  {
    return this.aYn.gU().eA();
  }
  
  public String getSigAlgName()
  {
    Object localObject = Security.getProvider("SC");
    if (localObject != null)
    {
      localObject = ((Provider)localObject).getProperty("Alg.Alias.Signature." + getSigAlgOID());
      if (localObject != null) {
        return localObject;
      }
    }
    localObject = Security.getProviders();
    int i = 0;
    while (i != localObject.length)
    {
      String str = localObject[i].getProperty("Alg.Alias.Signature." + getSigAlgOID());
      if (str != null) {
        return str;
      }
      i += 1;
    }
    return getSigAlgOID();
  }
  
  public String getSigAlgOID()
  {
    return this.aYn.hk().fK().getId();
  }
  
  public byte[] getSigAlgParams()
  {
    if (this.aYn.hk().fL() != null) {
      try
      {
        byte[] arrayOfByte = this.aYn.hk().fL().ez().getEncoded("DER");
        return arrayOfByte;
      }
      catch (IOException localIOException)
      {
        return null;
      }
    }
    return null;
  }
  
  public byte[] getSignature()
  {
    return this.aYn.hl().getBytes();
  }
  
  public Collection getSubjectAlternativeNames()
  {
    return ᔊ(ᴷ(Extension.ayL.getId()));
  }
  
  public Principal getSubjectDN()
  {
    return new X509Principal(X500Name.ᒾ(this.aYn.hi().ez()));
  }
  
  public boolean[] getSubjectUniqueID()
  {
    Object localObject = this.aYn.hd().ib();
    if (localObject != null)
    {
      byte[] arrayOfByte = ((DERBitString)localObject).getBytes();
      localObject = new boolean[arrayOfByte.length * 8 - ((DERBitString)localObject).ff()];
      int i = 0;
      while (i != localObject.length)
      {
        int j;
        if ((arrayOfByte[(i / 8)] & 128 >>> i % 8) != 0) {
          j = 1;
        } else {
          j = 0;
        }
        localObject[i] = j;
        i += 1;
      }
      return localObject;
    }
    return null;
  }
  
  public X500Principal getSubjectX500Principal()
  {
    try
    {
      Object localObject = new ByteArrayOutputStream();
      new ASN1OutputStream((OutputStream)localObject).ˋ(this.aYn.hi());
      localObject = new X500Principal(((ByteArrayOutputStream)localObject).toByteArray());
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("can't encode issuer DN");
    }
  }
  
  public byte[] getTBSCertificate()
  {
    try
    {
      byte[] arrayOfByte = this.aYn.hd().getEncoded("DER");
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new CertificateEncodingException(localIOException.toString());
    }
  }
  
  public int getVersion()
  {
    return this.aYn.he();
  }
  
  public boolean hasUnsupportedCriticalExtension()
  {
    if (getVersion() == 3)
    {
      Extensions localExtensions = this.aYn.hd().gX();
      if (localExtensions != null)
      {
        Enumeration localEnumeration = localExtensions.hA();
        while (localEnumeration.hasMoreElements())
        {
          ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
          String str = localASN1ObjectIdentifier.getId();
          if ((!str.equals(RFC3280CertPathUtilities.bbc)) && (!str.equals(RFC3280CertPathUtilities.baX)) && (!str.equals(RFC3280CertPathUtilities.baZ)) && (!str.equals(RFC3280CertPathUtilities.bbd)) && (!str.equals(RFC3280CertPathUtilities.bbi)) && (!str.equals(RFC3280CertPathUtilities.bbe)) && (!str.equals(RFC3280CertPathUtilities.bbf)) && (!str.equals(RFC3280CertPathUtilities.bbg)) && (!str.equals(RFC3280CertPathUtilities.baY)) && (!str.equals(RFC3280CertPathUtilities.bba)) && (!str.equals(RFC3280CertPathUtilities.bbb))) {
            if (localExtensions.ʻ(localASN1ObjectIdentifier).isCritical()) {
              return true;
            }
          }
        }
      }
    }
    return false;
  }
  
  public int hashCode()
  {
    try
    {
      if (!this.aYq)
      {
        this.aYh = nL();
        this.aYq = true;
      }
      int i = this.aYh;
      return i;
    }
    finally {}
  }
  
  public Enumeration nA()
  {
    return this.aXi.nA();
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    String str = System.getProperty("line.separator");
    localStringBuffer.append("  [0]         Version: ").append(getVersion()).append(str);
    localStringBuffer.append("         SerialNumber: ").append(getSerialNumber()).append(str);
    localStringBuffer.append("             IssuerDN: ").append(getIssuerDN()).append(str);
    localStringBuffer.append("           Start Date: ").append(getNotBefore()).append(str);
    localStringBuffer.append("           Final Date: ").append(getNotAfter()).append(str);
    localStringBuffer.append("            SubjectDN: ").append(getSubjectDN()).append(str);
    localStringBuffer.append("           Public Key: ").append(getPublicKey()).append(str);
    localStringBuffer.append("  Signature Algorithm: ").append(getSigAlgName()).append(str);
    Object localObject = getSignature();
    localStringBuffer.append("            Signature: ").append(new String(Hex.ᑊ((byte[])localObject, 0, 20))).append(str);
    int i = 20;
    while (i < localObject.length)
    {
      if (i < localObject.length - 20) {
        localStringBuffer.append("                       ").append(new String(Hex.ᑊ((byte[])localObject, i, 20))).append(str);
      } else {
        localStringBuffer.append("                       ").append(new String(Hex.ᑊ((byte[])localObject, i, localObject.length - i))).append(str);
      }
      i += 20;
    }
    localObject = this.aYn.hd().gX();
    if (localObject != null)
    {
      Enumeration localEnumeration = ((Extensions)localObject).hA();
      if (localEnumeration.hasMoreElements()) {
        localStringBuffer.append("       Extensions: \n");
      }
      while (localEnumeration.hasMoreElements())
      {
        ASN1ObjectIdentifier localASN1ObjectIdentifier = (ASN1ObjectIdentifier)localEnumeration.nextElement();
        Extension localExtension = ((Extensions)localObject).ʻ(localASN1ObjectIdentifier);
        if (localExtension.hy() != null)
        {
          ASN1InputStream localASN1InputStream = new ASN1InputStream(localExtension.hy().eM());
          localStringBuffer.append("                       critical(").append(localExtension.isCritical()).append(") ");
          try
          {
            if (localASN1ObjectIdentifier.equals(Extension.ayN))
            {
              localStringBuffer.append(BasicConstraints.ᵤ(localASN1InputStream.eH())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(Extension.ayJ))
            {
              localStringBuffer.append(KeyUsage.ʶ(localASN1InputStream.eH())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(MiscObjectIdentifiers.anJ))
            {
              localStringBuffer.append(new NetscapeCertType((DERBitString)localASN1InputStream.eH())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(MiscObjectIdentifiers.anL))
            {
              localStringBuffer.append(new NetscapeRevocationURL((DERIA5String)localASN1InputStream.eH())).append(str);
            }
            else if (localASN1ObjectIdentifier.equals(MiscObjectIdentifiers.anS))
            {
              localStringBuffer.append(new VerisignCzagExtension((DERIA5String)localASN1InputStream.eH())).append(str);
            }
            else
            {
              localStringBuffer.append(localASN1ObjectIdentifier.getId());
              localStringBuffer.append(" value = ").append(ASN1Dump.ᑉ(localASN1InputStream.eH())).append(str);
            }
          }
          catch (Exception localException)
          {
            localStringBuffer.append(localASN1ObjectIdentifier.getId());
            localStringBuffer.append(" value = ").append("*****").append(str);
          }
        }
        else
        {
          localStringBuffer.append(str);
        }
      }
    }
    return localStringBuffer.toString();
  }
  
  public final void verify(PublicKey paramPublicKey)
  {
    String str = X509SignatureUtil.ˊ(this.aYn.hk());
    Signature localSignature2;
    try
    {
      Signature localSignature1 = Signature.getInstance(str, "SC");
    }
    catch (Exception localException)
    {
      localSignature2 = Signature.getInstance(str);
    }
    ˊ(paramPublicKey, localSignature2);
  }
  
  public final void verify(PublicKey paramPublicKey, String paramString)
  {
    ˊ(paramPublicKey, Signature.getInstance(X509SignatureUtil.ˊ(this.aYn.hk()), paramString));
  }
  
  public void ˋ(ASN1ObjectIdentifier paramASN1ObjectIdentifier, ASN1Encodable paramASN1Encodable)
  {
    this.aXi.ˋ(paramASN1ObjectIdentifier, paramASN1Encodable);
  }
  
  public ASN1Encodable ͺ(ASN1ObjectIdentifier paramASN1ObjectIdentifier)
  {
    return this.aXi.ͺ(paramASN1ObjectIdentifier);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.x509.X509CertificateObject
 * JD-Core Version:    0.7.0.1
 */