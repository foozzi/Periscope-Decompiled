package o;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import retrofit.client.Client;
import retrofit.client.Header;
import retrofit.client.Request;
import retrofit.client.Response;
import retrofit.mime.FormUrlEncodedTypedOutput;
import retrofit.mime.TypedOutput;

public class ly
  extends ma
{
  private final mg PT;
  private final TwitterAuthConfig PU;
  
  public ly(TwitterAuthConfig paramTwitterAuthConfig, mg parammg, SSLSocketFactory paramSSLSocketFactory)
  {
    super(paramSSLSocketFactory);
    this.PU = paramTwitterAuthConfig;
    this.PT = parammg;
  }
  
  public Response execute(Request paramRequest)
  {
    paramRequest = new Request(paramRequest.getMethod(), paramRequest.getUrl(), ˊ(paramRequest), paramRequest.getBody());
    return this.PV.execute(paramRequest);
  }
  
  protected List<Header> ˊ(Request paramRequest)
  {
    Object localObject = new nm(paramRequest.getMethod(), paramRequest.getUrl(), this.PU, this.PT, null, ˋ(paramRequest));
    paramRequest = new ArrayList(paramRequest.getHeaders());
    localObject = ((nm)localObject).getHeaders().entrySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
      paramRequest.add(new Header((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    return paramRequest;
  }
  
  protected Map<String, String> ˋ(Request paramRequest)
  {
    TreeMap localTreeMap = new TreeMap();
    if ("POST".equals(paramRequest.getMethod().toUpperCase(Locale.US)))
    {
      paramRequest = paramRequest.getBody();
      if ((paramRequest instanceof FormUrlEncodedTypedOutput))
      {
        Object localObject = new ByteArrayOutputStream();
        paramRequest.writeTo((OutputStream)localObject);
        paramRequest = ((ByteArrayOutputStream)localObject).toString("UTF-8");
        if (paramRequest.length() > 0)
        {
          paramRequest = URLEncodedUtils.parse(URI.create("https://twitter.com/?" + paramRequest), "UTF-8").iterator();
          while (paramRequest.hasNext())
          {
            localObject = (NameValuePair)paramRequest.next();
            localTreeMap.put(((NameValuePair)localObject).getName(), ((NameValuePair)localObject).getValue());
          }
        }
      }
    }
    return localTreeMap;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.ly
 * JD-Core Version:    0.7.0.1
 */