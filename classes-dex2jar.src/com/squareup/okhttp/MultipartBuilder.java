package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import o.ue;
import o.uh;
import o.uj;

public final class MultipartBuilder
{
  public static final MediaType ALTERNATIVE;
  private static final byte[] COLONSPACE = { 58, 32 };
  private static final byte[] CRLF = { 13, 10 };
  private static final byte[] DASHDASH = { 45, 45 };
  public static final MediaType DIGEST;
  public static final MediaType FORM;
  public static final MediaType MIXED = MediaType.parse("multipart/mixed");
  public static final MediaType PARALLEL;
  private final uj boundary;
  private final List<RequestBody> partBodies = new ArrayList();
  private final List<Headers> partHeaders = new ArrayList();
  private MediaType type = MIXED;
  
  static
  {
    ALTERNATIVE = MediaType.parse("multipart/alternative");
    DIGEST = MediaType.parse("multipart/digest");
    PARALLEL = MediaType.parse("multipart/parallel");
    FORM = MediaType.parse("multipart/form-data");
  }
  
  public MultipartBuilder()
  {
    this(UUID.randomUUID().toString());
  }
  
  public MultipartBuilder(String paramString)
  {
    this.boundary = uj.ﺗ(paramString);
  }
  
  private static StringBuilder appendQuotedString(StringBuilder paramStringBuilder, String paramString)
  {
    paramStringBuilder.append('"');
    int i = 0;
    int j = paramString.length();
    while (i < j)
    {
      char c = paramString.charAt(i);
      switch (c)
      {
      default: 
        break;
      case '\n': 
        paramStringBuilder.append("%0A");
        break;
      case '\r': 
        paramStringBuilder.append("%0D");
        break;
      case '"': 
        paramStringBuilder.append("%22");
        break;
      }
      paramStringBuilder.append(c);
      i += 1;
    }
    paramStringBuilder.append('"');
    return paramStringBuilder;
  }
  
  public MultipartBuilder addFormDataPart(String paramString1, String paramString2)
  {
    return addFormDataPart(paramString1, null, RequestBody.create(null, paramString2));
  }
  
  public MultipartBuilder addFormDataPart(String paramString1, String paramString2, RequestBody paramRequestBody)
  {
    if (paramString1 == null) {
      throw new NullPointerException("name == null");
    }
    StringBuilder localStringBuilder = new StringBuilder("form-data; name=");
    appendQuotedString(localStringBuilder, paramString1);
    if (paramString2 != null)
    {
      localStringBuilder.append("; filename=");
      appendQuotedString(localStringBuilder, paramString2);
    }
    return addPart(Headers.of(new String[] { "Content-Disposition", localStringBuilder.toString() }), paramRequestBody);
  }
  
  public MultipartBuilder addPart(Headers paramHeaders, RequestBody paramRequestBody)
  {
    if (paramRequestBody == null) {
      throw new NullPointerException("body == null");
    }
    if ((paramHeaders != null) && (paramHeaders.get("Content-Type") != null)) {
      throw new IllegalArgumentException("Unexpected header: Content-Type");
    }
    if ((paramHeaders != null) && (paramHeaders.get("Content-Length") != null)) {
      throw new IllegalArgumentException("Unexpected header: Content-Length");
    }
    this.partHeaders.add(paramHeaders);
    this.partBodies.add(paramRequestBody);
    return this;
  }
  
  public MultipartBuilder addPart(RequestBody paramRequestBody)
  {
    return addPart(null, paramRequestBody);
  }
  
  public RequestBody build()
  {
    if (this.partHeaders.isEmpty()) {
      throw new IllegalStateException("Multipart body must have at least one part.");
    }
    return new MultipartRequestBody(this.type, this.boundary, this.partHeaders, this.partBodies);
  }
  
  public MultipartBuilder type(MediaType paramMediaType)
  {
    if (paramMediaType == null) {
      throw new NullPointerException("type == null");
    }
    if (!paramMediaType.type().equals("multipart")) {
      throw new IllegalArgumentException("multipart != " + paramMediaType);
    }
    this.type = paramMediaType;
    return this;
  }
  
  static final class MultipartRequestBody
    extends RequestBody
  {
    private final uj boundary;
    private long contentLength = -1L;
    private final MediaType contentType;
    private final List<RequestBody> partBodies;
    private final List<Headers> partHeaders;
    
    public MultipartRequestBody(MediaType paramMediaType, uj paramuj, List<Headers> paramList, List<RequestBody> paramList1)
    {
      if (paramMediaType == null) {
        throw new NullPointerException("type == null");
      }
      this.boundary = paramuj;
      this.contentType = MediaType.parse(paramMediaType + "; boundary=" + paramuj.ei());
      this.partHeaders = Util.immutableList(paramList);
      this.partBodies = Util.immutableList(paramList1);
    }
    
    private long writeOrCountBytes(uh paramuh, boolean paramBoolean)
    {
      long l1 = 0L;
      uh localuh = null;
      if (paramBoolean)
      {
        paramuh = new ue();
        localuh = paramuh;
      }
      int i = 0;
      int k = this.partHeaders.size();
      while (i < k)
      {
        Object localObject = (Headers)this.partHeaders.get(i);
        RequestBody localRequestBody = (RequestBody)this.partBodies.get(i);
        paramuh.ᐧ(MultipartBuilder.DASHDASH);
        paramuh.ˋ(this.boundary);
        paramuh.ᐧ(MultipartBuilder.CRLF);
        if (localObject != null)
        {
          int j = 0;
          int m = ((Headers)localObject).size();
          while (j < m)
          {
            paramuh.ﹰ(((Headers)localObject).name(j)).ᐧ(MultipartBuilder.COLONSPACE).ﹰ(((Headers)localObject).value(j)).ᐧ(MultipartBuilder.CRLF);
            j += 1;
          }
        }
        localObject = localRequestBody.contentType();
        if (localObject != null) {
          paramuh.ﹰ("Content-Type: ").ﹰ(((MediaType)localObject).toString()).ᐧ(MultipartBuilder.CRLF);
        }
        l2 = localRequestBody.contentLength();
        if (l2 != -1L)
        {
          paramuh.ﹰ("Content-Length: ").ʲ(l2).ᐧ(MultipartBuilder.CRLF);
        }
        else if (paramBoolean)
        {
          localuh.clear();
          return -1L;
        }
        paramuh.ᐧ(MultipartBuilder.CRLF);
        if (paramBoolean) {
          l1 += l2;
        } else {
          ((RequestBody)this.partBodies.get(i)).writeTo(paramuh);
        }
        paramuh.ᐧ(MultipartBuilder.CRLF);
        i += 1;
      }
      paramuh.ᐧ(MultipartBuilder.DASHDASH);
      paramuh.ˋ(this.boundary);
      paramuh.ᐧ(MultipartBuilder.DASHDASH);
      paramuh.ᐧ(MultipartBuilder.CRLF);
      long l2 = l1;
      if (paramBoolean)
      {
        l2 = l1 + localuh.size();
        localuh.clear();
      }
      return l2;
    }
    
    public long contentLength()
    {
      long l = this.contentLength;
      if (l != -1L) {
        return l;
      }
      l = writeOrCountBytes(null, true);
      this.contentLength = l;
      return l;
    }
    
    public MediaType contentType()
    {
      return this.contentType;
    }
    
    public void writeTo(uh paramuh)
    {
      writeOrCountBytes(paramuh, false);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.MultipartBuilder
 * JD-Core Version:    0.7.0.1
 */