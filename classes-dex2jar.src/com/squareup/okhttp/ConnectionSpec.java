package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import com.squareup.okhttp.internal.Util;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class ConnectionSpec
{
  public static final ConnectionSpec CLEARTEXT = new Builder(false).build();
  public static final ConnectionSpec COMPATIBLE_TLS;
  public static final ConnectionSpec MODERN_TLS = new Builder(true).cipherSuites(new CipherSuite[] { CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_DSS_WITH_AES_128_CBC_SHA, CipherSuite.TLS_DHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA }).tlsVersions(new TlsVersion[] { TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0 }).supportsTlsExtensions(true).build();
  private final String[] cipherSuites;
  final boolean supportsTlsExtensions;
  final boolean tls;
  private final String[] tlsVersions;
  
  static
  {
    COMPATIBLE_TLS = new Builder(MODERN_TLS).tlsVersions(new TlsVersion[] { TlsVersion.TLS_1_0 }).supportsTlsExtensions(true).build();
  }
  
  private ConnectionSpec(Builder paramBuilder)
  {
    this.tls = paramBuilder.tls;
    this.cipherSuites = paramBuilder.cipherSuites;
    this.tlsVersions = paramBuilder.tlsVersions;
    this.supportsTlsExtensions = paramBuilder.supportsTlsExtensions;
  }
  
  private ConnectionSpec supportedSpec(SSLSocket paramSSLSocket)
  {
    String[] arrayOfString = null;
    if (this.cipherSuites != null)
    {
      arrayOfString = paramSSLSocket.getEnabledCipherSuites();
      arrayOfString = (String[])Util.intersect(String.class, this.cipherSuites, arrayOfString);
    }
    paramSSLSocket = paramSSLSocket.getEnabledProtocols();
    paramSSLSocket = (String[])Util.intersect(String.class, this.tlsVersions, paramSSLSocket);
    return new Builder(this).cipherSuites(arrayOfString).tlsVersions(paramSSLSocket).build();
  }
  
  void apply(SSLSocket paramSSLSocket, Route paramRoute)
  {
    ConnectionSpec localConnectionSpec = supportedSpec(paramSSLSocket);
    paramSSLSocket.setEnabledProtocols(localConnectionSpec.tlsVersions);
    Object localObject1 = localConnectionSpec.cipherSuites;
    Object localObject2 = localObject1;
    if (paramRoute.shouldSendTlsFallbackIndicator)
    {
      localObject2 = localObject1;
      if (Arrays.asList(paramSSLSocket.getSupportedCipherSuites()).contains("TLS_FALLBACK_SCSV"))
      {
        if (localObject1 == null) {
          localObject1 = paramSSLSocket.getEnabledCipherSuites();
        }
        localObject2 = new String[localObject1.length + 1];
        System.arraycopy(localObject1, 0, localObject2, 0, localObject1.length);
        localObject2[(localObject2.length - 1)] = "TLS_FALLBACK_SCSV";
      }
    }
    if (localObject2 != null) {
      paramSSLSocket.setEnabledCipherSuites((String[])localObject2);
    }
    localObject1 = Platform.get();
    if (localConnectionSpec.supportsTlsExtensions) {
      ((Platform)localObject1).configureTlsExtensions(paramSSLSocket, paramRoute.address.uriHost, paramRoute.address.protocols);
    }
  }
  
  public List<CipherSuite> cipherSuites()
  {
    if (this.cipherSuites == null) {
      return null;
    }
    CipherSuite[] arrayOfCipherSuite = new CipherSuite[this.cipherSuites.length];
    int i = 0;
    while (i < this.cipherSuites.length)
    {
      arrayOfCipherSuite[i] = CipherSuite.forJavaName(this.cipherSuites[i]);
      i += 1;
    }
    return Util.immutableList(arrayOfCipherSuite);
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ConnectionSpec)) {
      return false;
    }
    if (paramObject == this) {
      return true;
    }
    paramObject = (ConnectionSpec)paramObject;
    if (this.tls != paramObject.tls) {
      return false;
    }
    if (this.tls)
    {
      if (!Arrays.equals(this.cipherSuites, paramObject.cipherSuites)) {
        return false;
      }
      if (!Arrays.equals(this.tlsVersions, paramObject.tlsVersions)) {
        return false;
      }
      if (this.supportsTlsExtensions != paramObject.supportsTlsExtensions) {
        return false;
      }
    }
    return true;
  }
  
  public int hashCode()
  {
    int i = 17;
    if (this.tls)
    {
      int j = Arrays.hashCode(this.cipherSuites);
      int k = Arrays.hashCode(this.tlsVersions);
      if (this.supportsTlsExtensions) {
        i = 0;
      } else {
        i = 1;
      }
      i = ((j + 527) * 31 + k) * 31 + i;
    }
    return i;
  }
  
  public boolean isTls()
  {
    return this.tls;
  }
  
  public boolean supportsTlsExtensions()
  {
    return this.supportsTlsExtensions;
  }
  
  public List<TlsVersion> tlsVersions()
  {
    TlsVersion[] arrayOfTlsVersion = new TlsVersion[this.tlsVersions.length];
    int i = 0;
    while (i < this.tlsVersions.length)
    {
      arrayOfTlsVersion[i] = TlsVersion.forJavaName(this.tlsVersions[i]);
      i += 1;
    }
    return Util.immutableList(arrayOfTlsVersion);
  }
  
  public String toString()
  {
    if (this.tls)
    {
      Object localObject = cipherSuites();
      if (localObject == null) {
        localObject = "[use default]";
      } else {
        localObject = localObject.toString();
      }
      return "ConnectionSpec(cipherSuites=" + (String)localObject + ", tlsVersions=" + tlsVersions() + ", supportsTlsExtensions=" + this.supportsTlsExtensions + ")";
    }
    return "ConnectionSpec()";
  }
  
  public static final class Builder
  {
    private String[] cipherSuites;
    private boolean supportsTlsExtensions;
    private boolean tls;
    private String[] tlsVersions;
    
    public Builder(ConnectionSpec paramConnectionSpec)
    {
      this.tls = paramConnectionSpec.tls;
      this.cipherSuites = paramConnectionSpec.cipherSuites;
      this.tlsVersions = paramConnectionSpec.tlsVersions;
      this.supportsTlsExtensions = paramConnectionSpec.supportsTlsExtensions;
    }
    
    Builder(boolean paramBoolean)
    {
      this.tls = paramBoolean;
    }
    
    public ConnectionSpec build()
    {
      return new ConnectionSpec(this, null);
    }
    
    public Builder cipherSuites(CipherSuite... paramVarArgs)
    {
      if (!this.tls) {
        throw new IllegalStateException("no cipher suites for cleartext connections");
      }
      String[] arrayOfString = new String[paramVarArgs.length];
      int i = 0;
      while (i < paramVarArgs.length)
      {
        arrayOfString[i] = paramVarArgs[i].javaName;
        i += 1;
      }
      this.cipherSuites = arrayOfString;
      return this;
    }
    
    public Builder cipherSuites(String... paramVarArgs)
    {
      if (!this.tls) {
        throw new IllegalStateException("no cipher suites for cleartext connections");
      }
      if (paramVarArgs == null)
      {
        this.cipherSuites = null;
        return this;
      }
      this.cipherSuites = ((String[])paramVarArgs.clone());
      return this;
    }
    
    public Builder supportsTlsExtensions(boolean paramBoolean)
    {
      if (!this.tls) {
        throw new IllegalStateException("no TLS extensions for cleartext connections");
      }
      this.supportsTlsExtensions = paramBoolean;
      return this;
    }
    
    public Builder tlsVersions(TlsVersion... paramVarArgs)
    {
      if (!this.tls) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      String[] arrayOfString = new String[paramVarArgs.length];
      int i = 0;
      while (i < paramVarArgs.length)
      {
        arrayOfString[i] = paramVarArgs[i].javaName;
        i += 1;
      }
      this.tlsVersions = arrayOfString;
      return this;
    }
    
    public Builder tlsVersions(String... paramVarArgs)
    {
      if (!this.tls) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      if (paramVarArgs == null)
      {
        this.tlsVersions = null;
        return this;
      }
      this.tlsVersions = ((String[])paramVarArgs.clone());
      return this;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.ConnectionSpec
 * JD-Core Version:    0.7.0.1
 */