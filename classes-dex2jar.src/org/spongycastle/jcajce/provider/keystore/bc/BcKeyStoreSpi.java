package org.spongycastle.jcajce.provider.keystore.bc;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.generators.PKCS12ParametersGenerator;
import org.spongycastle.crypto.io.DigestInputStream;
import org.spongycastle.crypto.io.DigestOutputStream;
import org.spongycastle.crypto.io.MacInputStream;
import org.spongycastle.crypto.io.MacOutputStream;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jce.interfaces.BCKeyStore;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.io.Streams;
import org.spongycastle.util.io.TeeOutputStream;

public class BcKeyStoreSpi
  extends KeyStoreSpi
  implements BCKeyStore
{
  protected SecureRandom aFa = new SecureRandom();
  protected Hashtable ays = new Hashtable();
  protected int version;
  
  public BcKeyStoreSpi(int paramInt)
  {
    this.version = paramInt;
  }
  
  private Certificate ˊ(DataInputStream paramDataInputStream)
  {
    String str = paramDataInputStream.readUTF();
    byte[] arrayOfByte = new byte[paramDataInputStream.readInt()];
    paramDataInputStream.readFully(arrayOfByte);
    try
    {
      paramDataInputStream = CertificateFactory.getInstance(str, "SC").generateCertificate(new ByteArrayInputStream(arrayOfByte));
      return paramDataInputStream;
    }
    catch (NoSuchProviderException paramDataInputStream)
    {
      throw new IOException(paramDataInputStream.toString());
    }
    catch (CertificateException paramDataInputStream)
    {
      throw new IOException(paramDataInputStream.toString());
    }
  }
  
  private void ˊ(Key paramKey, DataOutputStream paramDataOutputStream)
  {
    byte[] arrayOfByte = paramKey.getEncoded();
    if ((paramKey instanceof PrivateKey)) {
      paramDataOutputStream.write(0);
    } else if ((paramKey instanceof PublicKey)) {
      paramDataOutputStream.write(1);
    } else {
      paramDataOutputStream.write(2);
    }
    paramDataOutputStream.writeUTF(paramKey.getFormat());
    paramDataOutputStream.writeUTF(paramKey.getAlgorithm());
    paramDataOutputStream.writeInt(arrayOfByte.length);
    paramDataOutputStream.write(arrayOfByte);
  }
  
  private void ˊ(Certificate paramCertificate, DataOutputStream paramDataOutputStream)
  {
    try
    {
      byte[] arrayOfByte = paramCertificate.getEncoded();
      paramDataOutputStream.writeUTF(paramCertificate.getType());
      paramDataOutputStream.writeInt(arrayOfByte.length);
      paramDataOutputStream.write(arrayOfByte);
      return;
    }
    catch (CertificateEncodingException paramCertificate)
    {
      throw new IOException(paramCertificate.toString());
    }
  }
  
  private Key ˋ(DataInputStream paramDataInputStream)
  {
    int i = paramDataInputStream.read();
    String str2 = paramDataInputStream.readUTF();
    String str1 = paramDataInputStream.readUTF();
    byte[] arrayOfByte = new byte[paramDataInputStream.readInt()];
    paramDataInputStream.readFully(arrayOfByte);
    if ((str2.equals("PKCS#8")) || (str2.equals("PKCS8")))
    {
      paramDataInputStream = new PKCS8EncodedKeySpec(arrayOfByte);
    }
    else if ((str2.equals("X.509")) || (str2.equals("X509")))
    {
      paramDataInputStream = new X509EncodedKeySpec(arrayOfByte);
    }
    else
    {
      if (str2.equals("RAW")) {
        return new SecretKeySpec(arrayOfByte, str1);
      }
      throw new IOException("Key format " + str2 + " not recognised!");
    }
    switch (i)
    {
    default: 
      break;
    }
    try
    {
      paramDataInputStream = KeyFactory.getInstance(str1, "SC").generatePrivate(paramDataInputStream);
      return paramDataInputStream;
    }
    catch (Exception paramDataInputStream)
    {
      throw new IOException("Exception creating key: " + paramDataInputStream.toString());
    }
    paramDataInputStream = KeyFactory.getInstance(str1, "SC").generatePublic(paramDataInputStream);
    return paramDataInputStream;
    paramDataInputStream = SecretKeyFactory.getInstance(str1, "SC").generateSecret(paramDataInputStream);
    return paramDataInputStream;
    throw new IOException("Key type " + i + " not recognised!");
  }
  
  public Enumeration engineAliases()
  {
    return this.ays.keys();
  }
  
  public boolean engineContainsAlias(String paramString)
  {
    return this.ays.get(paramString) != null;
  }
  
  public void engineDeleteEntry(String paramString)
  {
    if (this.ays.get(paramString) == null) {
      return;
    }
    this.ays.remove(paramString);
  }
  
  public Certificate engineGetCertificate(String paramString)
  {
    paramString = (StoreEntry)this.ays.get(paramString);
    if (paramString != null)
    {
      if (paramString.getType() == 1) {
        return (Certificate)paramString.getObject();
      }
      paramString = paramString.getCertificateChain();
      if (paramString != null) {
        return paramString[0];
      }
    }
    return null;
  }
  
  public String engineGetCertificateAlias(Certificate paramCertificate)
  {
    Enumeration localEnumeration = this.ays.elements();
    while (localEnumeration.hasMoreElements())
    {
      StoreEntry localStoreEntry = (StoreEntry)localEnumeration.nextElement();
      if ((localStoreEntry.getObject() instanceof Certificate))
      {
        if (((Certificate)localStoreEntry.getObject()).equals(paramCertificate)) {
          return localStoreEntry.nO();
        }
      }
      else
      {
        Certificate[] arrayOfCertificate = localStoreEntry.getCertificateChain();
        if ((arrayOfCertificate != null) && (arrayOfCertificate[0].equals(paramCertificate))) {
          return localStoreEntry.nO();
        }
      }
    }
    return null;
  }
  
  public Certificate[] engineGetCertificateChain(String paramString)
  {
    paramString = (StoreEntry)this.ays.get(paramString);
    if (paramString != null) {
      return paramString.getCertificateChain();
    }
    return null;
  }
  
  public Date engineGetCreationDate(String paramString)
  {
    paramString = (StoreEntry)this.ays.get(paramString);
    if (paramString != null) {
      return paramString.getDate();
    }
    return null;
  }
  
  public Key engineGetKey(String paramString, char[] paramArrayOfChar)
  {
    paramString = (StoreEntry)this.ays.get(paramString);
    if ((paramString == null) || (paramString.getType() == 1)) {
      return null;
    }
    return (Key)paramString.ᐝ(paramArrayOfChar);
  }
  
  public boolean engineIsCertificateEntry(String paramString)
  {
    paramString = (StoreEntry)this.ays.get(paramString);
    return (paramString != null) && (paramString.getType() == 1);
  }
  
  public boolean engineIsKeyEntry(String paramString)
  {
    paramString = (StoreEntry)this.ays.get(paramString);
    return (paramString != null) && (paramString.getType() != 1);
  }
  
  public void engineLoad(InputStream paramInputStream, char[] paramArrayOfChar)
  {
    this.ays.clear();
    if (paramInputStream == null) {
      return;
    }
    DataInputStream localDataInputStream = new DataInputStream(paramInputStream);
    int i = localDataInputStream.readInt();
    if ((i != 2) && (i != 0) && (i != 1)) {
      throw new IOException("Wrong version of key store.");
    }
    int j = localDataInputStream.readInt();
    if (j <= 0) {
      throw new IOException("Invalid salt detected");
    }
    paramInputStream = new byte[j];
    localDataInputStream.readFully(paramInputStream);
    j = localDataInputStream.readInt();
    HMac localHMac = new HMac(new SHA1Digest());
    if ((paramArrayOfChar != null) && (paramArrayOfChar.length != 0))
    {
      paramArrayOfChar = PBEParametersGenerator.ˏ(paramArrayOfChar);
      PKCS12ParametersGenerator localPKCS12ParametersGenerator = new PKCS12ParametersGenerator(new SHA1Digest());
      localPKCS12ParametersGenerator.ˊ(paramArrayOfChar, paramInputStream, j);
      if (i != 2) {
        paramInputStream = localPKCS12ParametersGenerator.ڎ(localHMac.iO());
      } else {
        paramInputStream = localPKCS12ParametersGenerator.ڎ(localHMac.iO() * 8);
      }
      Arrays.fill(paramArrayOfChar, (byte)0);
      localHMac.ˊ(paramInputStream);
      ｰ(new MacInputStream(localDataInputStream, localHMac));
      paramInputStream = new byte[localHMac.iO()];
      localHMac.doFinal(paramInputStream, 0);
      paramArrayOfChar = new byte[localHMac.iO()];
      localDataInputStream.readFully(paramArrayOfChar);
      if (!Arrays.ｰ(paramInputStream, paramArrayOfChar))
      {
        this.ays.clear();
        throw new IOException("KeyStore integrity check failed.");
      }
      return;
    }
    ｰ(localDataInputStream);
    localDataInputStream.readFully(new byte[localHMac.iO()]);
  }
  
  public void engineSetCertificateEntry(String paramString, Certificate paramCertificate)
  {
    StoreEntry localStoreEntry = (StoreEntry)this.ays.get(paramString);
    if ((localStoreEntry != null) && (localStoreEntry.getType() != 1)) {
      throw new KeyStoreException("key store already has a key entry with alias " + paramString);
    }
    this.ays.put(paramString, new StoreEntry(paramString, paramCertificate));
  }
  
  public void engineSetKeyEntry(String paramString, Key paramKey, char[] paramArrayOfChar, Certificate[] paramArrayOfCertificate)
  {
    if (((paramKey instanceof PrivateKey)) && (paramArrayOfCertificate == null)) {
      throw new KeyStoreException("no certificate chain for private key");
    }
    try
    {
      this.ays.put(paramString, new StoreEntry(paramString, paramKey, paramArrayOfChar, paramArrayOfCertificate));
      return;
    }
    catch (Exception paramString)
    {
      throw new KeyStoreException(paramString.toString());
    }
  }
  
  public void engineSetKeyEntry(String paramString, byte[] paramArrayOfByte, Certificate[] paramArrayOfCertificate)
  {
    this.ays.put(paramString, new StoreEntry(paramString, paramArrayOfByte, paramArrayOfCertificate));
  }
  
  public int engineSize()
  {
    return this.ays.size();
  }
  
  public void engineStore(OutputStream paramOutputStream, char[] paramArrayOfChar)
  {
    paramOutputStream = new DataOutputStream(paramOutputStream);
    byte[] arrayOfByte = new byte[20];
    int i = (this.aFa.nextInt() & 0x3FF) + 1024;
    this.aFa.nextBytes(arrayOfByte);
    paramOutputStream.writeInt(this.version);
    paramOutputStream.writeInt(arrayOfByte.length);
    paramOutputStream.write(arrayOfByte);
    paramOutputStream.writeInt(i);
    HMac localHMac = new HMac(new SHA1Digest());
    MacOutputStream localMacOutputStream = new MacOutputStream(localHMac);
    PKCS12ParametersGenerator localPKCS12ParametersGenerator = new PKCS12ParametersGenerator(new SHA1Digest());
    paramArrayOfChar = PBEParametersGenerator.ˏ(paramArrayOfChar);
    localPKCS12ParametersGenerator.ˊ(paramArrayOfChar, arrayOfByte, i);
    if (this.version < 2) {
      localHMac.ˊ(localPKCS12ParametersGenerator.ڎ(localHMac.iO()));
    } else {
      localHMac.ˊ(localPKCS12ParametersGenerator.ڎ(localHMac.iO() * 8));
    }
    i = 0;
    while (i != paramArrayOfChar.length)
    {
      paramArrayOfChar[i] = '\000';
      i += 1;
    }
    ͺ(new TeeOutputStream(paramOutputStream, localMacOutputStream));
    paramArrayOfChar = new byte[localHMac.iO()];
    localHMac.doFinal(paramArrayOfChar, 0);
    paramOutputStream.write(paramArrayOfChar);
    paramOutputStream.close();
  }
  
  protected Cipher ˊ(String paramString, int paramInt1, char[] paramArrayOfChar, byte[] paramArrayOfByte, int paramInt2)
  {
    try
    {
      paramArrayOfChar = new PBEKeySpec(paramArrayOfChar);
      SecretKeyFactory localSecretKeyFactory = SecretKeyFactory.getInstance(paramString, "SC");
      paramArrayOfByte = new PBEParameterSpec(paramArrayOfByte, paramInt2);
      paramString = Cipher.getInstance(paramString, "SC");
      paramString.init(paramInt1, localSecretKeyFactory.generateSecret(paramArrayOfChar), paramArrayOfByte);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new IOException("Error initialising store of key store: " + paramString);
    }
  }
  
  protected void ͺ(OutputStream paramOutputStream)
  {
    Enumeration localEnumeration = this.ays.elements();
    paramOutputStream = new DataOutputStream(paramOutputStream);
    while (localEnumeration.hasMoreElements())
    {
      Object localObject = (StoreEntry)localEnumeration.nextElement();
      paramOutputStream.write(((StoreEntry)localObject).getType());
      paramOutputStream.writeUTF(((StoreEntry)localObject).nO());
      paramOutputStream.writeLong(((StoreEntry)localObject).getDate().getTime());
      Certificate[] arrayOfCertificate = ((StoreEntry)localObject).getCertificateChain();
      if (arrayOfCertificate == null)
      {
        paramOutputStream.writeInt(0);
      }
      else
      {
        paramOutputStream.writeInt(arrayOfCertificate.length);
        int i = 0;
        while (i != arrayOfCertificate.length)
        {
          ˊ(arrayOfCertificate[i], paramOutputStream);
          i += 1;
        }
      }
      switch (((StoreEntry)localObject).getType())
      {
      default: 
        break;
      case 1: 
        ˊ((Certificate)((StoreEntry)localObject).getObject(), paramOutputStream);
        break;
      case 2: 
        ˊ((Key)((StoreEntry)localObject).getObject(), paramOutputStream);
        break;
      case 3: 
      case 4: 
        localObject = (byte[])((StoreEntry)localObject).getObject();
        paramOutputStream.writeInt(localObject.length);
        paramOutputStream.write((byte[])localObject);
        break;
      }
      throw new RuntimeException("Unknown object type in store.");
    }
    paramOutputStream.write(0);
  }
  
  protected void ｰ(InputStream paramInputStream)
  {
    DataInputStream localDataInputStream = new DataInputStream(paramInputStream);
    for (int i = localDataInputStream.read(); i > 0; i = localDataInputStream.read())
    {
      String str = localDataInputStream.readUTF();
      Date localDate = new Date(localDataInputStream.readLong());
      int k = localDataInputStream.readInt();
      paramInputStream = null;
      Object localObject;
      if (k != 0)
      {
        localObject = new Certificate[k];
        int j = 0;
        for (;;)
        {
          paramInputStream = (InputStream)localObject;
          if (j == k) {
            break;
          }
          localObject[j] = ˊ(localDataInputStream);
          j += 1;
        }
      }
      switch (i)
      {
      default: 
        break;
      case 1: 
        paramInputStream = ˊ(localDataInputStream);
        this.ays.put(str, new StoreEntry(str, localDate, 1, paramInputStream));
        break;
      case 2: 
        localObject = ˋ(localDataInputStream);
        this.ays.put(str, new StoreEntry(str, localDate, 2, localObject, paramInputStream));
        break;
      case 3: 
      case 4: 
        localObject = new byte[localDataInputStream.readInt()];
        localDataInputStream.readFully((byte[])localObject);
        this.ays.put(str, new StoreEntry(str, localDate, i, localObject, paramInputStream));
        break;
      }
      throw new RuntimeException("Unknown object type in store.");
    }
  }
  
  public static class BouncyCastleStore
    extends BcKeyStoreSpi
  {
    public BouncyCastleStore()
    {
      super();
    }
    
    public void engineLoad(InputStream paramInputStream, char[] paramArrayOfChar)
    {
      this.ays.clear();
      if (paramInputStream == null) {
        return;
      }
      Object localObject = new DataInputStream(paramInputStream);
      int i = ((DataInputStream)localObject).readInt();
      if ((i != 2) && (i != 0) && (i != 1)) {
        throw new IOException("Wrong version of key store.");
      }
      byte[] arrayOfByte = new byte[((DataInputStream)localObject).readInt()];
      if (arrayOfByte.length != 20) {
        throw new IOException("Key store corrupted.");
      }
      ((DataInputStream)localObject).readFully(arrayOfByte);
      int j = ((DataInputStream)localObject).readInt();
      if ((j < 0) || (j > 4096)) {
        throw new IOException("Key store corrupted.");
      }
      if (i == 0) {
        paramInputStream = "OldPBEWithSHAAndTwofish-CBC";
      } else {
        paramInputStream = "PBEWithSHAAndTwofish-CBC";
      }
      paramInputStream = new CipherInputStream((InputStream)localObject, ˊ(paramInputStream, 2, paramArrayOfChar, arrayOfByte, j));
      localObject = new SHA1Digest();
      ｰ(new DigestInputStream(paramInputStream, (Digest)localObject));
      paramArrayOfChar = new byte[((Digest)localObject).iJ()];
      ((Digest)localObject).doFinal(paramArrayOfChar, 0);
      localObject = new byte[((Digest)localObject).iJ()];
      Streams.ˎ(paramInputStream, (byte[])localObject);
      if (!Arrays.ｰ(paramArrayOfChar, (byte[])localObject))
      {
        this.ays.clear();
        throw new IOException("KeyStore integrity check failed.");
      }
    }
    
    public void engineStore(OutputStream paramOutputStream, char[] paramArrayOfChar)
    {
      paramOutputStream = new DataOutputStream(paramOutputStream);
      byte[] arrayOfByte = new byte[20];
      int i = (this.aFa.nextInt() & 0x3FF) + 1024;
      this.aFa.nextBytes(arrayOfByte);
      paramOutputStream.writeInt(this.version);
      paramOutputStream.writeInt(arrayOfByte.length);
      paramOutputStream.write(arrayOfByte);
      paramOutputStream.writeInt(i);
      paramOutputStream = new CipherOutputStream(paramOutputStream, ˊ("PBEWithSHAAndTwofish-CBC", 1, paramArrayOfChar, arrayOfByte, i));
      paramArrayOfChar = new DigestOutputStream(new SHA1Digest());
      ͺ(new TeeOutputStream(paramOutputStream, paramArrayOfChar));
      paramOutputStream.write(paramArrayOfChar.hs());
      paramOutputStream.close();
    }
  }
  
  public static class Std
    extends BcKeyStoreSpi
  {
    public Std()
    {
      super();
    }
  }
  
  class StoreEntry
  {
    String aYw;
    Certificate[] aYx;
    Date aYy = new Date();
    Object obj;
    int type;
    
    StoreEntry(String paramString, Key paramKey, char[] paramArrayOfChar, Certificate[] paramArrayOfCertificate)
    {
      this.type = 4;
      this.aYw = paramString;
      this.aYx = paramArrayOfCertificate;
      paramArrayOfCertificate = new byte[20];
      BcKeyStoreSpi.this.aFa.setSeed(System.currentTimeMillis());
      BcKeyStoreSpi.this.aFa.nextBytes(paramArrayOfCertificate);
      int i = (BcKeyStoreSpi.this.aFa.nextInt() & 0x3FF) + 1024;
      paramString = new ByteArrayOutputStream();
      DataOutputStream localDataOutputStream = new DataOutputStream(paramString);
      localDataOutputStream.writeInt(paramArrayOfCertificate.length);
      localDataOutputStream.write(paramArrayOfCertificate);
      localDataOutputStream.writeInt(i);
      paramArrayOfChar = new DataOutputStream(new CipherOutputStream(localDataOutputStream, BcKeyStoreSpi.this.ˊ("PBEWithSHAAnd3-KeyTripleDES-CBC", 1, paramArrayOfChar, paramArrayOfCertificate, i)));
      BcKeyStoreSpi.ˊ(BcKeyStoreSpi.this, paramKey, paramArrayOfChar);
      paramArrayOfChar.close();
      this.obj = paramString.toByteArray();
    }
    
    StoreEntry(String paramString, Certificate paramCertificate)
    {
      this.type = 1;
      this.aYw = paramString;
      this.obj = paramCertificate;
      this.aYx = null;
    }
    
    StoreEntry(String paramString, Date paramDate, int paramInt, Object paramObject)
    {
      this.aYw = paramString;
      this.aYy = paramDate;
      this.type = paramInt;
      this.obj = paramObject;
    }
    
    StoreEntry(String paramString, Date paramDate, int paramInt, Object paramObject, Certificate[] paramArrayOfCertificate)
    {
      this.aYw = paramString;
      this.aYy = paramDate;
      this.type = paramInt;
      this.obj = paramObject;
      this.aYx = paramArrayOfCertificate;
    }
    
    StoreEntry(String paramString, byte[] paramArrayOfByte, Certificate[] paramArrayOfCertificate)
    {
      this.type = 3;
      this.aYw = paramString;
      this.obj = paramArrayOfByte;
      this.aYx = paramArrayOfCertificate;
    }
    
    Certificate[] getCertificateChain()
    {
      return this.aYx;
    }
    
    Date getDate()
    {
      return this.aYy;
    }
    
    Object getObject()
    {
      return this.obj;
    }
    
    int getType()
    {
      return this.type;
    }
    
    String nO()
    {
      return this.aYw;
    }
    
    Object ᐝ(char[] paramArrayOfChar)
    {
      if (((paramArrayOfChar == null) || (paramArrayOfChar.length == 0)) && ((this.obj instanceof Key))) {
        return this.obj;
      }
      if (this.type == 4)
      {
        Object localObject1 = new DataInputStream(new ByteArrayInputStream((byte[])this.obj));
        try
        {
          byte[] arrayOfByte = new byte[((DataInputStream)localObject1).readInt()];
          ((DataInputStream)localObject1).readFully(arrayOfByte);
          int i = ((DataInputStream)localObject1).readInt();
          localObject1 = new CipherInputStream((InputStream)localObject1, BcKeyStoreSpi.this.ˊ("PBEWithSHAAnd3-KeyTripleDES-CBC", 2, paramArrayOfChar, arrayOfByte, i));
          try
          {
            localObject1 = BcKeyStoreSpi.ˊ(BcKeyStoreSpi.this, new DataInputStream((InputStream)localObject1));
            return localObject1;
          }
          catch (Exception localException1)
          {
            Object localObject2 = new DataInputStream(new ByteArrayInputStream((byte[])this.obj));
            arrayOfByte = new byte[((DataInputStream)localObject2).readInt()];
            ((DataInputStream)localObject2).readFully(arrayOfByte);
            i = ((DataInputStream)localObject2).readInt();
            localObject2 = new CipherInputStream((InputStream)localObject2, BcKeyStoreSpi.this.ˊ("BrokenPBEWithSHAAnd3-KeyTripleDES-CBC", 2, paramArrayOfChar, arrayOfByte, i));
            Object localObject3;
            try
            {
              localObject2 = BcKeyStoreSpi.ˊ(BcKeyStoreSpi.this, new DataInputStream((InputStream)localObject2));
            }
            catch (Exception localException2)
            {
              localObject3 = new DataInputStream(new ByteArrayInputStream((byte[])this.obj));
              arrayOfByte = new byte[((DataInputStream)localObject3).readInt()];
              ((DataInputStream)localObject3).readFully(arrayOfByte);
              i = ((DataInputStream)localObject3).readInt();
              localObject3 = new CipherInputStream((InputStream)localObject3, BcKeyStoreSpi.this.ˊ("OldPBEWithSHAAnd3-KeyTripleDES-CBC", 2, paramArrayOfChar, arrayOfByte, i));
              localObject3 = BcKeyStoreSpi.ˊ(BcKeyStoreSpi.this, new DataInputStream((InputStream)localObject3));
            }
            if (localObject3 != null)
            {
              ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
              DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
              localDataOutputStream.writeInt(arrayOfByte.length);
              localDataOutputStream.write(arrayOfByte);
              localDataOutputStream.writeInt(i);
              paramArrayOfChar = new DataOutputStream(new CipherOutputStream(localDataOutputStream, BcKeyStoreSpi.this.ˊ("PBEWithSHAAnd3-KeyTripleDES-CBC", 1, paramArrayOfChar, arrayOfByte, i)));
              BcKeyStoreSpi.ˊ(BcKeyStoreSpi.this, (Key)localObject3, paramArrayOfChar);
              paramArrayOfChar.close();
              this.obj = localByteArrayOutputStream.toByteArray();
              return localObject3;
            }
            throw new UnrecoverableKeyException("no match");
          }
          throw new RuntimeException("forget something!");
        }
        catch (Exception paramArrayOfChar)
        {
          throw new UnrecoverableKeyException("no match");
        }
      }
    }
  }
  
  public static class Version1
    extends BcKeyStoreSpi
  {
    public Version1()
    {
      super();
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.keystore.bc.BcKeyStoreSpi
 * JD-Core Version:    0.7.0.1
 */