package o;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.zip.GZIPInputStream;

public class sn
{
  private static final String[] XT = new String[0];
  private static sn.ˋ XU = sn.ˋ.Yg;
  private HttpURLConnection Av = null;
  private aux XV;
  private boolean XW;
  private boolean XX = true;
  private boolean XY = false;
  private String XZ;
  private int Ya;
  private final String requestMethod;
  private int sX = 8192;
  public final URL url;
  
  public sn(CharSequence paramCharSequence, String paramString)
  {
    try
    {
      this.url = new URL(paramCharSequence.toString());
    }
    catch (MalformedURLException paramCharSequence)
    {
      throw new sn.ˎ(paramCharSequence);
    }
    this.requestMethod = paramString;
  }
  
  private Proxy dp()
  {
    return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.XZ, this.Ya));
  }
  
  private HttpURLConnection dq()
  {
    try
    {
      HttpURLConnection localHttpURLConnection;
      if (this.XZ != null) {
        localHttpURLConnection = XU.ˊ(this.url, dp());
      } else {
        localHttpURLConnection = XU.ˋ(this.url);
      }
      localHttpURLConnection.setRequestMethod(this.requestMethod);
      return localHttpURLConnection;
    }
    catch (IOException localIOException)
    {
      throw new sn.ˎ(localIOException);
    }
  }
  
  public static String ˉ(CharSequence paramCharSequence)
  {
    URL localURL;
    try
    {
      localURL = new URL(paramCharSequence.toString());
    }
    catch (IOException paramCharSequence)
    {
      throw new sn.ˎ(paramCharSequence);
    }
    Object localObject = localURL.getHost();
    int i = localURL.getPort();
    paramCharSequence = (CharSequence)localObject;
    if (i != -1) {
      paramCharSequence = (String)localObject + ':' + Integer.toString(i);
    }
    try
    {
      localObject = new URI(localURL.getProtocol(), paramCharSequence, localURL.getPath(), localURL.getQuery(), null).toASCIIString();
      i = ((String)localObject).indexOf('?');
      paramCharSequence = (CharSequence)localObject;
      if (i > 0)
      {
        paramCharSequence = (CharSequence)localObject;
        if (i + 1 < ((String)localObject).length()) {
          paramCharSequence = ((String)localObject).substring(0, i + 1) + ((String)localObject).substring(i + 1).replace("+", "%2B");
        }
      }
      return paramCharSequence;
    }
    catch (URISyntaxException paramCharSequence)
    {
      localObject = new IOException("Parsing URI failed");
      ((IOException)localObject).initCause(paramCharSequence);
      throw new sn.ˎ((IOException)localObject);
    }
  }
  
  public static String ˊ(CharSequence paramCharSequence, Map<?, ?> paramMap)
  {
    Object localObject = paramCharSequence.toString();
    if ((paramMap == null) || (paramMap.isEmpty())) {
      return localObject;
    }
    paramCharSequence = new StringBuilder((String)localObject);
    ˊ((String)localObject, paramCharSequence);
    ˋ((String)localObject, paramCharSequence);
    paramMap = paramMap.entrySet().iterator();
    localObject = (Map.Entry)paramMap.next();
    paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
    paramCharSequence.append('=');
    localObject = ((Map.Entry)localObject).getValue();
    if (localObject != null) {
      paramCharSequence.append(localObject);
    }
    while (paramMap.hasNext())
    {
      paramCharSequence.append('&');
      localObject = (Map.Entry)paramMap.next();
      paramCharSequence.append(((Map.Entry)localObject).getKey().toString());
      paramCharSequence.append('=');
      localObject = ((Map.Entry)localObject).getValue();
      if (localObject != null) {
        paramCharSequence.append(localObject);
      }
    }
    return paramCharSequence.toString();
  }
  
  private static StringBuilder ˊ(String paramString, StringBuilder paramStringBuilder)
  {
    if (paramString.indexOf(':') + 2 == paramString.lastIndexOf('/')) {
      paramStringBuilder.append('/');
    }
    return paramStringBuilder;
  }
  
  public static sn ˊ(CharSequence paramCharSequence, Map<?, ?> paramMap, boolean paramBoolean)
  {
    paramCharSequence = ˊ(paramCharSequence, paramMap);
    if (paramBoolean) {
      paramCharSequence = ˉ(paramCharSequence);
    }
    return ˌ(paramCharSequence);
  }
  
  private static StringBuilder ˋ(String paramString, StringBuilder paramStringBuilder)
  {
    int i = paramString.indexOf('?');
    int j = paramStringBuilder.length() - 1;
    if (i == -1)
    {
      paramStringBuilder.append('?');
      return paramStringBuilder;
    }
    if ((i < j) && (paramString.charAt(j) != '&')) {
      paramStringBuilder.append('&');
    }
    return paramStringBuilder;
  }
  
  public static sn ˋ(CharSequence paramCharSequence, Map<?, ?> paramMap, boolean paramBoolean)
  {
    paramCharSequence = ˊ(paramCharSequence, paramMap);
    if (paramBoolean) {
      paramCharSequence = ˉ(paramCharSequence);
    }
    return ˍ(paramCharSequence);
  }
  
  public static sn ˌ(CharSequence paramCharSequence)
  {
    return new sn(paramCharSequence, "GET");
  }
  
  public static sn ˍ(CharSequence paramCharSequence)
  {
    return new sn(paramCharSequence, "POST");
  }
  
  public static sn ˑ(CharSequence paramCharSequence)
  {
    return new sn(paramCharSequence, "PUT");
  }
  
  public static sn ـ(CharSequence paramCharSequence)
  {
    return new sn(paramCharSequence, "DELETE");
  }
  
  private static String ᵒ(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0)) {
      return paramString;
    }
    return "UTF-8";
  }
  
  public int code()
  {
    try
    {
      dA();
      int i = dr().getResponseCode();
      return i;
    }
    catch (IOException localIOException)
    {
      throw new sn.ˎ(localIOException);
    }
  }
  
  protected sn dA()
  {
    if (this.XV == null) {
      return this;
    }
    if (this.XW) {
      this.XV.ⅰ("\r\n--00content0boundary00--\r\n");
    }
    if (this.XX) {
      try
      {
        this.XV.close();
      }
      catch (IOException localIOException) {}
    } else {
      this.XV.close();
    }
    this.XV = null;
    return this;
  }
  
  protected sn dB()
  {
    try
    {
      sn localsn = dA();
      return localsn;
    }
    catch (IOException localIOException)
    {
      throw new sn.ˎ(localIOException);
    }
  }
  
  protected sn dC()
  {
    if (this.XV != null) {
      return this;
    }
    dr().setDoOutput(true);
    String str = ٴ(dr().getRequestProperty("Content-Type"), "charset");
    this.XV = new aux(dr().getOutputStream(), str, this.sX);
    return this;
  }
  
  protected sn dD()
  {
    if (!this.XW)
    {
      this.XW = true;
      ⁿ("multipart/form-data; boundary=00content0boundary00").dC();
      this.XV.ⅰ("--00content0boundary00\r\n");
      return this;
    }
    this.XV.ⅰ("\r\n--00content0boundary00\r\n");
    return this;
  }
  
  public HttpURLConnection dr()
  {
    if (this.Av == null) {
      this.Av = dq();
    }
    return this.Av;
  }
  
  public boolean ds()
  {
    return 200 == code();
  }
  
  protected ByteArrayOutputStream dt()
  {
    int i = dz();
    if (i > 0) {
      return new ByteArrayOutputStream(i);
    }
    return new ByteArrayOutputStream();
  }
  
  public String du()
  {
    return ᵘ(dx());
  }
  
  public BufferedInputStream dv()
  {
    return new BufferedInputStream(dw(), this.sX);
  }
  
  public InputStream dw()
  {
    if (code() < 400)
    {
      try
      {
        InputStream localInputStream1 = dr().getInputStream();
      }
      catch (IOException localIOException1)
      {
        throw new sn.ˎ(localIOException1);
      }
    }
    else
    {
      InputStream localInputStream2 = dr().getErrorStream();
      Object localObject = localInputStream2;
      if (localInputStream2 == null) {
        try
        {
          localObject = dr().getInputStream();
        }
        catch (IOException localIOException2)
        {
          throw new sn.ˎ(localIOException2);
        }
      }
    }
    if ((!this.XY) || (!"gzip".equals(dy()))) {
      return localIOException2;
    }
    try
    {
      GZIPInputStream localGZIPInputStream = new GZIPInputStream(localIOException2);
      return localGZIPInputStream;
    }
    catch (IOException localIOException3)
    {
      throw new sn.ˎ(localIOException3);
    }
  }
  
  public String dx()
  {
    return י("Content-Type", "charset");
  }
  
  public String dy()
  {
    return header("Content-Encoding");
  }
  
  public int dz()
  {
    return ᵤ("Content-Length");
  }
  
  public String header(String paramString)
  {
    dB();
    return dr().getHeaderField(paramString);
  }
  
  public String method()
  {
    return dr().getRequestMethod();
  }
  
  public String toString()
  {
    return method() + ' ' + url();
  }
  
  public URL url()
  {
    return dr().getURL();
  }
  
  public sn ˊ(String paramString1, String paramString2, Number paramNumber)
  {
    if (paramNumber != null) {
      paramNumber = paramNumber.toString();
    } else {
      paramNumber = null;
    }
    return ˎ(paramString1, paramString2, paramNumber);
  }
  
  public sn ˊ(String paramString1, String paramString2, String paramString3, File paramFile)
  {
    Object localObject = null;
    File localFile = null;
    try
    {
      paramFile = new BufferedInputStream(new FileInputStream(paramFile));
      localFile = paramFile;
      localObject = paramFile;
      paramString1 = ˊ(paramString1, paramString2, paramString3, paramFile);
      if (paramFile != null) {
        try
        {
          paramFile.close();
          return paramString1;
        }
        catch (IOException paramString2) {}
      }
      return paramString1;
    }
    catch (IOException paramString1)
    {
      localObject = localFile;
      throw new sn.ˎ(paramString1);
    }
    finally
    {
      if (localObject != null) {
        try
        {
          ((InputStream)localObject).close();
        }
        catch (IOException paramString2) {}
      }
    }
  }
  
  public sn ˊ(String paramString1, String paramString2, String paramString3, InputStream paramInputStream)
  {
    try
    {
      dD();
      ˋ(paramString1, paramString2, paramString3);
      ˋ(paramInputStream, this.XV);
      return this;
    }
    catch (IOException paramString1)
    {
      throw new sn.ˎ(paramString1);
    }
  }
  
  public sn ˊ(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      dD();
      ˋ(paramString1, paramString2, paramString3);
      this.XV.ⅰ(paramString4);
      return this;
    }
    catch (IOException paramString1)
    {
      throw new sn.ˎ(paramString1);
    }
  }
  
  protected sn ˋ(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    return (sn)new so(this, paramInputStream, this.XX, paramInputStream, paramOutputStream).call();
  }
  
  public sn ˋ(String paramString, Number paramNumber)
  {
    return ˊ(paramString, null, paramNumber);
  }
  
  protected sn ˋ(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"").append(paramString1);
    if (paramString2 != null) {
      localStringBuilder.append("\"; filename=\"").append(paramString2);
    }
    localStringBuilder.append('"');
    ᵔ("Content-Disposition", localStringBuilder.toString());
    if (paramString3 != null) {
      ᵔ("Content-Type", paramString3);
    }
    return ᐧ("\r\n");
  }
  
  public int ˎ(String paramString, int paramInt)
  {
    dB();
    return dr().getHeaderFieldInt(paramString, paramInt);
  }
  
  public sn ˎ(String paramString1, String paramString2, String paramString3)
  {
    return ˊ(paramString1, paramString2, null, paramString3);
  }
  
  public sn ˎ(Map.Entry<String, String> paramEntry)
  {
    return ՙ((String)paramEntry.getKey(), (String)paramEntry.getValue());
  }
  
  public sn ՙ(String paramString1, String paramString2)
  {
    dr().setRequestProperty(paramString1, paramString2);
    return this;
  }
  
  public String י(String paramString1, String paramString2)
  {
    return ٴ(header(paramString1), paramString2);
  }
  
  protected String ٴ(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0)) {
      return null;
    }
    int j = paramString1.length();
    int m = paramString1.indexOf(';') + 1;
    if ((m == 0) || (m == j)) {
      return null;
    }
    int n = paramString1.indexOf(';', m);
    int k = m;
    int i = n;
    if (n == -1)
    {
      i = j;
      k = m;
    }
    while (k < i)
    {
      m = paramString1.indexOf('=', k);
      if ((m != -1) && (m < i) && (paramString2.equals(paramString1.substring(k, m).trim())))
      {
        String str = paramString1.substring(m + 1, i).trim();
        k = str.length();
        if (k != 0)
        {
          if ((k > 2) && ('"' == str.charAt(0)) && ('"' == str.charAt(k - 1))) {
            return str.substring(1, k - 1);
          }
          return str;
        }
      }
      k = i + 1;
      m = paramString1.indexOf(';', k);
      i = m;
      if (m == -1) {
        i = j;
      }
    }
    return null;
  }
  
  public sn ᐧ(CharSequence paramCharSequence)
  {
    try
    {
      dC();
      this.XV.ⅰ(paramCharSequence.toString());
      return this;
    }
    catch (IOException paramCharSequence)
    {
      throw new sn.ˎ(paramCharSequence);
    }
  }
  
  public sn ᔋ(boolean paramBoolean)
  {
    dr().setUseCaches(paramBoolean);
    return this;
  }
  
  public sn ᴵ(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0)) {
      return ՙ("Content-Type", paramString1 + "; charset=" + paramString2);
    }
    return ՙ("Content-Type", paramString1);
  }
  
  public sn ᵎ(String paramString1, String paramString2)
  {
    return ˎ(paramString1, null, paramString2);
  }
  
  public sn ᵔ(String paramString1, String paramString2)
  {
    return ᐧ(paramString1).ᐧ(": ").ᐧ(paramString2).ᐧ("\r\n");
  }
  
  public String ᵘ(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream = dt();
    try
    {
      ˋ(dv(), localByteArrayOutputStream);
      paramString = localByteArrayOutputStream.toString(ᵒ(paramString));
      return paramString;
    }
    catch (IOException paramString)
    {
      throw new sn.ˎ(paramString);
    }
  }
  
  public int ᵤ(String paramString)
  {
    return ˎ(paramString, -1);
  }
  
  public sn ⁿ(String paramString)
  {
    return ᴵ(paramString, null);
  }
  
  public sn ﹽ(int paramInt)
  {
    dr().setConnectTimeout(paramInt);
    return this;
  }
  
  public static class aux
    extends BufferedOutputStream
  {
    private final CharsetEncoder Yh;
    
    public aux(OutputStream paramOutputStream, String paramString, int paramInt)
    {
      super(paramInt);
      this.Yh = Charset.forName(sn.Ⅰ(paramString)).newEncoder();
    }
    
    public aux ⅰ(String paramString)
    {
      paramString = this.Yh.encode(CharBuffer.wrap(paramString));
      super.write(paramString.array(), 0, paramString.limit());
      return this;
    }
  }
  
  public static class if
  {
    private static final byte[] Ye = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
    
    public static byte[] ˈ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      if (paramArrayOfByte == null) {
        throw new NullPointerException("Cannot serialize a null array.");
      }
      if (paramInt1 < 0) {
        throw new IllegalArgumentException("Cannot have negative offset: " + paramInt1);
      }
      if (paramInt2 < 0) {
        throw new IllegalArgumentException("Cannot have length offset: " + paramInt2);
      }
      if (paramInt1 + paramInt2 > paramArrayOfByte.length) {
        throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramArrayOfByte.length) }));
      }
      int j = paramInt2 / 3;
      if (paramInt2 % 3 > 0) {
        i = 4;
      } else {
        i = 0;
      }
      byte[] arrayOfByte = new byte[j * 4 + i];
      j = 0;
      int i = 0;
      while (j < paramInt2 - 2)
      {
        ˊ(paramArrayOfByte, j + paramInt1, 3, arrayOfByte, i);
        j += 3;
        i += 4;
      }
      int k = i;
      if (j < paramInt2)
      {
        ˊ(paramArrayOfByte, j + paramInt1, paramInt2 - j, arrayOfByte, i);
        k = i + 4;
      }
      if (k <= arrayOfByte.length - 1)
      {
        paramArrayOfByte = new byte[k];
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, k);
        return paramArrayOfByte;
      }
      return arrayOfByte;
    }
    
    private static byte[] ˊ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
    {
      byte[] arrayOfByte = Ye;
      int i;
      if (paramInt2 > 0) {
        i = paramArrayOfByte1[paramInt1] << 24 >>> 8;
      } else {
        i = 0;
      }
      int j;
      if (paramInt2 > 1) {
        j = paramArrayOfByte1[(paramInt1 + 1)] << 24 >>> 16;
      } else {
        j = 0;
      }
      if (paramInt2 > 2) {
        paramInt1 = paramArrayOfByte1[(paramInt1 + 2)] << 24 >>> 24;
      } else {
        paramInt1 = 0;
      }
      paramInt1 = i | j | paramInt1;
      switch (paramInt2)
      {
      default: 
        return paramArrayOfByte2;
      case 3: 
        paramArrayOfByte2[paramInt3] = arrayOfByte[(paramInt1 >>> 18)];
        paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(paramInt1 >>> 12 & 0x3F)];
        paramArrayOfByte2[(paramInt3 + 2)] = arrayOfByte[(paramInt1 >>> 6 & 0x3F)];
        paramArrayOfByte2[(paramInt3 + 3)] = arrayOfByte[(paramInt1 & 0x3F)];
        return paramArrayOfByte2;
      case 2: 
        paramArrayOfByte2[paramInt3] = arrayOfByte[(paramInt1 >>> 18)];
        paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(paramInt1 >>> 12 & 0x3F)];
        paramArrayOfByte2[(paramInt3 + 2)] = arrayOfByte[(paramInt1 >>> 6 & 0x3F)];
        paramArrayOfByte2[(paramInt3 + 3)] = 61;
        return paramArrayOfByte2;
      }
      paramArrayOfByte2[paramInt3] = arrayOfByte[(paramInt1 >>> 18)];
      paramArrayOfByte2[(paramInt3 + 1)] = arrayOfByte[(paramInt1 >>> 12 & 0x3F)];
      paramArrayOfByte2[(paramInt3 + 2)] = 61;
      paramArrayOfByte2[(paramInt3 + 3)] = 61;
      return paramArrayOfByte2;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sn
 * JD-Core Version:    0.7.0.1
 */