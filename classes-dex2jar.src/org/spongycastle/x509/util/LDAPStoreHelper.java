package org.spongycastle.x509.util;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.Principal;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.naming.directory.SearchControls;
import javax.naming.directory.SearchResult;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.x509.Certificate;
import org.spongycastle.asn1.x509.CertificatePair;
import org.spongycastle.jce.X509LDAPCertStoreParameters;
import org.spongycastle.jce.provider.X509AttrCertParser;
import org.spongycastle.jce.provider.X509CRLParser;
import org.spongycastle.jce.provider.X509CertPairParser;
import org.spongycastle.jce.provider.X509CertParser;
import org.spongycastle.util.StoreException;
import org.spongycastle.x509.AttributeCertificateHolder;
import org.spongycastle.x509.AttributeCertificateIssuer;
import org.spongycastle.x509.X509AttributeCertStoreSelector;
import org.spongycastle.x509.X509AttributeCertificate;
import org.spongycastle.x509.X509CRLStoreSelector;
import org.spongycastle.x509.X509CertPairStoreSelector;
import org.spongycastle.x509.X509CertStoreSelector;
import org.spongycastle.x509.X509CertificatePair;

public class LDAPStoreHelper
{
  private static String bbQ = "com.sun.jndi.ldap.LdapCtxFactory";
  private static String bbR = "ignore";
  private static int blj = 32;
  private static long blk = 60000L;
  private X509LDAPCertStoreParameters bbP;
  private Map bli = new HashMap(blj);
  
  public LDAPStoreHelper(X509LDAPCertStoreParameters paramX509LDAPCertStoreParameters)
  {
    this.bbP = paramX509LDAPCertStoreParameters;
  }
  
  private DirContext pc()
  {
    Properties localProperties = new Properties();
    localProperties.setProperty("java.naming.factory.initial", bbQ);
    localProperties.setProperty("java.naming.batchsize", "0");
    localProperties.setProperty("java.naming.provider.url", this.bbP.oF());
    localProperties.setProperty("java.naming.factory.url.pkgs", "com.sun.jndi.url");
    localProperties.setProperty("java.naming.referral", bbR);
    localProperties.setProperty("java.naming.security.authentication", "none");
    return new InitialDirContext(localProperties);
  }
  
  private String ʻ(X509CertStoreSelector paramX509CertStoreSelector)
  {
    try
    {
      paramX509CertStoreSelector = paramX509CertStoreSelector.getSubjectAsBytes();
      if (paramX509CertStoreSelector != null)
      {
        paramX509CertStoreSelector = new X500Principal(paramX509CertStoreSelector).getName("RFC1779");
        return paramX509CertStoreSelector;
      }
    }
    catch (IOException paramX509CertStoreSelector)
    {
      throw new StoreException("exception processing name: " + paramX509CertStoreSelector.getMessage(), paramX509CertStoreSelector);
    }
    return null;
  }
  
  private String ˇ(String paramString1, String paramString2)
  {
    int i = paramString1.toLowerCase().indexOf(paramString2.toLowerCase() + "=");
    if (i == -1) {
      return "";
    }
    paramString1 = paramString1.substring(paramString2.length() + i);
    int j = paramString1.indexOf(',');
    i = j;
    if (j == -1) {
      i = paramString1.length();
    }
    while (paramString1.charAt(i - 1) == '\\')
    {
      j = paramString1.indexOf(',', i + 1);
      i = j;
      if (j == -1) {
        i = paramString1.length();
      }
    }
    paramString1 = paramString1.substring(0, i);
    paramString2 = paramString1.substring(paramString1.indexOf('=') + 1);
    paramString1 = paramString2;
    if (paramString2.charAt(0) == ' ') {
      paramString1 = paramString2.substring(1);
    }
    paramString2 = paramString1;
    if (paramString1.startsWith("\"")) {
      paramString2 = paramString1.substring(1);
    }
    paramString1 = paramString2;
    if (paramString2.endsWith("\"")) {
      paramString1 = paramString2.substring(0, paramString2.length() - 1);
    }
    return paramString1;
  }
  
  private List ˊ(X509AttributeCertStoreSelector paramX509AttributeCertStoreSelector, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject3 = null;
    HashSet localHashSet = new HashSet();
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramX509AttributeCertStoreSelector.tv() != null)
    {
      if (paramX509AttributeCertStoreSelector.tv().getSerialNumber() != null) {
        localHashSet.add(paramX509AttributeCertStoreSelector.tv().getSerialNumber().toString());
      }
      localObject1 = localObject2;
      if (paramX509AttributeCertStoreSelector.tv().getEntityNames() != null) {
        localObject1 = paramX509AttributeCertStoreSelector.tv().getEntityNames();
      }
    }
    localObject2 = localObject1;
    if (paramX509AttributeCertStoreSelector.tt() != null)
    {
      if (paramX509AttributeCertStoreSelector.tt().tv().getEntityNames() != null) {
        localObject1 = paramX509AttributeCertStoreSelector.tt().tv().getEntityNames();
      }
      localHashSet.add(paramX509AttributeCertStoreSelector.tt().getSerialNumber().toString());
      localObject2 = localObject1;
    }
    localObject1 = localObject3;
    if (localObject2 != null) {
      if ((localObject2[0] instanceof X500Principal)) {
        localObject1 = ((X500Principal)localObject2[0]).getName("RFC1779");
      } else {
        localObject1 = localObject2[0].getName();
      }
    }
    if (paramX509AttributeCertStoreSelector.getSerialNumber() != null) {
      localHashSet.add(paramX509AttributeCertStoreSelector.getSerialNumber().toString());
    }
    if (localObject1 != null)
    {
      int i = 0;
      while (i < paramArrayOfString3.length)
      {
        paramX509AttributeCertStoreSelector = ˇ((String)localObject1, paramArrayOfString3[i]);
        localArrayList.addAll(ˊ(paramArrayOfString2, "*" + paramX509AttributeCertStoreSelector + "*", paramArrayOfString1));
        i += 1;
      }
    }
    if ((localHashSet.size() > 0) && (this.bbP.oH() != null))
    {
      paramX509AttributeCertStoreSelector = localHashSet.iterator();
      while (paramX509AttributeCertStoreSelector.hasNext())
      {
        paramArrayOfString3 = (String)paramX509AttributeCertStoreSelector.next();
        localArrayList.addAll(ˊ(ง(this.bbP.oH()), paramArrayOfString3, paramArrayOfString1));
      }
    }
    if ((localHashSet.size() == 0) && (localObject1 == null)) {
      localArrayList.addAll(ˊ(paramArrayOfString2, "*", paramArrayOfString1));
    }
    return localArrayList;
  }
  
  private List ˊ(X509CRLStoreSelector paramX509CRLStoreSelector, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    ArrayList localArrayList = new ArrayList();
    String str = null;
    Object localObject = new HashSet();
    if (paramX509CRLStoreSelector.getIssuers() != null) {
      ((Collection)localObject).addAll(paramX509CRLStoreSelector.getIssuers());
    }
    if (paramX509CRLStoreSelector.getCertificateChecking() != null) {
      ((Collection)localObject).add(ͺ(paramX509CRLStoreSelector.getCertificateChecking()));
    }
    int i;
    if (paramX509CRLStoreSelector.tz() != null)
    {
      paramX509CRLStoreSelector = paramX509CRLStoreSelector.tz().ty().getPrincipals();
      i = 0;
      while (i < paramX509CRLStoreSelector.length)
      {
        if ((paramX509CRLStoreSelector[i] instanceof X500Principal)) {
          ((Collection)localObject).add(paramX509CRLStoreSelector[i]);
        }
        i += 1;
      }
    }
    localObject = ((Collection)localObject).iterator();
    paramX509CRLStoreSelector = str;
    while (((Iterator)localObject).hasNext())
    {
      paramX509CRLStoreSelector = ((X500Principal)((Iterator)localObject).next()).getName("RFC1779");
      i = 0;
      while (i < paramArrayOfString3.length)
      {
        str = ˇ(paramX509CRLStoreSelector, paramArrayOfString3[i]);
        localArrayList.addAll(ˊ(paramArrayOfString2, "*" + str + "*", paramArrayOfString1));
        i += 1;
      }
    }
    if (paramX509CRLStoreSelector == null) {
      localArrayList.addAll(ˊ(paramArrayOfString2, "*", paramArrayOfString1));
    }
    return localArrayList;
  }
  
  private List ˊ(X509CertPairStoreSelector paramX509CertPairStoreSelector, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = null;
    if (paramX509CertPairStoreSelector.tD() != null) {
      str1 = ʻ(paramX509CertPairStoreSelector.tD());
    }
    String str2 = str1;
    if (paramX509CertPairStoreSelector.tC() != null)
    {
      str2 = str1;
      if (paramX509CertPairStoreSelector.tC().tE() != null) {
        str2 = paramX509CertPairStoreSelector.tC().tE().getSubjectX500Principal().getName("RFC1779");
      }
    }
    if (str2 != null)
    {
      int i = 0;
      while (i < paramArrayOfString3.length)
      {
        paramX509CertPairStoreSelector = ˇ(str2, paramArrayOfString3[i]);
        localArrayList.addAll(ˊ(paramArrayOfString2, "*" + paramX509CertPairStoreSelector + "*", paramArrayOfString1));
        i += 1;
      }
    }
    if (str2 == null) {
      localArrayList.addAll(ˊ(paramArrayOfString2, "*", paramArrayOfString1));
    }
    return localArrayList;
  }
  
  private List ˊ(X509CertStoreSelector paramX509CertStoreSelector, String[] paramArrayOfString1, String[] paramArrayOfString2, String[] paramArrayOfString3)
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = null;
    String str2 = ʻ(paramX509CertStoreSelector);
    if (paramX509CertStoreSelector.getSerialNumber() != null) {
      str1 = paramX509CertStoreSelector.getSerialNumber().toString();
    }
    if (paramX509CertStoreSelector.getCertificate() != null)
    {
      str2 = paramX509CertStoreSelector.getCertificate().getSubjectX500Principal().getName("RFC1779");
      str1 = paramX509CertStoreSelector.getCertificate().getSerialNumber().toString();
    }
    if (str2 != null)
    {
      int i = 0;
      while (i < paramArrayOfString3.length)
      {
        paramX509CertStoreSelector = ˇ(str2, paramArrayOfString3[i]);
        localArrayList.addAll(ˊ(paramArrayOfString2, "*" + paramX509CertStoreSelector + "*", paramArrayOfString1));
        i += 1;
      }
    }
    if ((str1 != null) && (this.bbP.oH() != null)) {
      localArrayList.addAll(ˊ(ง(this.bbP.oH()), str1, paramArrayOfString1));
    }
    if ((str1 == null) && (str2 == null)) {
      localArrayList.addAll(ˊ(paramArrayOfString2, "*", paramArrayOfString1));
    }
    return localArrayList;
  }
  
  private List ˊ(String[] paramArrayOfString1, String paramString, String[] paramArrayOfString2)
  {
    Object localObject2;
    if (paramArrayOfString1 == null)
    {
      paramString = null;
    }
    else
    {
      localObject2 = "";
      localObject1 = paramString;
      if (paramString.equals("**")) {
        localObject1 = "*";
      }
      i = 0;
      paramString = (String)localObject2;
      while (i < paramArrayOfString1.length)
      {
        paramString = paramString + "(" + paramArrayOfString1[i] + "=" + (String)localObject1 + ")";
        i += 1;
      }
      paramString = "(|" + paramString + ")";
    }
    paramArrayOfString1 = "";
    int i = 0;
    while (i < paramArrayOfString2.length)
    {
      paramArrayOfString1 = paramArrayOfString1 + "(" + paramArrayOfString2[i] + "=*)";
      i += 1;
    }
    Object localObject1 = "(|" + paramArrayOfString1 + ")";
    paramArrayOfString1 = "(&" + paramString + "" + (String)localObject1 + ")";
    if (paramString == null) {
      paramArrayOfString1 = (String[])localObject1;
    }
    paramString = ܙ(paramArrayOfString1);
    if (paramString != null) {
      return paramString;
    }
    localObject1 = null;
    paramString = null;
    ArrayList localArrayList = new ArrayList();
    try
    {
      localObject2 = pc();
      paramString = (String)localObject2;
      localObject1 = localObject2;
      Object localObject3 = new SearchControls();
      paramString = (String)localObject2;
      localObject1 = localObject2;
      ((SearchControls)localObject3).setSearchScope(2);
      paramString = (String)localObject2;
      localObject1 = localObject2;
      ((SearchControls)localObject3).setCountLimit(0L);
      paramString = (String)localObject2;
      localObject1 = localObject2;
      ((SearchControls)localObject3).setReturningAttributes(paramArrayOfString2);
      paramString = (String)localObject2;
      localObject1 = localObject2;
      paramArrayOfString2 = ((DirContext)localObject2).search(this.bbP.om(), paramArrayOfString1, (SearchControls)localObject3);
      for (;;)
      {
        paramString = (String)localObject2;
        localObject1 = localObject2;
        if (paramArrayOfString2.hasMoreElements())
        {
          paramString = (String)localObject2;
          localObject1 = localObject2;
          localObject3 = ((Attribute)((SearchResult)paramArrayOfString2.next()).getAttributes().getAll().next()).getAll();
          for (;;)
          {
            paramString = (String)localObject2;
            localObject1 = localObject2;
            if (!((NamingEnumeration)localObject3).hasMore()) {
              break;
            }
            paramString = (String)localObject2;
            localObject1 = localObject2;
            localArrayList.add(((NamingEnumeration)localObject3).next());
          }
        }
        paramString = (String)localObject2;
        localObject1 = localObject2;
        ˊ(paramArrayOfString1, localArrayList);
        if (localObject2 != null) {}
        try
        {
          ((DirContext)localObject2).close();
          return localArrayList;
        }
        catch (Exception paramArrayOfString1)
        {
          return localArrayList;
        }
      }
    }
    catch (NamingException paramArrayOfString1)
    {
      if (paramString != null) {}
      try
      {
        paramString.close();
        return localArrayList;
      }
      catch (Exception paramArrayOfString1)
      {
        return localArrayList;
      }
    }
    finally
    {
      if (localObject1 != null) {}
      try
      {
        ((DirContext)localObject1).close();
      }
      catch (Exception paramString) {}
    }
  }
  
  private Set ˊ(List paramList, X509AttributeCertStoreSelector paramX509AttributeCertStoreSelector)
  {
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    X509AttrCertParser localX509AttrCertParser = new X509AttrCertParser();
    while (paramList.hasNext()) {
      try
      {
        localX509AttrCertParser.ˆ(new ByteArrayInputStream((byte[])paramList.next()));
        X509AttributeCertificate localX509AttributeCertificate = (X509AttributeCertificate)localX509AttrCertParser.pb();
        if (paramX509AttributeCertStoreSelector.ɨ(localX509AttributeCertificate)) {
          localHashSet.add(localX509AttributeCertificate);
        }
      }
      catch (StreamParsingException localStreamParsingException) {}
    }
    return localHashSet;
  }
  
  private Set ˊ(List paramList, X509CRLStoreSelector paramX509CRLStoreSelector)
  {
    HashSet localHashSet = new HashSet();
    X509CRLParser localX509CRLParser = new X509CRLParser();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      try
      {
        localX509CRLParser.ˆ(new ByteArrayInputStream((byte[])paramList.next()));
        X509CRL localX509CRL = (X509CRL)localX509CRLParser.pb();
        if (paramX509CRLStoreSelector.ɨ(localX509CRL)) {
          localHashSet.add(localX509CRL);
        }
      }
      catch (StreamParsingException localStreamParsingException) {}
    }
    return localHashSet;
  }
  
  private Set ˊ(List paramList, X509CertPairStoreSelector paramX509CertPairStoreSelector)
  {
    HashSet localHashSet = new HashSet();
    int i = 0;
    while (i < paramList.size())
    {
      int j = i;
      int k = i;
      try
      {
        Object localObject2;
        try
        {
          Object localObject1 = new X509CertPairParser();
          j = i;
          k = i;
          ((X509CertPairParser)localObject1).ˆ(new ByteArrayInputStream((byte[])paramList.get(i)));
          j = i;
          k = i;
          localObject1 = (X509CertificatePair)((X509CertPairParser)localObject1).pb();
        }
        catch (StreamParsingException localStreamParsingException)
        {
          j = i;
          k = i;
          localObject2 = (byte[])paramList.get(i);
          j = i;
          k = i;
          byte[] arrayOfByte = (byte[])paramList.get(i + 1);
          j = i;
          k = i;
          localObject2 = new X509CertificatePair(new CertificatePair(Certificate.ⅰ(new ASN1InputStream((byte[])localObject2).eH()), Certificate.ⅰ(new ASN1InputStream(arrayOfByte).eH())));
          i += 1;
        }
        j = i;
        k = i;
        if (paramX509CertPairStoreSelector.ɨ(localObject2))
        {
          j = i;
          k = i;
          localHashSet.add(localObject2);
        }
      }
      catch (CertificateParsingException localCertificateParsingException)
      {
        i = j;
      }
      catch (IOException localIOException)
      {
        i = k;
      }
      i += 1;
    }
    return localHashSet;
  }
  
  private Set ˊ(List paramList, X509CertStoreSelector paramX509CertStoreSelector)
  {
    HashSet localHashSet = new HashSet();
    paramList = paramList.iterator();
    X509CertParser localX509CertParser = new X509CertParser();
    while (paramList.hasNext()) {
      try
      {
        localX509CertParser.ˆ(new ByteArrayInputStream((byte[])paramList.next()));
        X509Certificate localX509Certificate = (X509Certificate)localX509CertParser.pb();
        if (paramX509CertStoreSelector.ɨ(localX509Certificate)) {
          localHashSet.add(localX509Certificate);
        }
      }
      catch (Exception localException) {}
    }
    return localHashSet;
  }
  
  private void ˊ(String paramString, List paramList)
  {
    for (;;)
    {
      long l2;
      try
      {
        Object localObject = new Date(System.currentTimeMillis());
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(localObject);
        localArrayList.add(paramList);
        if (this.bli.containsKey(paramString))
        {
          this.bli.put(paramString, localArrayList);
        }
        else
        {
          if (this.bli.size() >= blj)
          {
            Iterator localIterator = this.bli.entrySet().iterator();
            l1 = ((Date)localObject).getTime();
            paramList = null;
            if (localIterator.hasNext())
            {
              localObject = (Map.Entry)localIterator.next();
              long l3 = ((Date)((List)((Map.Entry)localObject).getValue()).get(0)).getTime();
              l2 = l1;
              if (l3 >= l1) {
                break label213;
              }
              l2 = l3;
              paramList = ((Map.Entry)localObject).getKey();
              break label213;
            }
            this.bli.remove(paramList);
          }
          this.bli.put(paramString, localArrayList);
        }
        return;
      }
      finally {}
      label213:
      long l1 = l2;
    }
  }
  
  private X500Principal ͺ(X509Certificate paramX509Certificate)
  {
    return paramX509Certificate.getIssuerX500Principal();
  }
  
  private List ܙ(String paramString)
  {
    paramString = (List)this.bli.get(paramString);
    long l = System.currentTimeMillis();
    if (paramString != null)
    {
      if (((Date)paramString.get(0)).getTime() < l - blk) {
        return null;
      }
      return (List)paramString.get(1);
    }
    return null;
  }
  
  private String[] ง(String paramString)
  {
    return paramString.split("\\s+");
  }
  
  public Collection ˊ(X509AttributeCertStoreSelector paramX509AttributeCertStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.oa());
    String[] arrayOfString2 = ง(this.bbP.ov());
    String[] arrayOfString3 = ง(this.bbP.ob());
    Set localSet = ˊ(ˊ(paramX509AttributeCertStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509AttributeCertStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509AttributeCertStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509AttributeCertStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˊ(X509CRLStoreSelector paramX509CRLStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.ok());
    String[] arrayOfString2 = ง(this.bbP.oA());
    String[] arrayOfString3 = ง(this.bbP.ol());
    Set localSet = ˊ(ˊ(paramX509CRLStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509CRLStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˊ(X509CertPairStoreSelector paramX509CertPairStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.or());
    String[] arrayOfString2 = ง(this.bbP.oD());
    String[] arrayOfString3 = ง(this.bbP.os());
    Set localSet = ˊ(ˊ(paramX509CertPairStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CertPairStoreSelector);
    if (localSet.size() == 0)
    {
      X509CertStoreSelector localX509CertStoreSelector = new X509CertStoreSelector();
      X509CertPairStoreSelector localX509CertPairStoreSelector = new X509CertPairStoreSelector();
      localX509CertPairStoreSelector.ˋ(localX509CertStoreSelector);
      localX509CertPairStoreSelector.ˎ(localX509CertStoreSelector);
      localSet.addAll(ˊ(ˊ(localX509CertPairStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CertPairStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˋ(X509AttributeCertStoreSelector paramX509AttributeCertStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.oi());
    String[] arrayOfString2 = ง(this.bbP.oz());
    String[] arrayOfString3 = ง(this.bbP.oj());
    Set localSet = ˊ(ˊ(paramX509AttributeCertStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509AttributeCertStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509AttributeCertStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509AttributeCertStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˋ(X509CRLStoreSelector paramX509CRLStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.og());
    String[] arrayOfString2 = ง(this.bbP.oy());
    String[] arrayOfString3 = ง(this.bbP.oh());
    Set localSet = ˊ(ˊ(paramX509CRLStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509CRLStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˎ(X509AttributeCertStoreSelector paramX509AttributeCertStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.oe());
    String[] arrayOfString2 = ง(this.bbP.ox());
    String[] arrayOfString3 = ง(this.bbP.of());
    Set localSet = ˊ(ˊ(paramX509AttributeCertStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509AttributeCertStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509AttributeCertStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509AttributeCertStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˎ(X509CRLStoreSelector paramX509CRLStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.oc());
    String[] arrayOfString2 = ง(this.bbP.ow());
    String[] arrayOfString3 = ง(this.bbP.od());
    Set localSet = ˊ(ˊ(paramX509CRLStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509CRLStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˏ(X509CRLStoreSelector paramX509CRLStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.ot());
    String[] arrayOfString2 = ง(this.bbP.oE());
    String[] arrayOfString3 = ง(this.bbP.ou());
    Set localSet = ˊ(ˊ(paramX509CRLStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509CRLStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector));
    }
    return localSet;
  }
  
  public Collection ˏ(X509CertStoreSelector paramX509CertStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.oI());
    String[] arrayOfString2 = ง(this.bbP.oG());
    String[] arrayOfString3 = ง(this.bbP.oJ());
    Set localSet = ˊ(ˊ(paramX509CertStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CertStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509CertStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509CertStoreSelector));
    }
    return localSet;
  }
  
  public Collection ᐝ(X509CRLStoreSelector paramX509CRLStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.op());
    String[] arrayOfString2 = ง(this.bbP.oC());
    String[] arrayOfString3 = ง(this.bbP.oq());
    Set localSet = ˊ(ˊ(paramX509CRLStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509CRLStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509CRLStoreSelector));
    }
    return localSet;
  }
  
  public Collection ᐝ(X509CertStoreSelector paramX509CertStoreSelector)
  {
    String[] arrayOfString1 = ง(this.bbP.on());
    String[] arrayOfString2 = ง(this.bbP.oB());
    String[] arrayOfString3 = ง(this.bbP.oo());
    Set localSet = ˊ(ˊ(paramX509CertStoreSelector, arrayOfString1, arrayOfString2, arrayOfString3), paramX509CertStoreSelector);
    if (localSet.size() == 0) {
      localSet.addAll(ˊ(ˊ(new X509CertStoreSelector(), arrayOfString1, arrayOfString2, arrayOfString3), paramX509CertStoreSelector));
    }
    return localSet;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.x509.util.LDAPStoreHelper
 * JD-Core Version:    0.7.0.1
 */