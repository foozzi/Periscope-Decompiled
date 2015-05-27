package retrofit.client;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import retrofit.mime.TypedInput;
import retrofit.mime.TypedOutput;

public class UrlConnectionClient
  implements Client
{
  private static final int CHUNK_SIZE = 4096;
  
  public Response execute(Request paramRequest)
  {
    HttpURLConnection localHttpURLConnection = openConnection(paramRequest);
    prepareRequest(localHttpURLConnection, paramRequest);
    return readResponse(localHttpURLConnection);
  }
  
  public HttpURLConnection openConnection(Request paramRequest)
  {
    paramRequest = (HttpURLConnection)new URL(paramRequest.getUrl()).openConnection();
    paramRequest.setConnectTimeout(15000);
    paramRequest.setReadTimeout(20000);
    return paramRequest;
  }
  
  void prepareRequest(HttpURLConnection paramHttpURLConnection, Request paramRequest)
  {
    paramHttpURLConnection.setRequestMethod(paramRequest.getMethod());
    paramHttpURLConnection.setDoInput(true);
    Iterator localIterator = paramRequest.getHeaders().iterator();
    while (localIterator.hasNext())
    {
      Header localHeader = (Header)localIterator.next();
      paramHttpURLConnection.addRequestProperty(localHeader.getName(), localHeader.getValue());
    }
    paramRequest = paramRequest.getBody();
    if (paramRequest != null)
    {
      paramHttpURLConnection.setDoOutput(true);
      paramHttpURLConnection.addRequestProperty("Content-Type", paramRequest.mimeType());
      long l = paramRequest.length();
      if (l != -1L)
      {
        paramHttpURLConnection.setFixedLengthStreamingMode((int)l);
        paramHttpURLConnection.addRequestProperty("Content-Length", String.valueOf(l));
      }
      else
      {
        paramHttpURLConnection.setChunkedStreamingMode(4096);
      }
      paramRequest.writeTo(paramHttpURLConnection.getOutputStream());
    }
  }
  
  Response readResponse(HttpURLConnection paramHttpURLConnection)
  {
    int i = paramHttpURLConnection.getResponseCode();
    Object localObject2 = paramHttpURLConnection.getResponseMessage();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    ArrayList localArrayList = new ArrayList();
    localObject2 = paramHttpURLConnection.getHeaderFields().entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Object localObject3 = (Map.Entry)((Iterator)localObject2).next();
      str = (String)((Map.Entry)localObject3).getKey();
      localObject3 = ((List)((Map.Entry)localObject3).getValue()).iterator();
      while (((Iterator)localObject3).hasNext()) {
        localArrayList.add(new Header(str, (String)((Iterator)localObject3).next()));
      }
    }
    String str = paramHttpURLConnection.getContentType();
    int j = paramHttpURLConnection.getContentLength();
    if (i >= 400) {
      localObject2 = paramHttpURLConnection.getErrorStream();
    } else {
      localObject2 = paramHttpURLConnection.getInputStream();
    }
    localObject2 = new TypedInputStream(str, j, (InputStream)localObject2, null);
    return new Response(paramHttpURLConnection.getURL().toString(), i, (String)localObject1, localArrayList, (TypedInput)localObject2);
  }
  
  static class TypedInputStream
    implements TypedInput
  {
    private final long length;
    private final String mimeType;
    private final InputStream stream;
    
    private TypedInputStream(String paramString, long paramLong, InputStream paramInputStream)
    {
      this.mimeType = paramString;
      this.length = paramLong;
      this.stream = paramInputStream;
    }
    
    public InputStream in()
    {
      return this.stream;
    }
    
    public long length()
    {
      return this.length;
    }
    
    public String mimeType()
    {
      return this.mimeType;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     retrofit.client.UrlConnectionClient
 * JD-Core Version:    0.7.0.1
 */