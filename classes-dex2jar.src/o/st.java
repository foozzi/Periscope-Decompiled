package o;

import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

class st
  implements X509TrustManager
{
  private final TrustManager[] Yi = ˊ(paramsu);
  private final su Yj;
  private final long Yk;
  private final List<byte[]> Yl = new LinkedList();
  private final Set<X509Certificate> Ym = Collections.synchronizedSet(new HashSet());
  
  public st(su paramsu, ss paramss)
  {
    this.Yj = paramsu;
    this.Yk = paramss.ة();
    paramsu = paramss.ע();
    int j = paramsu.length;
    int i = 0;
    while (i < j)
    {
      paramss = paramsu[i];
      this.Yl.add(丶(paramss));
      i += 1;
    }
  }
  
  private void ˊ(X509Certificate[] paramArrayOfX509Certificate)
  {
    if ((this.Yk != -1L) && (System.currentTimeMillis() - this.Yk > 15552000000L))
    {
      pj.cd().ᐧ("Fabric", "Certificate pins are stale, (" + (System.currentTimeMillis() - this.Yk) + " millis vs " + 15552000000L + " millis) " + "falling back to system trust.");
      return;
    }
    paramArrayOfX509Certificate = sk.ˊ(paramArrayOfX509Certificate, this.Yj);
    int j = paramArrayOfX509Certificate.length;
    int i = 0;
    while (i < j)
    {
      if (ˊ(paramArrayOfX509Certificate[i])) {
        return;
      }
      i += 1;
    }
    throw new CertificateException("No valid pins found in chain!");
  }
  
  private void ˊ(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    TrustManager[] arrayOfTrustManager = this.Yi;
    int j = arrayOfTrustManager.length;
    int i = 0;
    while (i < j)
    {
      ((X509TrustManager)arrayOfTrustManager[i]).checkServerTrusted(paramArrayOfX509Certificate, paramString);
      i += 1;
    }
  }
  
  private boolean ˊ(X509Certificate paramX509Certificate)
  {
    try
    {
      paramX509Certificate = MessageDigest.getInstance("SHA1").digest(paramX509Certificate.getPublicKey().getEncoded());
      Iterator localIterator = this.Yl.iterator();
      while (localIterator.hasNext())
      {
        boolean bool = Arrays.equals((byte[])localIterator.next(), paramX509Certificate);
        if (bool) {
          return true;
        }
      }
      return false;
    }
    catch (NoSuchAlgorithmException paramX509Certificate)
    {
      throw new CertificateException(paramX509Certificate);
    }
  }
  
  private TrustManager[] ˊ(su paramsu)
  {
    try
    {
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance("X509");
      localTrustManagerFactory.init(paramsu.Yn);
      paramsu = localTrustManagerFactory.getTrustManagers();
      return paramsu;
    }
    catch (NoSuchAlgorithmException paramsu)
    {
      throw new AssertionError(paramsu);
    }
    catch (KeyStoreException paramsu)
    {
      throw new AssertionError(paramsu);
    }
  }
  
  private byte[] 丶(String paramString)
  {
    int j = paramString.length();
    byte[] arrayOfByte = new byte[j / 2];
    int i = 0;
    while (i < j)
    {
      arrayOfByte[(i / 2)] = ((byte)((Character.digit(paramString.charAt(i), 16) << 4) + Character.digit(paramString.charAt(i + 1), 16)));
      i += 2;
    }
    return arrayOfByte;
  }
  
  public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    throw new CertificateException("Client certificates not supported!");
  }
  
  public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
  {
    if (this.Ym.contains(paramArrayOfX509Certificate[0])) {
      return;
    }
    ˊ(paramArrayOfX509Certificate, paramString);
    ˊ(paramArrayOfX509Certificate);
    this.Ym.add(paramArrayOfX509Certificate[0]);
  }
  
  public X509Certificate[] getAcceptedIssuers()
  {
    return null;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.st
 * JD-Core Version:    0.7.0.1
 */