package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.security.Principal;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;
import o.uj;

public final class CertificatePinner
{
  public static final CertificatePinner DEFAULT = new Builder().build();
  private final Map<String, List<uj>> hostnameToPins;
  
  private CertificatePinner(Builder paramBuilder)
  {
    this.hostnameToPins = Util.immutableMap(paramBuilder.hostnameToPins);
  }
  
  public static String pin(Certificate paramCertificate)
  {
    if (!(paramCertificate instanceof X509Certificate)) {
      throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }
    return "sha1/" + sha1((X509Certificate)paramCertificate).ej();
  }
  
  private static uj sha1(X509Certificate paramX509Certificate)
  {
    return Util.sha1(uj.ᐨ(paramX509Certificate.getPublicKey().getEncoded()));
  }
  
  public void check(String paramString, List<Certificate> paramList)
  {
    List localList = (List)this.hostnameToPins.get(paramString);
    if (localList == null) {
      return;
    }
    int i = 0;
    int j = paramList.size();
    while (i < j)
    {
      if (localList.contains(sha1((X509Certificate)paramList.get(i)))) {
        return;
      }
      i += 1;
    }
    StringBuilder localStringBuilder = new StringBuilder().append("Certificate pinning failure!").append("\n  Peer certificate chain:");
    i = 0;
    j = paramList.size();
    while (i < j)
    {
      X509Certificate localX509Certificate = (X509Certificate)paramList.get(i);
      localStringBuilder.append("\n    ").append(pin(localX509Certificate)).append(": ").append(localX509Certificate.getSubjectDN().getName());
      i += 1;
    }
    localStringBuilder.append("\n  Pinned certificates for ").append(paramString).append(":");
    i = 0;
    j = localList.size();
    while (i < j)
    {
      paramString = (uj)localList.get(i);
      localStringBuilder.append("\n    sha1/").append(paramString.ej());
      i += 1;
    }
    throw new SSLPeerUnverifiedException(localStringBuilder.toString());
  }
  
  public void check(String paramString, Certificate... paramVarArgs)
  {
    check(paramString, Arrays.asList(paramVarArgs));
  }
  
  public static final class Builder
  {
    private final Map<String, List<uj>> hostnameToPins = new LinkedHashMap();
    
    public Builder add(String paramString, String... paramVarArgs)
    {
      if (paramString == null) {
        throw new IllegalArgumentException("hostname == null");
      }
      ArrayList localArrayList = new ArrayList();
      paramString = (List)this.hostnameToPins.put(paramString, Collections.unmodifiableList(localArrayList));
      if (paramString != null) {
        localArrayList.addAll(paramString);
      }
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        paramString = paramVarArgs[i];
        if (!paramString.startsWith("sha1/")) {
          throw new IllegalArgumentException("pins must start with 'sha1/': " + paramString);
        }
        uj localuj = uj.＿(paramString.substring("sha1/".length()));
        if (localuj == null) {
          throw new IllegalArgumentException("pins must be base64: " + paramString);
        }
        localArrayList.add(localuj);
        i += 1;
      }
      return this;
    }
    
    public CertificatePinner build()
    {
      return new CertificatePinner(this, null);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.CertificatePinner
 * JD-Core Version:    0.7.0.1
 */