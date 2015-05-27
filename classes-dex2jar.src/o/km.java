package o;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.zip.GZIPInputStream;

class km
  extends kl
{
  HttpURLConnection Av;
  private int NR = 310000;
  private int NS = 5000;
  
  public km(int paramInt1, int paramInt2, Hashtable paramHashtable)
  {
    init();
    ḷ(paramInt2);
    setConnectionTimeout(paramInt1);
    this.NQ = paramHashtable;
  }
  
  private void init()
  {
    HttpURLConnection.setFollowRedirects(true);
  }
  
  private static String ʼ(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    for (int i = paramInputStream.read(arrayOfByte); i != -1; i = paramInputStream.read(arrayOfByte)) {
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return new String(localByteArrayOutputStream.toString());
  }
  
  private void ˊ(String paramString, lg paramlg1, lg paramlg2)
  {
    try
    {
      fz localfz = new gb().ᐤ(paramString).r();
      throw new lh(lg.ˊ(paramlg1, localfz.เ("message").h(), localfz.เ("payload").r()));
    }
    catch (ga paramlg1)
    {
      throw new lh(lg.ˊ(paramlg2, paramString));
    }
  }
  
  public void setConnectionTimeout(int paramInt)
  {
    this.NS = paramInt;
  }
  
  public void shutdown()
  {
    if (this.Av != null) {
      try
      {
        this.Av.disconnect();
        return;
      }
      catch (Exception localException) {}
    }
  }
  
  public ko ˊ(String paramString, Hashtable paramHashtable)
  {
    Object localObject;
    int i;
    try
    {
      kq.ɩ("FETCHING URL : " + paramString);
      try
      {
        localObject = new URL(paramString);
      }
      catch (MalformedURLException paramHashtable)
      {
        throw new lh(lg.ˊ(lg.OP, paramString));
      }
      try
      {
        this.Av = ((HttpURLConnection)((URL)localObject).openConnection());
      }
      catch (IOException paramHashtable)
      {
        throw new lh(lg.ˊ(lg.OR, paramString));
      }
      try
      {
        this.Av.setRequestMethod("GET");
      }
      catch (ProtocolException paramString)
      {
        throw new lh(lg.OS);
      }
      String str1;
      String str2;
      if (this.NQ != null)
      {
        localObject = this.NQ.keys();
        while (((Enumeration)localObject).hasMoreElements())
        {
          str1 = (String)((Enumeration)localObject).nextElement();
          str2 = (String)this.NQ.get(str1);
          this.Av.addRequestProperty(str1, str2);
        }
      }
      if (paramHashtable != null)
      {
        localObject = paramHashtable.keys();
        while (((Enumeration)localObject).hasMoreElements())
        {
          str1 = (String)((Enumeration)localObject).nextElement();
          str2 = (String)paramHashtable.get(str1);
          this.Av.addRequestProperty(str1, str2);
        }
      }
      this.Av.setReadTimeout(this.NR);
      this.Av.setConnectTimeout(this.NS);
      try
      {
        i = this.Av.getResponseCode();
      }
      catch (SocketTimeoutException paramString)
      {
        throw paramString;
      }
      catch (IOException paramHashtable)
      {
        throw new lh(lg.ˊ(lg.OU, paramString + " : " + paramHashtable.toString()));
      }
      paramHashtable = this.Av.getContentEncoding();
      if (paramHashtable != null)
      {
        boolean bool = paramHashtable.equals("gzip");
        if (bool) {}
      }
      else
      {
        try
        {
          paramHashtable = this.Av.getInputStream();
        }
        catch (IOException paramHashtable)
        {
          if (i == 200) {
            throw new lh(lg.ˊ(lg.OV, 1, paramString));
          }
          paramHashtable = this.Av.getErrorStream();
        }
      }
      try
      {
        paramHashtable = new GZIPInputStream(this.Av.getInputStream());
      }
      catch (IOException paramHashtable)
      {
        if (i == 200) {
          throw new lh(lg.ˊ(lg.OV, 2, paramString));
        }
        paramHashtable = this.Av.getErrorStream();
      }
      try
      {
        localObject = ʼ(paramHashtable);
      }
      catch (IOException paramHashtable)
      {
        throw new lh(lg.ˊ(lg.OW, paramString));
      }
      if (paramHashtable != null) {
        try
        {
          paramHashtable.close();
        }
        catch (IOException paramHashtable) {}
      }
      kq.ɩ("URL = " + paramString + ", Status Code : " + i + ", : RESPONSE = " + (String)localObject);
      switch (i)
      {
      case 403: 
        ˊ((String)localObject, lg.Ph, lg.Ph);
      case 401: 
        ˊ((String)localObject, lg.Ph, lg.Pi);
      case 400: 
        ˊ((String)localObject, lg.OX, lg.OX);
      case 404: 
        ˊ((String)localObject, lg.OX, lg.Pm);
      case 502: 
        throw new lh(lg.ˊ(lg.OZ, paramString));
      }
    }
    finally {}
    throw new lh(lg.ˊ(lg.Pa, paramString));
    throw new lh(lg.ˊ(lg.Pb, paramString));
    throw new lh(lg.ˊ(lg.OK, paramString + " : " + i));
    for (;;)
    {
      paramString = new ko(i, (String)localObject);
      return paramString;
    }
  }
  
  public void ḷ(int paramInt)
  {
    this.NR = paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.km
 * JD-Core Version:    0.7.0.1
 */