package o;

import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.LinkedList;
import javax.security.auth.x500.X500Principal;

final class sk
{
  private static boolean ˊ(X509Certificate paramX509Certificate1, X509Certificate paramX509Certificate2)
  {
    if (!paramX509Certificate1.getSubjectX500Principal().equals(paramX509Certificate2.getIssuerX500Principal())) {
      return false;
    }
    try
    {
      paramX509Certificate2.verify(paramX509Certificate1.getPublicKey());
    }
    catch (GeneralSecurityException paramX509Certificate1)
    {
      return false;
    }
    return true;
  }
  
  public static X509Certificate[] ˊ(X509Certificate[] paramArrayOfX509Certificate, su paramsu)
  {
    LinkedList localLinkedList = new LinkedList();
    int i = 0;
    if (paramsu.ˋ(paramArrayOfX509Certificate[0])) {
      i = 1;
    }
    localLinkedList.add(paramArrayOfX509Certificate[0]);
    int k = 1;
    int j;
    for (;;)
    {
      j = i;
      if (k >= paramArrayOfX509Certificate.length) {
        break;
      }
      if (paramsu.ˋ(paramArrayOfX509Certificate[k])) {
        i = 1;
      }
      j = i;
      if (!ˊ(paramArrayOfX509Certificate[k], paramArrayOfX509Certificate[(k - 1)])) {
        break;
      }
      localLinkedList.add(paramArrayOfX509Certificate[k]);
      k += 1;
    }
    paramArrayOfX509Certificate = paramsu.ˎ(paramArrayOfX509Certificate[(k - 1)]);
    if (paramArrayOfX509Certificate != null)
    {
      localLinkedList.add(paramArrayOfX509Certificate);
      j = 1;
    }
    if (j != 0) {
      return (X509Certificate[])localLinkedList.toArray(new X509Certificate[localLinkedList.size()]);
    }
    throw new CertificateException("Didn't find a trust anchor in chain cleanup!");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.sk
 * JD-Core Version:    0.7.0.1
 */