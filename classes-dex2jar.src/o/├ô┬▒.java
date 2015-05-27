package o;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.CookieManager;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ӱ
  implements չ
{
  private static CookieManager AA = new CookieManager(new any(), new anx());
  private static final Pattern An = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
  private static final AtomicReference<byte[]> Ao = new AtomicReference();
  private final boolean Ap;
  private final int Aq;
  private final int Ar;
  private final String As;
  private final র<String> At;
  private final HashMap<String, String> Au;
  private HttpURLConnection Av;
  private long Aw;
  private long Ax;
  private long Ay;
  private long Az;
  private к tE;
  private final ף zR;
  private InputStream zT;
  private boolean zU;
  
  public ӱ(String paramString, র<String> paramর, ף paramף, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.As = ړ.ʳ(paramString);
    this.At = paramর;
    this.zR = paramף;
    this.Au = new HashMap();
    this.Aq = paramInt1;
    this.Ar = paramInt2;
    this.Ap = paramBoolean;
  }
  
  private void closeConnection()
  {
    if (this.Av != null)
    {
      this.Av.disconnect();
      this.Av = null;
    }
  }
  
  private void ż()
  {
    if (this.Ay == this.Aw) {
      return;
    }
    byte[] arrayOfByte2 = (byte[])Ao.getAndSet(null);
    byte[] arrayOfByte1 = arrayOfByte2;
    if (arrayOfByte2 == null) {
      arrayOfByte1 = new byte[4096];
    }
    while (this.Ay != this.Aw)
    {
      int i = (int)Math.min(this.Aw - this.Ay, arrayOfByte1.length);
      i = this.zT.read(arrayOfByte1, 0, i);
      if (Thread.interrupted()) {
        throw new InterruptedIOException();
      }
      if (i == -1) {
        throw new EOFException();
      }
      this.Ay += i;
      if (this.zR != null) {
        this.zR.ɨ(i);
      }
    }
    Ao.set(arrayOfByte1);
  }
  
  private int ʽ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.Ax != -1L) {
      paramInt2 = (int)Math.min(paramInt2, this.Ax - this.Az);
    }
    if (paramInt2 == 0) {
      return -1;
    }
    paramInt1 = this.zT.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt1 == -1)
    {
      if ((this.Ax != -1L) && (this.Ax != this.Az)) {
        throw new EOFException();
      }
      return -1;
    }
    this.Az += paramInt1;
    if (this.zR != null) {
      this.zR.ɨ(paramInt1);
    }
    return paramInt1;
  }
  
  private HttpURLConnection ˊ(URL paramURL, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURL.openConnection();
    localHttpURLConnection.setConnectTimeout(this.Aq);
    localHttpURLConnection.setReadTimeout(this.Ar);
    localHttpURLConnection.setDoOutput(false);
    Object localObject2;
    synchronized (this.Au)
    {
      localObject2 = this.Au.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        localHttpURLConnection.setRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    if ((paramLong1 != 0L) || (paramLong2 != -1L))
    {
      localObject2 = "bytes=" + paramLong1 + "-";
      ??? = localObject2;
      if (paramLong2 != -1L) {
        ??? = (String)localObject2 + (paramLong1 + paramLong2 - 1L);
      }
      localHttpURLConnection.setRequestProperty("Range", (String)???);
    }
    localHttpURLConnection.setRequestProperty("User-Agent", this.As);
    if (!paramBoolean) {
      localHttpURLConnection.setRequestProperty("Accept-Encoding", "identity");
    }
    try
    {
      paramURL = AA.get(paramURL.toURI(), localHttpURLConnection.getRequestProperties());
      if (paramURL.containsKey("Cookie")) {
        localHttpURLConnection.setRequestProperty("Cookie", (String)((List)paramURL.get("Cookie")).get(0));
      }
      return localHttpURLConnection;
    }
    catch (URISyntaxException paramURL)
    {
      Log.w("HttpDataSource", paramURL);
    }
    return localHttpURLConnection;
  }
  
  private static URL ˊ(URL paramURL, String paramString)
  {
    if (paramString == null) {
      throw new ProtocolException("Null location redirect");
    }
    paramURL = new URL(paramURL, paramString);
    paramString = paramURL.getProtocol();
    if ((!"https".equals(paramString)) && (!"http".equals(paramString))) {
      throw new ProtocolException("Unsupported protocol redirect: " + paramString);
    }
    return paramURL;
  }
  
  private static long ˋ(HttpURLConnection paramHttpURLConnection)
  {
    long l2 = -1L;
    String str = paramHttpURLConnection.getHeaderField("Content-Length");
    long l1 = l2;
    if (!TextUtils.isEmpty(str)) {
      try
      {
        l1 = Long.parseLong(str);
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        Log.e("HttpDataSource", "Unexpected Content-Length [" + str + "]");
        l1 = l2;
      }
    }
    paramHttpURLConnection = paramHttpURLConnection.getHeaderField("Content-Range");
    if (!TextUtils.isEmpty(paramHttpURLConnection))
    {
      Matcher localMatcher = An.matcher(paramHttpURLConnection);
      if (localMatcher.find()) {
        try
        {
          long l3 = Long.parseLong(localMatcher.group(2)) - Long.parseLong(localMatcher.group(1)) + 1L;
          if (l1 < 0L)
          {
            l2 = l3;
          }
          else
          {
            l2 = l1;
            if (l1 != l3)
            {
              Log.w("HttpDataSource", "Inconsistent headers [" + str + "] [" + paramHttpURLConnection + "]");
              l2 = Math.max(l1, l3);
            }
          }
          return l2;
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          Log.e("HttpDataSource", "Unexpected Content-Range [" + paramHttpURLConnection + "]");
        }
      }
    }
    return l1;
  }
  
  private HttpURLConnection ˋ(к paramк)
  {
    Object localObject = new URL(paramк.uri.toString());
    long l1 = paramк.tU;
    long l2 = paramк.length;
    boolean bool;
    if ((paramк.flags & 0x1) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    if (!this.Ap)
    {
      paramк = ˊ((URL)localObject, l1, l2, bool);
      paramк.connect();
      return paramк;
    }
    int i = 0;
    paramк = (к)localObject;
    for (;;)
    {
      int j = i;
      i = j + 1;
      if (j > 20) {
        break;
      }
      HttpURLConnection localHttpURLConnection = ˊ(paramк, l1, l2, bool);
      localHttpURLConnection.setInstanceFollowRedirects(false);
      localHttpURLConnection.connect();
      j = localHttpURLConnection.getResponseCode();
      if ((j == 300) || (j == 301) || (j == 302) || (j == 303) || (j == 307) || (j == 308))
      {
        String str = localHttpURLConnection.getHeaderField("Location");
        localObject = localHttpURLConnection.getHeaderFields();
        localHttpURLConnection.disconnect();
        paramк = ˊ(paramк, str);
        try
        {
          AA.put(paramк.toURI(), (Map)localObject);
        }
        catch (URISyntaxException localURISyntaxException)
        {
          Log.w("HttpDataSource", localURISyntaxException);
          localURISyntaxException.printStackTrace();
        }
      }
      else
      {
        return localHttpURLConnection;
      }
    }
    throw new NoRouteToHostException("Too many redirects: " + i);
  }
  
  public void close()
  {
    try
    {
      if (this.zT != null)
      {
        ผ.ˊ(this.Av, Ŷ());
        try
        {
          this.zT.close();
        }
        catch (IOException localIOException)
        {
          throw new չ.if(localIOException, this.tE);
        }
        this.zT = null;
      }
      return;
    }
    finally
    {
      if (this.zU)
      {
        this.zU = false;
        if (this.zR != null) {
          this.zR.č();
        }
        closeConnection();
      }
    }
  }
  
  public String getUri()
  {
    if (this.Av == null) {
      return null;
    }
    return this.Av.getURL().toString();
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      ż();
      paramInt1 = ʽ(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new չ.if(paramArrayOfByte, this.tE);
    }
  }
  
  protected final long Ŷ()
  {
    if (this.Ax == -1L) {
      return this.Ax;
    }
    return this.Ax - this.Az;
  }
  
  public long ˊ(к paramк)
  {
    this.tE = paramк;
    this.Az = 0L;
    this.Ay = 0L;
    try
    {
      this.Av = ˋ(paramк);
    }
    catch (IOException localIOException1)
    {
      throw new չ.if("Unable to connect to " + paramк.uri.toString(), localIOException1, paramк);
    }
    int i;
    try
    {
      i = this.Av.getResponseCode();
    }
    catch (IOException localIOException2)
    {
      closeConnection();
      throw new չ.if("Unable to connect to " + paramк.uri.toString(), localIOException2, paramк);
    }
    if ((i < 200) || (i > 299))
    {
      localObject = this.Av.getHeaderFields();
      closeConnection();
      throw new չ.ˋ(i, (Map)localObject, paramк);
    }
    Object localObject = this.Av.getContentType();
    if ((this.At != null) && (!this.At.יִ(localObject)))
    {
      closeConnection();
      throw new չ.ˊ((String)localObject, paramк);
    }
    long l;
    if ((i == 200) && (paramк.tU != 0L)) {
      l = paramк.tU;
    } else {
      l = 0L;
    }
    this.Aw = l;
    if ((paramк.flags & 0x1) == 0)
    {
      l = ˋ(this.Av);
      if (paramк.length != -1L) {
        l = paramк.length;
      } else if (l != -1L) {
        l -= this.Aw;
      } else {
        l = -1L;
      }
      this.Ax = l;
    }
    else
    {
      this.Ax = paramк.length;
    }
    try
    {
      this.zT = this.Av.getInputStream();
    }
    catch (IOException localIOException3)
    {
      closeConnection();
      throw new չ.if(localIOException3, paramк);
    }
    this.zU = true;
    if (this.zR != null) {
      this.zR.ĉ();
    }
    return this.Ax;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ó±
 * JD-Core Version:    0.7.0.1
 */