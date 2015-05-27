package org.spongycastle.jce.provider;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.cert.CRL;
import java.security.cert.CRLSelector;
import java.security.cert.CertSelector;
import java.security.cert.CertStoreException;
import java.security.cert.CertStoreSpi;
import java.security.cert.CertificateFactory;
import java.security.cert.X509CRLSelector;
import java.security.cert.X509CertSelector;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import javax.security.auth.x500.X500Principal;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.x509.CertificatePair;
import org.spongycastle.jce.X509LDAPCertStoreParameters;

public class X509LDAPCertStoreSpi
  extends CertStoreSpi
{
  private static String bbQ = "com.sun.jndi.ldap.LdapCtxFactory";
  private static String bbR = "ignore";
  private X509LDAPCertStoreParameters bbP;
  
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
  
  private String ˇ(String paramString1, String paramString2)
  {
    int i = paramString1.toLowerCase().indexOf(paramString2.toLowerCase());
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
  
  /* Error */
  private Set ˊ(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: new 109	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   7: aload_1
    //   8: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   11: ldc 116
    //   13: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_2
    //   17: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: astore 5
    //   25: aload_1
    //   26: ifnonnull +6 -> 32
    //   29: aconst_null
    //   30: astore 5
    //   32: aconst_null
    //   33: astore_2
    //   34: aconst_null
    //   35: astore_1
    //   36: new 121	java/util/HashSet
    //   39: dup
    //   40: invokespecial 122	java/util/HashSet:<init>	()V
    //   43: astore 8
    //   45: aload_0
    //   46: invokespecial 124	org/spongycastle/jce/provider/X509LDAPCertStoreSpi:pc	()Ljavax/naming/directory/DirContext;
    //   49: astore 6
    //   51: aload 6
    //   53: astore_1
    //   54: aload 6
    //   56: astore_2
    //   57: new 126	javax/naming/directory/SearchControls
    //   60: dup
    //   61: invokespecial 127	javax/naming/directory/SearchControls:<init>	()V
    //   64: astore 9
    //   66: aload 6
    //   68: astore_1
    //   69: aload 6
    //   71: astore_2
    //   72: aload 9
    //   74: iconst_2
    //   75: invokevirtual 131	javax/naming/directory/SearchControls:setSearchScope	(I)V
    //   78: aload 6
    //   80: astore_1
    //   81: aload 6
    //   83: astore_2
    //   84: aload 9
    //   86: lconst_0
    //   87: invokevirtual 135	javax/naming/directory/SearchControls:setCountLimit	(J)V
    //   90: iconst_0
    //   91: istore 4
    //   93: aload 6
    //   95: astore_1
    //   96: aload 6
    //   98: astore_2
    //   99: iload 4
    //   101: aload_3
    //   102: arraylength
    //   103: if_icmpge +254 -> 357
    //   106: aload 6
    //   108: astore_1
    //   109: aload 6
    //   111: astore_2
    //   112: iconst_1
    //   113: anewarray 66	java/lang/String
    //   116: astore 10
    //   118: aload 10
    //   120: iconst_0
    //   121: aload_3
    //   122: iload 4
    //   124: aaload
    //   125: aastore
    //   126: aload 6
    //   128: astore_1
    //   129: aload 6
    //   131: astore_2
    //   132: aload 9
    //   134: aload 10
    //   136: invokevirtual 139	javax/naming/directory/SearchControls:setReturningAttributes	([Ljava/lang/String;)V
    //   139: aload 6
    //   141: astore_1
    //   142: aload 6
    //   144: astore_2
    //   145: new 109	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   152: ldc 141
    //   154: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload 5
    //   159: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: ldc 143
    //   164: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: aload 10
    //   169: iconst_0
    //   170: aaload
    //   171: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc 145
    //   176: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: astore 7
    //   184: aload 5
    //   186: ifnonnull +38 -> 224
    //   189: aload 6
    //   191: astore_1
    //   192: aload 6
    //   194: astore_2
    //   195: new 109	java/lang/StringBuilder
    //   198: dup
    //   199: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   202: ldc 147
    //   204: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload 10
    //   209: iconst_0
    //   210: aaload
    //   211: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: ldc 149
    //   216: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   222: astore 7
    //   224: aload 6
    //   226: astore_1
    //   227: aload 6
    //   229: astore_2
    //   230: aload 6
    //   232: aload_0
    //   233: getfield 41	org/spongycastle/jce/provider/X509LDAPCertStoreSpi:bbP	Lorg/spongycastle/jce/X509LDAPCertStoreParameters;
    //   236: invokevirtual 152	org/spongycastle/jce/X509LDAPCertStoreParameters:om	()Ljava/lang/String;
    //   239: aload 7
    //   241: aload 9
    //   243: invokeinterface 158 4 0
    //   248: astore 7
    //   250: aload 6
    //   252: astore_1
    //   253: aload 6
    //   255: astore_2
    //   256: aload 7
    //   258: invokeinterface 164 1 0
    //   263: ifeq +85 -> 348
    //   266: aload 6
    //   268: astore_1
    //   269: aload 6
    //   271: astore_2
    //   272: aload 7
    //   274: invokeinterface 168 1 0
    //   279: checkcast 170	javax/naming/directory/SearchResult
    //   282: invokevirtual 174	javax/naming/directory/SearchResult:getAttributes	()Ljavax/naming/directory/Attributes;
    //   285: invokeinterface 180 1 0
    //   290: invokeinterface 168 1 0
    //   295: checkcast 182	javax/naming/directory/Attribute
    //   298: invokeinterface 183 1 0
    //   303: astore 10
    //   305: aload 6
    //   307: astore_1
    //   308: aload 6
    //   310: astore_2
    //   311: aload 10
    //   313: invokeinterface 186 1 0
    //   318: ifeq +27 -> 345
    //   321: aload 6
    //   323: astore_1
    //   324: aload 6
    //   326: astore_2
    //   327: aload 8
    //   329: aload 10
    //   331: invokeinterface 168 1 0
    //   336: invokeinterface 192 2 0
    //   341: pop
    //   342: goto -37 -> 305
    //   345: goto -95 -> 250
    //   348: iload 4
    //   350: iconst_1
    //   351: iadd
    //   352: istore 4
    //   354: goto -261 -> 93
    //   357: aload 6
    //   359: ifnull +10 -> 369
    //   362: aload 6
    //   364: invokeinterface 195 1 0
    //   369: aload 8
    //   371: areturn
    //   372: astore_1
    //   373: aload 8
    //   375: areturn
    //   376: astore_3
    //   377: aload_1
    //   378: astore_2
    //   379: new 197	java/security/cert/CertStoreException
    //   382: dup
    //   383: new 109	java/lang/StringBuilder
    //   386: dup
    //   387: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   390: ldc 199
    //   392: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: aload_3
    //   396: invokevirtual 202	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   399: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokespecial 205	java/security/cert/CertStoreException:<init>	(Ljava/lang/String;)V
    //   405: athrow
    //   406: astore_1
    //   407: aload_2
    //   408: ifnull +9 -> 417
    //   411: aload_2
    //   412: invokeinterface 195 1 0
    //   417: goto +4 -> 421
    //   420: astore_2
    //   421: aload_1
    //   422: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	423	0	this	X509LDAPCertStoreSpi
    //   0	423	1	paramString1	String
    //   0	423	2	paramString2	String
    //   0	423	3	paramArrayOfString	String[]
    //   91	262	4	i	int
    //   23	162	5	str	String
    //   49	314	6	localDirContext	DirContext
    //   182	91	7	localObject1	Object
    //   43	331	8	localHashSet	HashSet
    //   64	178	9	localSearchControls	javax.naming.directory.SearchControls
    //   116	214	10	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   362	369	372	java/lang/Exception
    //   45	51	376	java/lang/Exception
    //   57	66	376	java/lang/Exception
    //   72	78	376	java/lang/Exception
    //   84	90	376	java/lang/Exception
    //   99	106	376	java/lang/Exception
    //   112	118	376	java/lang/Exception
    //   132	139	376	java/lang/Exception
    //   145	184	376	java/lang/Exception
    //   195	224	376	java/lang/Exception
    //   230	250	376	java/lang/Exception
    //   256	266	376	java/lang/Exception
    //   272	305	376	java/lang/Exception
    //   311	321	376	java/lang/Exception
    //   327	342	376	java/lang/Exception
    //   45	51	406	finally
    //   57	66	406	finally
    //   72	78	406	finally
    //   84	90	406	finally
    //   99	106	406	finally
    //   112	118	406	finally
    //   132	139	406	finally
    //   145	184	406	finally
    //   195	224	406	finally
    //   230	250	406	finally
    //   256	266	406	finally
    //   272	305	406	finally
    //   311	321	406	finally
    //   327	342	406	finally
    //   379	406	406	finally
    //   411	417	420	java/lang/Exception
  }
  
  private Set ˊ(X509CertSelector paramX509CertSelector)
  {
    String str1 = this.bbP.oI();
    String str2 = this.bbP.oG();
    String str3 = this.bbP.oJ();
    return ˊ(paramX509CertSelector, new String[] { str1 }, str2, str3);
  }
  
  private Set ˊ(X509CertSelector paramX509CertSelector, String[] paramArrayOfString, String paramString1, String paramString2)
  {
    HashSet localHashSet = new HashSet();
    try
    {
      if ((paramX509CertSelector.getSubjectAsBytes() != null) || (paramX509CertSelector.getSubjectAsString() != null) || (paramX509CertSelector.getCertificate() != null))
      {
        Object localObject = null;
        if (paramX509CertSelector.getCertificate() != null)
        {
          localObject = paramX509CertSelector.getCertificate().getSubjectX500Principal().getName("RFC1779");
          String str = paramX509CertSelector.getCertificate().getSerialNumber().toString();
          paramX509CertSelector = (X509CertSelector)localObject;
          localObject = str;
        }
        else if (paramX509CertSelector.getSubjectAsBytes() != null)
        {
          paramX509CertSelector = new X500Principal(paramX509CertSelector.getSubjectAsBytes()).getName("RFC1779");
        }
        else
        {
          paramX509CertSelector = paramX509CertSelector.getSubjectAsString();
        }
        paramX509CertSelector = ˇ(paramX509CertSelector, paramString2);
        localHashSet.addAll(ˊ(paramString1, "*" + paramX509CertSelector + "*", paramArrayOfString));
        if ((localObject != null) && (this.bbP.oH() != null)) {
          localHashSet.addAll(ˊ(this.bbP.oH(), "*" + (String)localObject + "*", paramArrayOfString));
        }
      }
      else
      {
        localHashSet.addAll(ˊ(paramString1, "*", paramArrayOfString));
        return localHashSet;
      }
    }
    catch (IOException paramX509CertSelector)
    {
      throw new CertStoreException("exception processing selector: " + paramX509CertSelector);
    }
    return localHashSet;
  }
  
  private Set ˋ(X509CertSelector paramX509CertSelector)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.bbP.on();
    paramX509CertSelector = ˊ(paramX509CertSelector, arrayOfString, this.bbP.oB(), this.bbP.oo());
    if (paramX509CertSelector.isEmpty()) {
      paramX509CertSelector.addAll(ˊ(null, "*", arrayOfString));
    }
    return paramX509CertSelector;
  }
  
  private Set ˎ(X509CertSelector paramX509CertSelector)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.bbP.or();
    paramX509CertSelector = ˊ(paramX509CertSelector, arrayOfString, this.bbP.oD(), this.bbP.os());
    if (paramX509CertSelector.isEmpty()) {
      paramX509CertSelector.addAll(ˊ(null, "*", arrayOfString));
    }
    return paramX509CertSelector;
  }
  
  public Collection engineGetCRLs(CRLSelector paramCRLSelector)
  {
    Object localObject1 = new String[1];
    localObject1[0] = this.bbP.op();
    if (!(paramCRLSelector instanceof X509CRLSelector)) {
      throw new CertStoreException("selector is not a X509CRLSelector");
    }
    X509CRLSelector localX509CRLSelector = (X509CRLSelector)paramCRLSelector;
    HashSet localHashSet1 = new HashSet();
    Object localObject2 = this.bbP.oC();
    HashSet localHashSet2 = new HashSet();
    if (localX509CRLSelector.getIssuerNames() != null)
    {
      Iterator localIterator = localX509CRLSelector.getIssuerNames().iterator();
      while (localIterator.hasNext())
      {
        paramCRLSelector = localIterator.next();
        String str;
        if ((paramCRLSelector instanceof String))
        {
          str = this.bbP.oq();
          paramCRLSelector = ˇ((String)paramCRLSelector, str);
        }
        else
        {
          str = this.bbP.oq();
          paramCRLSelector = ˇ(new X500Principal((byte[])paramCRLSelector).getName("RFC1779"), str);
        }
        localHashSet2.addAll(ˊ((String)localObject2, "*" + paramCRLSelector + "*", (String[])localObject1));
      }
    }
    else
    {
      localHashSet2.addAll(ˊ((String)localObject2, "*", (String[])localObject1));
    }
    localHashSet2.addAll(ˊ(null, "*", (String[])localObject1));
    paramCRLSelector = localHashSet2.iterator();
    try
    {
      localObject1 = CertificateFactory.getInstance("X.509", "SC");
      while (paramCRLSelector.hasNext())
      {
        localObject2 = ((CertificateFactory)localObject1).generateCRL(new ByteArrayInputStream((byte[])paramCRLSelector.next()));
        if (localX509CRLSelector.match((CRL)localObject2)) {
          localHashSet1.add(localObject2);
        }
      }
      return localHashSet1;
    }
    catch (Exception paramCRLSelector)
    {
      throw new CertStoreException("CRL cannot be constructed from LDAP result " + paramCRLSelector);
    }
  }
  
  public Collection engineGetCertificates(CertSelector paramCertSelector)
  {
    if (!(paramCertSelector instanceof X509CertSelector)) {
      throw new CertStoreException("selector is not a X509CertSelector");
    }
    paramCertSelector = (X509CertSelector)paramCertSelector;
    HashSet localHashSet = new HashSet();
    Object localObject1 = ˊ(paramCertSelector);
    ((Set)localObject1).addAll(ˋ(paramCertSelector));
    ((Set)localObject1).addAll(ˎ(paramCertSelector));
    localObject1 = ((Set)localObject1).iterator();
    try
    {
      CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509", "SC");
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject3 = (byte[])((Iterator)localObject1).next();
        if ((localObject3 != null) && (localObject3.length != 0))
        {
          Object localObject2 = new ArrayList();
          ((List)localObject2).add(localObject3);
          try
          {
            localObject3 = CertificatePair.ﭔ(new ASN1InputStream((byte[])localObject3).eH());
            ((List)localObject2).clear();
            if (((CertificatePair)localObject3).hq() != null) {
              ((List)localObject2).add(((CertificatePair)localObject3).hq().getEncoded());
            }
            if (((CertificatePair)localObject3).hr() != null) {
              ((List)localObject2).add(((CertificatePair)localObject3).hr().getEncoded());
            }
          }
          catch (IOException localIOException) {}catch (IllegalArgumentException localIllegalArgumentException) {}
          localObject2 = ((List)localObject2).iterator();
          while (((Iterator)localObject2).hasNext())
          {
            Object localObject4 = new ByteArrayInputStream((byte[])((Iterator)localObject2).next());
            try
            {
              localObject4 = localCertificateFactory.generateCertificate((InputStream)localObject4);
              if (paramCertSelector.match((java.security.cert.Certificate)localObject4)) {
                localHashSet.add(localObject4);
              }
            }
            catch (Exception localException) {}
          }
        }
      }
      return localHashSet;
    }
    catch (Exception paramCertSelector)
    {
      throw new CertStoreException("certificate cannot be constructed from LDAP result: " + paramCertSelector);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jce.provider.X509LDAPCertStoreSpi
 * JD-Core Version:    0.7.0.1
 */