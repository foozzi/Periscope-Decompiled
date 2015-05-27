package com.squareup.okhttp;

import com.squareup.okhttp.internal.DiskLruCache;
import com.squareup.okhttp.internal.DiskLruCache.Editor;
import com.squareup.okhttp.internal.DiskLruCache.Snapshot;
import com.squareup.okhttp.internal.InternalCache;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.CacheRequest;
import com.squareup.okhttp.internal.http.CacheStrategy;
import com.squareup.okhttp.internal.http.HttpMethod;
import com.squareup.okhttp.internal.http.OkHeaders;
import com.squareup.okhttp.internal.http.StatusLine;
import com.squareup.okhttp.internal.io.FileSystem;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import o.ue;
import o.uh;
import o.ui;
import o.uj;
import o.up;
import o.uz;
import o.va;

public final class Cache
{
  private static final int ENTRY_BODY = 1;
  private static final int ENTRY_COUNT = 2;
  private static final int ENTRY_METADATA = 0;
  private static final int VERSION = 201105;
  private final DiskLruCache cache;
  private int hitCount;
  final InternalCache internalCache = new Cache.1(this);
  private int networkCount;
  private int requestCount;
  private int writeAbortCount;
  private int writeSuccessCount;
  
  public Cache(File paramFile, long paramLong)
  {
    this.cache = DiskLruCache.create(FileSystem.SYSTEM, paramFile, 201105, 2, paramLong);
  }
  
  private void abortQuietly(DiskLruCache.Editor paramEditor)
  {
    if (paramEditor != null) {}
    try
    {
      paramEditor.abort();
      return;
    }
    catch (IOException paramEditor) {}
  }
  
  private CacheRequest put(Response paramResponse)
  {
    Object localObject = paramResponse.request().method();
    if (HttpMethod.invalidatesCache(paramResponse.request().method()))
    {
      try
      {
        remove(paramResponse.request());
      }
      catch (IOException paramResponse) {}
      return null;
    }
    if (!((String)localObject).equals("GET")) {
      return null;
    }
    if (OkHeaders.hasVaryAll(paramResponse)) {
      return null;
    }
    Entry localEntry = new Entry(paramResponse);
    localObject = null;
    try
    {
      paramResponse = this.cache.edit(urlToKey(paramResponse.request()));
      if (paramResponse == null) {
        return null;
      }
      localObject = paramResponse;
      localEntry.writeTo(paramResponse);
      localObject = paramResponse;
      paramResponse = new CacheRequestImpl(paramResponse);
      return paramResponse;
    }
    catch (IOException paramResponse)
    {
      abortQuietly((DiskLruCache.Editor)localObject);
    }
    return null;
  }
  
  private static int readInt(ui paramui)
  {
    try
    {
      long l = paramui.eb();
      paramui = paramui.ee();
      if ((l < 0L) || (l > 2147483647L) || (!paramui.isEmpty())) {
        throw new IOException("expected an int but was \"" + l + paramui + "\"");
      }
      return (int)l;
    }
    catch (NumberFormatException paramui)
    {
      throw new IOException(paramui.getMessage());
    }
  }
  
  private void remove(Request paramRequest)
  {
    this.cache.remove(urlToKey(paramRequest));
  }
  
  private void trackConditionalCacheHit()
  {
    try
    {
      this.hitCount += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private void trackResponse(CacheStrategy paramCacheStrategy)
  {
    try
    {
      this.requestCount += 1;
      if (paramCacheStrategy.networkRequest != null) {
        this.networkCount += 1;
      } else if (paramCacheStrategy.cacheResponse != null) {
        this.hitCount += 1;
      }
      return;
    }
    finally {}
  }
  
  private void update(Response paramResponse1, Response paramResponse2)
  {
    Entry localEntry = new Entry(paramResponse2);
    paramResponse2 = ((CacheResponseBody)paramResponse1.body()).snapshot;
    paramResponse1 = null;
    try
    {
      paramResponse2 = paramResponse2.edit();
      if (paramResponse2 != null)
      {
        paramResponse1 = paramResponse2;
        localEntry.writeTo(paramResponse2);
        paramResponse1 = paramResponse2;
        paramResponse2.commit();
      }
      return;
    }
    catch (IOException paramResponse2)
    {
      abortQuietly(paramResponse1);
    }
  }
  
  private static String urlToKey(Request paramRequest)
  {
    return Util.md5Hex(paramRequest.urlString());
  }
  
  public void close()
  {
    this.cache.close();
  }
  
  public void delete()
  {
    this.cache.delete();
  }
  
  public void evictAll()
  {
    this.cache.evictAll();
  }
  
  public void flush()
  {
    this.cache.flush();
  }
  
  Response get(Request paramRequest)
  {
    Object localObject = urlToKey(paramRequest);
    try
    {
      localObject = this.cache.get((String)localObject);
      if (localObject == null) {
        return null;
      }
    }
    catch (IOException paramRequest)
    {
      return null;
    }
    Entry localEntry;
    try
    {
      localEntry = new Entry(((DiskLruCache.Snapshot)localObject).getSource(0));
    }
    catch (IOException paramRequest)
    {
      Util.closeQuietly((Closeable)localObject);
      return null;
    }
    localObject = localEntry.response(paramRequest, (DiskLruCache.Snapshot)localObject);
    if (!localEntry.matches(paramRequest, (Response)localObject))
    {
      Util.closeQuietly(((Response)localObject).body());
      return null;
    }
    return localObject;
  }
  
  public File getDirectory()
  {
    return this.cache.getDirectory();
  }
  
  public int getHitCount()
  {
    try
    {
      int i = this.hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long getMaxSize()
  {
    return this.cache.getMaxSize();
  }
  
  public int getNetworkCount()
  {
    try
    {
      int i = this.networkCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int getRequestCount()
  {
    try
    {
      int i = this.requestCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long getSize()
  {
    return this.cache.size();
  }
  
  public int getWriteAbortCount()
  {
    try
    {
      int i = this.writeAbortCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public int getWriteSuccessCount()
  {
    try
    {
      int i = this.writeSuccessCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isClosed()
  {
    return this.cache.isClosed();
  }
  
  public Iterator<String> urls()
  {
    return new Cache.2(this);
  }
  
  final class CacheRequestImpl
    implements CacheRequest
  {
    private uz body;
    private uz cacheOut;
    private boolean done;
    private final DiskLruCache.Editor editor;
    
    public CacheRequestImpl(DiskLruCache.Editor paramEditor)
    {
      this.editor = paramEditor;
      this.cacheOut = paramEditor.newSink(1);
      this.body = new Cache.CacheRequestImpl.1(this, this.cacheOut, Cache.this, paramEditor);
    }
    
    public void abort()
    {
      synchronized (Cache.this)
      {
        boolean bool = this.done;
        if (bool) {
          return;
        }
        this.done = true;
        Cache.access$908(Cache.this);
      }
      Util.closeQuietly(this.cacheOut);
      try
      {
        this.editor.abort();
        return;
      }
      catch (IOException localIOException) {}
    }
    
    public uz body()
    {
      return this.body;
    }
  }
  
  static class CacheResponseBody
    extends ResponseBody
  {
    private final ui bodySource;
    private final String contentLength;
    private final String contentType;
    private final DiskLruCache.Snapshot snapshot;
    
    public CacheResponseBody(DiskLruCache.Snapshot paramSnapshot, String paramString1, String paramString2)
    {
      this.snapshot = paramSnapshot;
      this.contentType = paramString1;
      this.contentLength = paramString2;
      this.bodySource = up.ˋ(new Cache.CacheResponseBody.1(this, paramSnapshot.getSource(1), paramSnapshot));
    }
    
    public long contentLength()
    {
      try
      {
        if (this.contentLength != null)
        {
          long l = Long.parseLong(this.contentLength);
          return l;
        }
        return -1L;
      }
      catch (NumberFormatException localNumberFormatException) {}
      return -1L;
    }
    
    public MediaType contentType()
    {
      if (this.contentType != null) {
        return MediaType.parse(this.contentType);
      }
      return null;
    }
    
    public ui source()
    {
      return this.bodySource;
    }
  }
  
  static final class Entry
  {
    private final int code;
    private final Handshake handshake;
    private final String message;
    private final Protocol protocol;
    private final String requestMethod;
    private final Headers responseHeaders;
    private final String url;
    private final Headers varyHeaders;
    
    public Entry(Response paramResponse)
    {
      this.url = paramResponse.request().urlString();
      this.varyHeaders = OkHeaders.varyHeaders(paramResponse);
      this.requestMethod = paramResponse.request().method();
      this.protocol = paramResponse.protocol();
      this.code = paramResponse.code();
      this.message = paramResponse.message();
      this.responseHeaders = paramResponse.headers();
      this.handshake = paramResponse.handshake();
    }
    
    public Entry(va paramva)
    {
      try
      {
        ui localui = up.ˋ(paramva);
        this.url = localui.ee();
        this.requestMethod = localui.ee();
        Object localObject2 = new Headers.Builder();
        int j = Cache.readInt(localui);
        int i = 0;
        while (i < j)
        {
          ((Headers.Builder)localObject2).addLenient(localui.ee());
          i += 1;
        }
        this.varyHeaders = ((Headers.Builder)localObject2).build();
        localObject2 = StatusLine.parse(localui.ee());
        this.protocol = ((StatusLine)localObject2).protocol;
        this.code = ((StatusLine)localObject2).code;
        this.message = ((StatusLine)localObject2).message;
        localObject2 = new Headers.Builder();
        j = Cache.readInt(localui);
        i = 0;
        while (i < j)
        {
          ((Headers.Builder)localObject2).addLenient(localui.ee());
          i += 1;
        }
        this.responseHeaders = ((Headers.Builder)localObject2).build();
        if (isHttps())
        {
          localObject2 = localui.ee();
          if (((String)localObject2).length() > 0) {
            throw new IOException("expected \"\" but was \"" + (String)localObject2 + "\"");
          }
          this.handshake = Handshake.get(localui.ee(), readCertificateList(localui), readCertificateList(localui));
        }
        else
        {
          this.handshake = null;
        }
        return;
      }
      finally
      {
        paramva.close();
      }
    }
    
    private boolean isHttps()
    {
      return this.url.startsWith("https://");
    }
    
    private List<Certificate> readCertificateList(ui paramui)
    {
      int j = Cache.readInt(paramui);
      if (j == -1) {
        return Collections.emptyList();
      }
      try
      {
        CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
        ArrayList localArrayList = new ArrayList(j);
        int i = 0;
        while (i < j)
        {
          String str = paramui.ee();
          ue localue = new ue();
          localue.ˊ(uj.＿(str));
          localArrayList.add(localCertificateFactory.generateCertificate(localue.dX()));
          i += 1;
        }
        return localArrayList;
      }
      catch (CertificateException paramui)
      {
        throw new IOException(paramui.getMessage());
      }
    }
    
    private void writeCertList(uh paramuh, List<Certificate> paramList)
    {
      try
      {
        paramuh.ʲ(paramList.size());
        paramuh.ɟ(10);
        int i = 0;
        int j = paramList.size();
        while (i < j)
        {
          paramuh.ﹰ(uj.ᐨ(((Certificate)paramList.get(i)).getEncoded()).ej());
          paramuh.ɟ(10);
          i += 1;
        }
        return;
      }
      catch (CertificateEncodingException paramuh)
      {
        throw new IOException(paramuh.getMessage());
      }
    }
    
    public boolean matches(Request paramRequest, Response paramResponse)
    {
      return (this.url.equals(paramRequest.urlString())) && (this.requestMethod.equals(paramRequest.method())) && (OkHeaders.varyMatches(paramResponse, this.varyHeaders, paramRequest));
    }
    
    public Response response(Request paramRequest, DiskLruCache.Snapshot paramSnapshot)
    {
      paramRequest = this.responseHeaders.get("Content-Type");
      String str = this.responseHeaders.get("Content-Length");
      Request localRequest = new Request.Builder().url(this.url).method(this.requestMethod, null).headers(this.varyHeaders).build();
      return new Response.Builder().request(localRequest).protocol(this.protocol).code(this.code).message(this.message).headers(this.responseHeaders).body(new Cache.CacheResponseBody(paramSnapshot, paramRequest, str)).handshake(this.handshake).build();
    }
    
    public void writeTo(DiskLruCache.Editor paramEditor)
    {
      paramEditor = up.ˊ(paramEditor.newSink(0));
      paramEditor.ﹰ(this.url);
      paramEditor.ɟ(10);
      paramEditor.ﹰ(this.requestMethod);
      paramEditor.ɟ(10);
      paramEditor.ʲ(this.varyHeaders.size());
      paramEditor.ɟ(10);
      int i = 0;
      int j = this.varyHeaders.size();
      while (i < j)
      {
        paramEditor.ﹰ(this.varyHeaders.name(i));
        paramEditor.ﹰ(": ");
        paramEditor.ﹰ(this.varyHeaders.value(i));
        paramEditor.ɟ(10);
        i += 1;
      }
      paramEditor.ﹰ(new StatusLine(this.protocol, this.code, this.message).toString());
      paramEditor.ɟ(10);
      paramEditor.ʲ(this.responseHeaders.size());
      paramEditor.ɟ(10);
      i = 0;
      j = this.responseHeaders.size();
      while (i < j)
      {
        paramEditor.ﹰ(this.responseHeaders.name(i));
        paramEditor.ﹰ(": ");
        paramEditor.ﹰ(this.responseHeaders.value(i));
        paramEditor.ɟ(10);
        i += 1;
      }
      if (isHttps())
      {
        paramEditor.ɟ(10);
        paramEditor.ﹰ(this.handshake.cipherSuite());
        paramEditor.ɟ(10);
        writeCertList(paramEditor, this.handshake.peerCertificates());
        writeCertList(paramEditor, this.handshake.localCertificates());
      }
      paramEditor.close();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.Cache
 * JD-Core Version:    0.7.0.1
 */