package org.spongycastle.crypto.tls;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.KeyUsage;
import org.spongycastle.asn1.x509.TBSCertificate;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.MD5Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.crypto.util.PublicKeyFactory;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;
import org.spongycastle.util.io.Streams;

public class TlsUtils
{
  public static final Integer aWa = Integers.valueOf(13);
  static final byte[] aWb = { 67, 76, 78, 84 };
  static final byte[] aWc = { 83, 82, 86, 82 };
  static final byte[][] aWd = nx();
  public static final byte[] abo = new byte[0];
  
  public static Vector nu()
  {
    return ﺛ(new SignatureAndHashAlgorithm((short)2, (short)2));
  }
  
  public static Vector nv()
  {
    return ﺛ(new SignatureAndHashAlgorithm((short)2, (short)3));
  }
  
  public static Vector nw()
  {
    return ﺛ(new SignatureAndHashAlgorithm((short)2, (short)1));
  }
  
  private static byte[][] nx()
  {
    byte[][] arrayOfByte = new byte[10][];
    int i = 0;
    while (i < 10)
    {
      byte[] arrayOfByte1 = new byte[i + 1];
      Arrays.fill(arrayOfByte1, (byte)(i + 65));
      arrayOfByte[i] = arrayOfByte1;
      i += 1;
    }
    return arrayOfByte;
  }
  
  public static short ʴ(byte[] paramArrayOfByte, int paramInt)
  {
    return (short)paramArrayOfByte[paramInt];
  }
  
  public static int ʹ(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    int j = paramInputStream.read();
    if (j < 0) {
      throw new EOFException();
    }
    return i << 8 | j;
  }
  
  public static void ʻ(int paramInt, OutputStream paramOutputStream)
  {
    paramOutputStream.write(paramInt >>> 8);
    paramOutputStream.write(paramInt);
  }
  
  public static short[] ʻ(int paramInt, InputStream paramInputStream)
  {
    short[] arrayOfShort = new short[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      arrayOfShort[i] = ﾞ(paramInputStream);
      i += 1;
    }
    return arrayOfShort;
  }
  
  public static void ʼ(int paramInt, OutputStream paramOutputStream)
  {
    paramOutputStream.write((byte)(paramInt >>> 16));
    paramOutputStream.write((byte)(paramInt >>> 8));
    paramOutputStream.write((byte)paramInt);
  }
  
  static byte[] ʼ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    Digest localDigest1 = ͺ();
    Digest localDigest2 = ͺ((short)2);
    int k = localDigest1.iJ();
    byte[] arrayOfByte2 = new byte[localDigest2.iJ()];
    byte[] arrayOfByte1 = new byte[paramInt + k];
    int i = 0;
    int j = 0;
    while (j < paramInt)
    {
      byte[] arrayOfByte3 = aWd[i];
      localDigest2.update(arrayOfByte3, 0, arrayOfByte3.length);
      localDigest2.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      localDigest2.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
      localDigest2.doFinal(arrayOfByte2, 0);
      localDigest1.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      localDigest1.update(arrayOfByte2, 0, arrayOfByte2.length);
      localDigest1.doFinal(arrayOfByte1, j);
      j += k;
      i += 1;
    }
    paramArrayOfByte1 = new byte[paramInt];
    System.arraycopy(arrayOfByte1, 0, paramArrayOfByte1, 0, paramInt);
    return paramArrayOfByte1;
  }
  
  public static int[] ʼ(int paramInt, InputStream paramInputStream)
  {
    int[] arrayOfInt = new int[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      arrayOfInt[i] = ʹ(paramInputStream);
      i += 1;
    }
    return arrayOfInt;
  }
  
  public static void ʽ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)paramInt1);
  }
  
  public static boolean ʽ(short paramShort)
  {
    return (paramShort & 0xFF) == paramShort;
  }
  
  public static boolean ʾ(short paramShort)
  {
    switch (paramShort)
    {
    default: 
      break;
    case 1: 
    case 2: 
    case 64: 
      return true;
    }
    return false;
  }
  
  public static TlsSigner ʿ(short paramShort)
  {
    switch (paramShort)
    {
    default: 
      break;
    case 2: 
      return new TlsDSSSigner();
    case 64: 
      return new TlsECDSASigner();
    case 1: 
      return new TlsRSASigner();
    }
    throw new IllegalArgumentException("'clientCertificateType' is not a type with signing capability");
  }
  
  public static int ˆ(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] & 0xFF) << 8 | paramArrayOfByte[(paramInt + 1)] & 0xFF;
  }
  
  public static ProtocolVersion ˇ(byte[] paramArrayOfByte, int paramInt)
  {
    return ProtocolVersion.ᔊ(paramArrayOfByte[paramInt] & 0xFF, paramArrayOfByte[(paramInt + 1)] & 0xFF);
  }
  
  public static Vector ˊ(boolean paramBoolean, InputStream paramInputStream)
  {
    int i = ʹ(paramInputStream);
    if ((i < 2) || ((i & 0x1) != 0)) {
      throw new TlsFatalAlert((short)50);
    }
    int j = i / 2;
    Vector localVector = new Vector(j);
    i = 0;
    while (i < j)
    {
      SignatureAndHashAlgorithm localSignatureAndHashAlgorithm = SignatureAndHashAlgorithm.ᐧ(paramInputStream);
      if ((!paramBoolean) && (localSignatureAndHashAlgorithm.mL() == 0)) {
        throw new TlsFatalAlert((short)47);
      }
      localVector.addElement(localSignatureAndHashAlgorithm);
      i += 1;
    }
    return localVector;
  }
  
  public static Digest ˊ(short paramShort, Digest paramDigest)
  {
    switch (paramShort)
    {
    default: 
      break;
    case 1: 
      return new MD5Digest((MD5Digest)paramDigest);
    case 2: 
      return new SHA1Digest((SHA1Digest)paramDigest);
    case 3: 
      return new SHA224Digest((SHA224Digest)paramDigest);
    case 4: 
      return new SHA256Digest((SHA256Digest)paramDigest);
    case 5: 
      return new SHA384Digest((SHA384Digest)paramDigest);
    case 6: 
      return new SHA512Digest((SHA512Digest)paramDigest);
    }
    throw new IllegalArgumentException("unknown HashAlgorithm");
  }
  
  static short ˊ(Certificate paramCertificate1, Certificate paramCertificate2)
  {
    if (paramCertificate1.isEmpty()) {
      return -1;
    }
    paramCertificate1 = paramCertificate1.ץ(0);
    paramCertificate2 = paramCertificate1.hj();
    try
    {
      paramCertificate2 = PublicKeyFactory.ˊ(paramCertificate2);
      if (paramCertificate2.isPrivate()) {
        throw new TlsFatalAlert((short)80);
      }
      if ((paramCertificate2 instanceof RSAKeyParameters))
      {
        ˊ(paramCertificate1, 128);
        return 1;
      }
      if ((paramCertificate2 instanceof DSAPublicKeyParameters))
      {
        ˊ(paramCertificate1, 128);
        return 2;
      }
      if ((paramCertificate2 instanceof ECPublicKeyParameters))
      {
        ˊ(paramCertificate1, 128);
        return 64;
      }
    }
    catch (Exception paramCertificate1) {}
    throw new TlsFatalAlert((short)43);
  }
  
  public static void ˊ(long paramLong, OutputStream paramOutputStream)
  {
    paramOutputStream.write((byte)(int)(paramLong >>> 24));
    paramOutputStream.write((byte)(int)(paramLong >>> 16));
    paramOutputStream.write((byte)(int)(paramLong >>> 8));
    paramOutputStream.write((byte)(int)paramLong);
  }
  
  public static void ˊ(Vector paramVector, boolean paramBoolean, OutputStream paramOutputStream)
  {
    if ((paramVector == null) || (paramVector.size() < 1) || (paramVector.size() >= 32768)) {
      throw new IllegalArgumentException("'supportedSignatureAlgorithms' must have length from 1 to (2^15 - 1)");
    }
    int i = paramVector.size() * 2;
    ᴻ(i);
    ʻ(i, paramOutputStream);
    i = 0;
    while (i < paramVector.size())
    {
      SignatureAndHashAlgorithm localSignatureAndHashAlgorithm = (SignatureAndHashAlgorithm)paramVector.elementAt(i);
      if ((!paramBoolean) && (localSignatureAndHashAlgorithm.mL() == 0)) {
        throw new IllegalArgumentException("SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension");
      }
      localSignatureAndHashAlgorithm.encode(paramOutputStream);
      i += 1;
    }
  }
  
  static void ˊ(org.spongycastle.asn1.x509.Certificate paramCertificate, int paramInt)
  {
    paramCertificate = paramCertificate.hd().gX();
    if (paramCertificate != null)
    {
      paramCertificate = KeyUsage.ˊ(paramCertificate);
      if ((paramCertificate != null) && ((paramCertificate.getBytes()[0] & 0xFF & paramInt) != paramInt)) {
        throw new TlsFatalAlert((short)46);
      }
    }
  }
  
  static void ˊ(Digest paramDigest, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    HMac localHMac = new HMac(paramDigest);
    localHMac.ˊ(new KeyParameter(paramArrayOfByte1));
    paramArrayOfByte1 = paramArrayOfByte2;
    int j = paramDigest.iJ();
    int k = (paramArrayOfByte3.length + j - 1) / j;
    paramDigest = new byte[localHMac.iO()];
    byte[] arrayOfByte = new byte[localHMac.iO()];
    int i = 0;
    while (i < k)
    {
      localHMac.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      localHMac.doFinal(paramDigest, 0);
      paramArrayOfByte1 = paramDigest;
      localHMac.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      localHMac.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
      localHMac.doFinal(arrayOfByte, 0);
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte3, j * i, Math.min(j, paramArrayOfByte3.length - j * i));
      i += 1;
    }
  }
  
  public static void ˊ(ProtocolVersion paramProtocolVersion, OutputStream paramOutputStream)
  {
    paramOutputStream.write(paramProtocolVersion.getMajorVersion());
    paramOutputStream.write(paramProtocolVersion.getMinorVersion());
  }
  
  public static void ˊ(ProtocolVersion paramProtocolVersion, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = ((byte)paramProtocolVersion.getMajorVersion());
    paramArrayOfByte[(paramInt + 1)] = ((byte)paramProtocolVersion.getMinorVersion());
  }
  
  static void ˊ(TlsHandshakeHash paramTlsHandshakeHash, Vector paramVector)
  {
    if (paramVector != null)
    {
      int i = 0;
      while (i < paramVector.size())
      {
        paramTlsHandshakeHash.ˎ(((SignatureAndHashAlgorithm)paramVector.elementAt(i)).mK());
        i += 1;
      }
    }
  }
  
  public static void ˊ(short paramShort, OutputStream paramOutputStream)
  {
    paramOutputStream.write(paramShort);
  }
  
  public static void ˊ(short paramShort, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = ((byte)paramShort);
  }
  
  public static void ˊ(short[] paramArrayOfShort, OutputStream paramOutputStream)
  {
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      ˊ(paramArrayOfShort[i], paramOutputStream);
      i += 1;
    }
  }
  
  public static boolean ˊ(int paramInt, ProtocolVersion paramProtocolVersion)
  {
    return Ⅼ(paramInt).ˏ(paramProtocolVersion.mq());
  }
  
  public static boolean ˊ(Hashtable paramHashtable, Integer paramInteger, short paramShort)
  {
    paramHashtable = ˊ(paramHashtable, paramInteger);
    if (paramHashtable == null) {
      return false;
    }
    if (paramHashtable.length != 0) {
      throw new TlsFatalAlert(paramShort);
    }
    return true;
  }
  
  public static byte[] ˊ(Hashtable paramHashtable, Integer paramInteger)
  {
    if (paramHashtable == null) {
      return null;
    }
    return (byte[])paramHashtable.get(paramInteger);
  }
  
  static byte[] ˊ(TlsContext paramTlsContext, String paramString, byte[] paramArrayOfByte)
  {
    if (ˎ(paramTlsContext)) {
      return paramArrayOfByte;
    }
    SecurityParameters localSecurityParameters = paramTlsContext.lH();
    return ˊ(paramTlsContext, localSecurityParameters.mE(), paramString, paramArrayOfByte, localSecurityParameters.mD());
  }
  
  static byte[] ˊ(TlsContext paramTlsContext, byte[] paramArrayOfByte)
  {
    Object localObject = paramTlsContext.lH();
    localObject = ˍ(((SecurityParameters)localObject).mF(), ((SecurityParameters)localObject).mG());
    if (ˎ(paramTlsContext)) {
      return ˑ(paramArrayOfByte, (byte[])localObject);
    }
    return ˊ(paramTlsContext, paramArrayOfByte, "master secret", (byte[])localObject, 48);
  }
  
  public static byte[] ˊ(TlsContext paramTlsContext, byte[] paramArrayOfByte1, String paramString, byte[] paramArrayOfByte2, int paramInt)
  {
    if (paramTlsContext.lJ().mp()) {
      throw new IllegalStateException("No PRF available for SSLv3 session");
    }
    byte[] arrayOfByte = Strings.Ϊ(paramString);
    paramString = ˍ(arrayOfByte, paramArrayOfByte2);
    int i = paramTlsContext.lH().mC();
    if (i == 0) {
      return ˋ(paramArrayOfByte1, arrayOfByte, paramString, paramInt);
    }
    paramTlsContext = ẛ(i);
    paramArrayOfByte2 = new byte[paramInt];
    ˊ(paramTlsContext, paramArrayOfByte1, paramString, paramArrayOfByte2);
    return paramArrayOfByte2;
  }
  
  public static void ˋ(byte[] paramArrayOfByte, OutputStream paramOutputStream)
  {
    ᴰ(paramArrayOfByte.length);
    ᐝ(paramArrayOfByte.length, paramOutputStream);
    paramOutputStream.write(paramArrayOfByte);
  }
  
  public static void ˋ(short[] paramArrayOfShort, OutputStream paramOutputStream)
  {
    ᴰ(paramArrayOfShort.length);
    ᐝ(paramArrayOfShort.length, paramOutputStream);
    ˊ(paramArrayOfShort, paramOutputStream);
  }
  
  static byte[] ˋ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, int paramInt)
  {
    int i = (paramArrayOfByte1.length + 1) / 2;
    paramArrayOfByte2 = new byte[i];
    byte[] arrayOfByte1 = new byte[i];
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, i);
    System.arraycopy(paramArrayOfByte1, paramArrayOfByte1.length - i, arrayOfByte1, 0, i);
    paramArrayOfByte1 = new byte[paramInt];
    byte[] arrayOfByte2 = new byte[paramInt];
    ˊ(ͺ((short)1), paramArrayOfByte2, paramArrayOfByte3, paramArrayOfByte1);
    ˊ(ͺ((short)2), arrayOfByte1, paramArrayOfByte3, arrayOfByte2);
    i = 0;
    while (i < paramInt)
    {
      paramArrayOfByte1[i] = ((byte)(paramArrayOfByte1[i] ^ arrayOfByte2[i]));
      i += 1;
    }
    return paramArrayOfByte1;
  }
  
  static byte[] ˍ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length + paramArrayOfByte2.length];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, paramArrayOfByte1.length, paramArrayOfByte2.length);
    return arrayOfByte;
  }
  
  public static void ˎ(byte[] paramArrayOfByte, OutputStream paramOutputStream)
  {
    ᴻ(paramArrayOfByte.length);
    ʻ(paramArrayOfByte.length, paramOutputStream);
    paramOutputStream.write(paramArrayOfByte);
  }
  
  public static boolean ˎ(TlsContext paramTlsContext)
  {
    return paramTlsContext.lJ().mp();
  }
  
  public static void ˏ(byte[] paramArrayOfByte, OutputStream paramOutputStream)
  {
    ᵠ(paramArrayOfByte.length);
    ʼ(paramArrayOfByte.length, paramOutputStream);
    paramOutputStream.write(paramArrayOfByte);
  }
  
  public static boolean ˏ(TlsContext paramTlsContext)
  {
    return ProtocolVersion.aTS.ˏ(paramTlsContext.lJ().mq());
  }
  
  public static byte[] ˏ(int paramInt, InputStream paramInputStream)
  {
    if (paramInt < 1) {
      return abo;
    }
    byte[] arrayOfByte = new byte[paramInt];
    int i = Streams.ˎ(paramInputStream, arrayOfByte);
    if (i == 0) {
      return null;
    }
    if (i != paramInt) {
      throw new EOFException();
    }
    return arrayOfByte;
  }
  
  static byte[] ˑ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Digest localDigest1 = ͺ();
    Digest localDigest2 = ͺ((short)2);
    int k = localDigest1.iJ();
    byte[] arrayOfByte1 = new byte[localDigest2.iJ()];
    byte[] arrayOfByte2 = new byte[k * 3];
    int j = 0;
    int i = 0;
    while (i < 3)
    {
      byte[] arrayOfByte3 = aWd[i];
      localDigest2.update(arrayOfByte3, 0, arrayOfByte3.length);
      localDigest2.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      localDigest2.update(paramArrayOfByte2, 0, paramArrayOfByte2.length);
      localDigest2.doFinal(arrayOfByte1, 0);
      localDigest1.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
      localDigest1.update(arrayOfByte1, 0, arrayOfByte1.length);
      localDigest1.doFinal(arrayOfByte2, j);
      j += k;
      i += 1;
    }
    return arrayOfByte2;
  }
  
  public static int ˡ(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[paramInt] << 8 | paramArrayOfByte[(paramInt + 1)];
  }
  
  public static Digest ͺ(short paramShort)
  {
    switch (paramShort)
    {
    default: 
      break;
    case 1: 
      return new MD5Digest();
    case 2: 
      return new SHA1Digest();
    case 3: 
      return new SHA224Digest();
    case 4: 
      return new SHA256Digest();
    case 5: 
      return new SHA384Digest();
    case 6: 
      return new SHA512Digest();
    }
    throw new IllegalArgumentException("unknown HashAlgorithm");
  }
  
  public static void ͺ(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 >>> 16));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >>> 8));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)paramInt1);
  }
  
  public static boolean ͺ(ProtocolVersion paramProtocolVersion)
  {
    return ProtocolVersion.aTT.ˏ(paramProtocolVersion.mq());
  }
  
  public static byte[] ι(byte[] paramArrayOfByte)
  {
    ᴰ(paramArrayOfByte.length);
    return Arrays.ˋ(paramArrayOfByte, (byte)paramArrayOfByte.length);
  }
  
  public static int ՙ(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    int j = paramInputStream.read();
    int k = paramInputStream.read();
    if (k < 0) {
      throw new EOFException();
    }
    return i << 16 | j << 8 | k;
  }
  
  public static long י(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    int j = paramInputStream.read();
    int k = paramInputStream.read();
    int m = paramInputStream.read();
    if (m < 0) {
      throw new EOFException();
    }
    return (i << 2 | j << 16 | k << 8 | m) & 0xFFFFFFFF;
  }
  
  public static byte[] ٴ(InputStream paramInputStream)
  {
    return ᐝ(ﾞ(paramInputStream), paramInputStream);
  }
  
  public static ASN1Primitive ৲(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = new ASN1InputStream(paramArrayOfByte);
    ASN1Primitive localASN1Primitive = paramArrayOfByte.eH();
    if (localASN1Primitive == null) {
      throw new TlsFatalAlert((short)50);
    }
    if (paramArrayOfByte.eH() != null) {
      throw new TlsFatalAlert((short)50);
    }
    return localASN1Primitive;
  }
  
  public static void ᐝ(int paramInt, OutputStream paramOutputStream)
  {
    paramOutputStream.write(paramInt);
  }
  
  public static void ᐝ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >>> 56));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)(paramLong >>> 48));
    paramArrayOfByte[(paramInt + 2)] = ((byte)(int)(paramLong >>> 40));
    paramArrayOfByte[(paramInt + 3)] = ((byte)(int)(paramLong >>> 32));
    paramArrayOfByte[(paramInt + 4)] = ((byte)(int)(paramLong >>> 24));
    paramArrayOfByte[(paramInt + 5)] = ((byte)(int)(paramLong >>> 16));
    paramArrayOfByte[(paramInt + 6)] = ((byte)(int)(paramLong >>> 8));
    paramArrayOfByte[(paramInt + 7)] = ((byte)(int)paramLong);
  }
  
  public static boolean ᐝ(TlsContext paramTlsContext)
  {
    return ProtocolVersion.aTT.ˏ(paramTlsContext.lJ().mq());
  }
  
  public static byte[] ᐝ(int paramInt, InputStream paramInputStream)
  {
    if (paramInt < 1) {
      return abo;
    }
    byte[] arrayOfByte = new byte[paramInt];
    if (paramInt != Streams.ˎ(paramInputStream, arrayOfByte)) {
      throw new EOFException();
    }
    return arrayOfByte;
  }
  
  static byte[] ᐝ(TlsContext paramTlsContext, int paramInt)
  {
    Object localObject = paramTlsContext.lH();
    byte[] arrayOfByte = ((SecurityParameters)localObject).mE();
    localObject = ˍ(((SecurityParameters)localObject).mG(), ((SecurityParameters)localObject).mF());
    if (ˎ(paramTlsContext)) {
      return ʼ(arrayOfByte, (byte[])localObject, paramInt);
    }
    return ˊ(paramTlsContext, arrayOfByte, "key expansion", (byte[])localObject, paramInt);
  }
  
  public static ASN1Primitive ᐢ(byte[] paramArrayOfByte)
  {
    ASN1Primitive localASN1Primitive = ৲(paramArrayOfByte);
    if (!Arrays.ﹺ(localASN1Primitive.getEncoded("DER"), paramArrayOfByte)) {
      throw new TlsFatalAlert((short)50);
    }
    return localASN1Primitive;
  }
  
  public static void ᴰ(int paramInt)
  {
    if (!ᵩ(paramInt)) {
      throw new TlsFatalAlert((short)80);
    }
  }
  
  public static byte[] ᴵ(InputStream paramInputStream)
  {
    return ᐝ(ʹ(paramInputStream), paramInputStream);
  }
  
  public static void ᴻ(int paramInt)
  {
    if (!ḻ(paramInt)) {
      throw new TlsFatalAlert((short)80);
    }
  }
  
  public static byte[] ᵎ(InputStream paramInputStream)
  {
    return ᐝ(ՙ(paramInputStream), paramInputStream);
  }
  
  public static ProtocolVersion ᵔ(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    int j = paramInputStream.read();
    if (j < 0) {
      throw new EOFException();
    }
    return ProtocolVersion.ᔊ(i, j);
  }
  
  public static void ᵠ(int paramInt)
  {
    if (!ṟ(paramInt)) {
      throw new TlsFatalAlert((short)80);
    }
  }
  
  public static boolean ᵩ(int paramInt)
  {
    return (paramInt & 0xFF) == paramInt;
  }
  
  public static boolean ḻ(int paramInt)
  {
    return (0xFFFF & paramInt) == paramInt;
  }
  
  public static boolean ṟ(int paramInt)
  {
    return (0xFFFFFF & paramInt) == paramInt;
  }
  
  public static Digest ẛ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      return new CombinedHash();
    }
    return ͺ(Ỉ(paramInt));
  }
  
  public static short Ỉ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 0: 
      throw new IllegalArgumentException("legacy PRF not a valid algorithm");
    case 1: 
      return 4;
    case 2: 
      return 5;
    }
    throw new IllegalArgumentException("unknown PRFAlgorithm");
  }
  
  public static ASN1ObjectIdentifier ι(short paramShort)
  {
    switch (paramShort)
    {
    default: 
      break;
    case 1: 
      return PKCSObjectIdentifiers.aqT;
    case 2: 
      return X509ObjectIdentifiers.aCd;
    case 3: 
      return NISTObjectIdentifiers.aoe;
    case 4: 
      return NISTObjectIdentifiers.aob;
    case 5: 
      return NISTObjectIdentifiers.aoc;
    case 6: 
      return NISTObjectIdentifiers.aod;
    }
    throw new IllegalArgumentException("unknown HashAlgorithm");
  }
  
  public static int ῒ(int paramInt)
  {
    switch (ΐ(paramInt))
    {
    default: 
      break;
    case 10: 
    case 11: 
    case 15: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    case 20: 
    case 102: 
      return 2;
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
    case 12: 
    case 13: 
    case 14: 
      return 1;
    case 1: 
    case 2: 
    case 100: 
    case 101: 
      return 0;
    }
    throw new TlsFatalAlert((short)80);
  }
  
  public static int ΐ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 10: 
    case 13: 
    case 16: 
    case 19: 
    case 22: 
    case 139: 
    case 143: 
    case 147: 
    case 49155: 
    case 49160: 
    case 49165: 
    case 49170: 
    case 49178: 
    case 49179: 
    case 49180: 
    case 49204: 
      return 7;
    case 52243: 
    case 52244: 
    case 52245: 
      return 102;
    case 47: 
    case 48: 
    case 49: 
    case 50: 
    case 51: 
    case 140: 
    case 144: 
    case 148: 
    case 49156: 
    case 49161: 
    case 49166: 
    case 49171: 
    case 49181: 
    case 49182: 
    case 49183: 
    case 49205: 
      return 8;
    case 60: 
    case 62: 
    case 63: 
    case 64: 
    case 103: 
    case 174: 
    case 178: 
    case 182: 
    case 49187: 
    case 49189: 
    case 49191: 
    case 49193: 
    case 49207: 
      return 8;
    case 49308: 
    case 49310: 
    case 49316: 
    case 49318: 
      return 15;
    case 49312: 
    case 49314: 
    case 49320: 
    case 49322: 
      return 16;
    case 156: 
    case 158: 
    case 160: 
    case 162: 
    case 164: 
    case 168: 
    case 170: 
    case 172: 
    case 49195: 
    case 49197: 
    case 49199: 
    case 49201: 
      return 10;
    case 53: 
    case 54: 
    case 55: 
    case 56: 
    case 57: 
    case 141: 
    case 145: 
    case 149: 
    case 49157: 
    case 49162: 
    case 49167: 
    case 49172: 
    case 49184: 
    case 49185: 
    case 49186: 
    case 49206: 
      return 9;
    case 61: 
    case 104: 
    case 105: 
    case 106: 
    case 107: 
      return 9;
    case 175: 
    case 179: 
    case 183: 
    case 49188: 
    case 49190: 
    case 49192: 
    case 49194: 
    case 49208: 
      return 9;
    case 49309: 
    case 49311: 
    case 49317: 
    case 49319: 
      return 17;
    case 49313: 
    case 49315: 
    case 49321: 
    case 49323: 
      return 18;
    case 157: 
    case 159: 
    case 161: 
    case 163: 
    case 165: 
    case 169: 
    case 171: 
    case 173: 
    case 49196: 
    case 49198: 
    case 49200: 
    case 49202: 
      return 11;
    case 65: 
    case 66: 
    case 67: 
    case 68: 
    case 69: 
      return 12;
    case 186: 
    case 187: 
    case 188: 
    case 189: 
    case 190: 
    case 49266: 
    case 49268: 
    case 49270: 
    case 49272: 
    case 49300: 
    case 49302: 
    case 49304: 
    case 49306: 
      return 12;
    case 49274: 
    case 49276: 
    case 49278: 
    case 49280: 
    case 49282: 
    case 49286: 
    case 49288: 
    case 49290: 
    case 49292: 
    case 49294: 
    case 49296: 
    case 49298: 
      return 19;
    case 132: 
    case 133: 
    case 134: 
    case 135: 
    case 136: 
      return 13;
    case 192: 
    case 193: 
    case 194: 
    case 195: 
    case 196: 
      return 13;
    case 49267: 
    case 49269: 
    case 49271: 
    case 49273: 
    case 49301: 
    case 49303: 
    case 49305: 
    case 49307: 
      return 13;
    case 49275: 
    case 49277: 
    case 49279: 
    case 49281: 
    case 49283: 
    case 49287: 
    case 49289: 
    case 49291: 
    case 49293: 
    case 49295: 
    case 49297: 
    case 49299: 
      return 20;
    case 58384: 
    case 58386: 
    case 58388: 
    case 58390: 
    case 58392: 
    case 58394: 
    case 58396: 
    case 58398: 
      return 100;
    case 1: 
      return 0;
    case 2: 
    case 44: 
    case 45: 
    case 46: 
    case 49153: 
    case 49158: 
    case 49163: 
    case 49168: 
    case 49209: 
      return 0;
    case 59: 
    case 176: 
    case 180: 
    case 184: 
    case 49210: 
      return 0;
    case 177: 
    case 181: 
    case 185: 
    case 49211: 
      return 0;
    case 4: 
    case 24: 
      return 2;
    case 5: 
    case 138: 
    case 142: 
    case 146: 
    case 49154: 
    case 49159: 
    case 49164: 
    case 49169: 
    case 49174: 
    case 49203: 
      return 2;
    case 58385: 
    case 58387: 
    case 58389: 
    case 58391: 
    case 58393: 
    case 58395: 
    case 58397: 
    case 58399: 
      return 101;
    case 150: 
    case 151: 
    case 152: 
    case 153: 
    case 154: 
      return 14;
    }
    throw new TlsFatalAlert((short)80);
  }
  
  public static ProtocolVersion Ⅼ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 59: 
    case 60: 
    case 61: 
    case 62: 
    case 63: 
    case 64: 
    case 103: 
    case 104: 
    case 105: 
    case 106: 
    case 107: 
    case 156: 
    case 157: 
    case 158: 
    case 159: 
    case 160: 
    case 161: 
    case 162: 
    case 163: 
    case 164: 
    case 165: 
    case 168: 
    case 169: 
    case 170: 
    case 171: 
    case 172: 
    case 173: 
    case 186: 
    case 187: 
    case 188: 
    case 189: 
    case 190: 
    case 191: 
    case 192: 
    case 193: 
    case 194: 
    case 195: 
    case 196: 
    case 197: 
    case 49187: 
    case 49188: 
    case 49189: 
    case 49190: 
    case 49191: 
    case 49192: 
    case 49193: 
    case 49194: 
    case 49195: 
    case 49196: 
    case 49197: 
    case 49198: 
    case 49199: 
    case 49200: 
    case 49201: 
    case 49202: 
    case 49266: 
    case 49267: 
    case 49268: 
    case 49269: 
    case 49270: 
    case 49271: 
    case 49272: 
    case 49273: 
    case 49274: 
    case 49275: 
    case 49276: 
    case 49277: 
    case 49278: 
    case 49279: 
    case 49280: 
    case 49281: 
    case 49282: 
    case 49283: 
    case 49284: 
    case 49285: 
    case 49286: 
    case 49287: 
    case 49288: 
    case 49289: 
    case 49290: 
    case 49291: 
    case 49292: 
    case 49293: 
    case 49294: 
    case 49295: 
    case 49296: 
    case 49297: 
    case 49298: 
    case 49299: 
    case 49308: 
    case 49309: 
    case 49310: 
    case 49311: 
    case 49312: 
    case 49313: 
    case 49314: 
    case 49315: 
    case 49316: 
    case 49317: 
    case 49318: 
    case 49319: 
    case 49320: 
    case 49321: 
    case 49322: 
    case 49323: 
    case 52243: 
    case 52244: 
    case 52245: 
      return ProtocolVersion.aTT;
    }
    return ProtocolVersion.aTQ;
  }
  
  public static boolean ⅴ(int paramInt)
  {
    return 1 == ῒ(paramInt);
  }
  
  private static Vector ﺛ(Object paramObject)
  {
    Vector localVector = new Vector(1);
    localVector.addElement(paramObject);
    return localVector;
  }
  
  public static short ﾞ(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    if (i < 0) {
      throw new EOFException();
    }
    return (short)i;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsUtils
 * JD-Core Version:    0.7.0.1
 */