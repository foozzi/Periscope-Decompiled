package o;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ɭ
  implements Į<InputStream>
{
  private static final ɭ.ˊ gX = new ɭ.if(null);
  private final ﻣ gY;
  private final ɭ.ˊ gZ;
  private HttpURLConnection ha;
  private volatile boolean hb;
  private InputStream stream;
  
  public ɭ(ﻣ paramﻣ)
  {
    this(paramﻣ, gX);
  }
  
  ɭ(ﻣ paramﻣ, ɭ.ˊ paramˊ)
  {
    this.gY = paramﻣ;
    this.gZ = paramˊ;
  }
  
  private InputStream ˊ(HttpURLConnection paramHttpURLConnection)
  {
    if (TextUtils.isEmpty(paramHttpURLConnection.getContentEncoding()))
    {
      int i = paramHttpURLConnection.getContentLength();
      this.stream = ﺰ.ˊ(paramHttpURLConnection.getInputStream(), i);
    }
    else
    {
      if (Log.isLoggable("HttpUrlFetcher", 3)) {
        Log.d("HttpUrlFetcher", "Got non empty content encoding: " + paramHttpURLConnection.getContentEncoding());
      }
      this.stream = paramHttpURLConnection.getInputStream();
    }
    return this.stream;
  }
  
  private InputStream ˊ(URL paramURL1, int paramInt, URL paramURL2, Map<String, String> paramMap)
  {
    if (paramInt >= 5) {
      throw new IOException("Too many (> 5) redirects!");
    }
    if (paramURL2 != null) {}
    try
    {
      if (paramURL1.toURI().equals(paramURL2.toURI())) {
        throw new IOException("In re-direct loop");
      }
    }
    catch (URISyntaxException paramURL2) {}
    this.ha = this.gZ.ˊ(paramURL1);
    paramURL2 = paramMap.entrySet().iterator();
    while (paramURL2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramURL2.next();
      this.ha.addRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    if (TextUtils.isEmpty(this.ha.getRequestProperty("Accept-Encoding"))) {
      this.ha.setRequestProperty("Accept-Encoding", "identity");
    }
    this.ha.setConnectTimeout(2500);
    this.ha.setReadTimeout(2500);
    this.ha.setUseCaches(false);
    this.ha.setDoInput(true);
    this.ha.connect();
    if (this.hb) {
      return null;
    }
    int i = this.ha.getResponseCode();
    if (i / 100 == 2) {
      return ˊ(this.ha);
    }
    if (i / 100 == 3)
    {
      paramURL2 = this.ha.getHeaderField("Location");
      if (TextUtils.isEmpty(paramURL2)) {
        throw new IOException("Received empty or null redirect url");
      }
      return ˊ(new URL(paramURL1, paramURL2), paramInt + 1, paramURL1, paramMap);
    }
    if (i == -1) {
      throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
    }
    throw new IOException("Request failed " + i + ": " + this.ha.getResponseMessage());
  }
  
  public void cancel()
  {
    this.hb = true;
  }
  
  public String getId()
  {
    return this.gY.亠();
  }
  
  public InputStream ˋ(ᔿ paramᔿ)
  {
    return ˊ(this.gY.toURL(), 0, null, this.gY.getHeaders());
  }
  
  public void ב()
  {
    if (this.stream != null) {
      try
      {
        this.stream.close();
      }
      catch (IOException localIOException) {}
    }
    if (this.ha != null) {
      this.ha.disconnect();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É­
 * JD-Core Version:    0.7.0.1
 */