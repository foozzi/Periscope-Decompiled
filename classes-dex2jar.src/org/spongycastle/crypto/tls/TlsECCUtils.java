package org.spongycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Hashtable;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.agreement.ECDHBasicAgreement;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECCurve.Fp;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.Polynomial;
import org.spongycastle.math.field.PolynomialExtensionField;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.Integers;

public class TlsECCUtils
{
  public static final Integer aVf = Integers.valueOf(10);
  public static final Integer aVg = Integers.valueOf(11);
  private static final String[] aVh = { "sect163k1", "sect163r1", "sect163r2", "sect193r1", "sect193r2", "sect233k1", "sect233r1", "sect239k1", "sect283k1", "sect283r1", "sect409k1", "sect409r1", "sect571k1", "sect571r1", "secp160k1", "secp160r1", "secp160r2", "secp192k1", "secp192r1", "secp224k1", "secp224r1", "secp256k1", "secp256r1", "secp384r1", "secp521r1", "brainpoolP256r1", "brainpoolP384r1", "brainpoolP512r1" };
  
  public static BigInteger ʻ(int paramInt, byte[] paramArrayOfByte)
  {
    paramInt = (paramInt + 7) / 8;
    if (paramArrayOfByte.length != paramInt) {
      throw new TlsFatalAlert((short)50);
    }
    return new BigInteger(1, paramArrayOfByte);
  }
  
  public static int[] ʿ(Hashtable paramHashtable)
  {
    paramHashtable = TlsUtils.ˊ(paramHashtable, aVf);
    if (paramHashtable == null) {
      return null;
    }
    return ﹴ(paramHashtable);
  }
  
  public static short[] ˈ(Hashtable paramHashtable)
  {
    paramHashtable = TlsUtils.ˊ(paramHashtable, aVg);
    if (paramHashtable == null) {
      return null;
    }
    return ﹸ(paramHashtable);
  }
  
  public static AsymmetricCipherKeyPair ˊ(SecureRandom paramSecureRandom, ECDomainParameters paramECDomainParameters)
  {
    ECKeyPairGenerator localECKeyPairGenerator = new ECKeyPairGenerator();
    localECKeyPairGenerator.ˊ(new ECKeyGenerationParameters(paramECDomainParameters, paramSecureRandom));
    return localECKeyPairGenerator.iF();
  }
  
  public static ECDomainParameters ˊ(int[] paramArrayOfInt, short[] paramArrayOfShort, InputStream paramInputStream)
  {
    try
    {
      switch (TlsUtils.ﾞ(paramInputStream))
      {
      case 1: 
        ˏ(paramArrayOfInt, 65281);
        localObject2 = ﹳ(paramInputStream);
        localBigInteger1 = ˎ(((BigInteger)localObject2).bitLength(), paramInputStream);
        BigInteger localBigInteger2 = ˎ(((BigInteger)localObject2).bitLength(), paramInputStream);
        paramArrayOfInt = TlsUtils.ٴ(paramInputStream);
        localObject1 = ﹳ(paramInputStream);
        paramInputStream = ﹳ(paramInputStream);
        localObject2 = new ECCurve.Fp((BigInteger)localObject2, localBigInteger1, localBigInteger2, (BigInteger)localObject1, paramInputStream);
        paramArrayOfInt = new ECDomainParameters((ECCurve)localObject2, ˊ(paramArrayOfShort, (ECCurve)localObject2, paramArrayOfInt), (BigInteger)localObject1, paramInputStream);
        return paramArrayOfInt;
      }
    }
    catch (RuntimeException paramArrayOfInt)
    {
      Object localObject2;
      BigInteger localBigInteger1;
      Object localObject1;
      int k;
      short s;
      int m;
      int i;
      int j;
      throw new TlsFatalAlert((short)47);
    }
    ˏ(paramArrayOfInt, 65282);
    k = TlsUtils.ʹ(paramInputStream);
    s = TlsUtils.ﾞ(paramInputStream);
    if (!ECBasisType.ᐝ(s)) {
      throw new TlsFatalAlert((short)47);
    }
    m = ˋ(k, paramInputStream);
    i = -1;
    j = -1;
    if (s == 2)
    {
      i = ˋ(k, paramInputStream);
      j = ˋ(k, paramInputStream);
    }
    paramArrayOfInt = ˎ(k, paramInputStream);
    localBigInteger1 = ˎ(k, paramInputStream);
    localObject1 = TlsUtils.ٴ(paramInputStream);
    localObject2 = ﹳ(paramInputStream);
    paramInputStream = ﹳ(paramInputStream);
    if (s == 2) {
      paramArrayOfInt = new ECCurve.F2m(k, m, i, j, paramArrayOfInt, localBigInteger1, (BigInteger)localObject2, paramInputStream);
    } else {
      paramArrayOfInt = new ECCurve.F2m(k, m, paramArrayOfInt, localBigInteger1, (BigInteger)localObject2, paramInputStream);
    }
    paramArrayOfInt = new ECDomainParameters(paramArrayOfInt, ˊ(paramArrayOfShort, paramArrayOfInt, (byte[])localObject1), (BigInteger)localObject2, paramInputStream);
    return paramArrayOfInt;
    i = TlsUtils.ʹ(paramInputStream);
    if (!NamedCurve.Ꮀ(i)) {
      throw new TlsFatalAlert((short)47);
    }
    ˏ(paramArrayOfInt, i);
    paramArrayOfInt = ᒧ(i);
    return paramArrayOfInt;
    for (;;)
    {
      throw new TlsFatalAlert((short)47);
    }
  }
  
  public static ECPrivateKeyParameters ˊ(SecureRandom paramSecureRandom, short[] paramArrayOfShort, ECDomainParameters paramECDomainParameters, OutputStream paramOutputStream)
  {
    paramSecureRandom = ˊ(paramSecureRandom, paramECDomainParameters);
    ˊ(paramArrayOfShort, ((ECPublicKeyParameters)paramSecureRandom.iD()).kH(), paramOutputStream);
    return (ECPrivateKeyParameters)paramSecureRandom.iE();
  }
  
  public static ECPublicKeyParameters ˊ(ECPublicKeyParameters paramECPublicKeyParameters)
  {
    return paramECPublicKeyParameters;
  }
  
  public static ECPublicKeyParameters ˊ(short[] paramArrayOfShort, ECDomainParameters paramECDomainParameters, byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfShort = new ECPublicKeyParameters(ˊ(paramArrayOfShort, paramECDomainParameters.iv(), paramArrayOfByte), paramECDomainParameters);
      return paramArrayOfShort;
    }
    catch (RuntimeException paramArrayOfShort)
    {
      throw new TlsFatalAlert((short)47);
    }
  }
  
  public static ECPoint ˊ(short[] paramArrayOfShort, ECCurve paramECCurve, byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 1)) {
      throw new TlsFatalAlert((short)47);
    }
    short s;
    switch (paramArrayOfByte[0])
    {
    default: 
      break;
    case 2: 
    case 3: 
      if (ECAlgorithms.ᐝ(paramECCurve))
      {
        s = 2;
        break label120;
      }
      if (ECAlgorithms.ʻ(paramECCurve))
      {
        s = 1;
        break label120;
      }
      throw new TlsFatalAlert((short)47);
    case 4: 
      s = 0;
      break;
    }
    throw new TlsFatalAlert((short)47);
    label120:
    if (!Arrays.ˋ(paramArrayOfShort, s)) {
      throw new TlsFatalAlert((short)47);
    }
    return paramECCurve.ᕁ(paramArrayOfByte);
  }
  
  public static void ˊ(ECFieldElement paramECFieldElement, OutputStream paramOutputStream)
  {
    TlsUtils.ˋ(paramECFieldElement.getEncoded(), paramOutputStream);
  }
  
  public static void ˊ(short[] paramArrayOfShort, ECDomainParameters paramECDomainParameters, OutputStream paramOutputStream)
  {
    ECCurve localECCurve = paramECDomainParameters.iv();
    if (ECAlgorithms.ʻ(localECCurve))
    {
      TlsUtils.ˊ((short)1, paramOutputStream);
      ˋ(localECCurve.pj().qq(), paramOutputStream);
    }
    else if (ECAlgorithms.ᐝ(localECCurve))
    {
      int[] arrayOfInt = ((PolynomialExtensionField)localECCurve.pj()).qu().qt();
      TlsUtils.ˊ((short)2, paramOutputStream);
      int i = arrayOfInt[(arrayOfInt.length - 1)];
      TlsUtils.ᴻ(i);
      TlsUtils.ʻ(i, paramOutputStream);
      if (arrayOfInt.length == 3)
      {
        TlsUtils.ˊ((short)1, paramOutputStream);
        ˎ(arrayOfInt[1], paramOutputStream);
      }
      else if (arrayOfInt.length == 5)
      {
        TlsUtils.ˊ((short)2, paramOutputStream);
        ˎ(arrayOfInt[1], paramOutputStream);
        ˎ(arrayOfInt[2], paramOutputStream);
        ˎ(arrayOfInt[3], paramOutputStream);
      }
      else
      {
        throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
      }
    }
    else
    {
      throw new IllegalArgumentException("'ecParameters' not a known curve type");
    }
    ˊ(localECCurve.pk(), paramOutputStream);
    ˊ(localECCurve.pl(), paramOutputStream);
    TlsUtils.ˋ(ˊ(paramArrayOfShort, paramECDomainParameters.iw()), paramOutputStream);
    ˋ(paramECDomainParameters.gy(), paramOutputStream);
    ˋ(paramECDomainParameters.ix(), paramOutputStream);
  }
  
  public static void ˊ(short[] paramArrayOfShort, ECPoint paramECPoint, OutputStream paramOutputStream)
  {
    TlsUtils.ˋ(ˊ(paramArrayOfShort, paramECPoint), paramOutputStream);
  }
  
  public static boolean ˊ(short[] paramArrayOfShort, short paramShort)
  {
    if (paramArrayOfShort == null) {
      return false;
    }
    int i = 0;
    while (i < paramArrayOfShort.length)
    {
      short s = paramArrayOfShort[i];
      if (s == 0) {
        return false;
      }
      if (s == paramShort) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public static byte[] ˊ(ECPublicKeyParameters paramECPublicKeyParameters, ECPrivateKeyParameters paramECPrivateKeyParameters)
  {
    ECDHBasicAgreement localECDHBasicAgreement = new ECDHBasicAgreement();
    localECDHBasicAgreement.ˊ(paramECPrivateKeyParameters);
    paramECPublicKeyParameters = localECDHBasicAgreement.ˋ(paramECPublicKeyParameters);
    return BigIntegers.ʻ(localECDHBasicAgreement.getFieldSize(), paramECPublicKeyParameters);
  }
  
  public static byte[] ˊ(short[] paramArrayOfShort, ECPoint paramECPoint)
  {
    ECCurve localECCurve = paramECPoint.iv();
    boolean bool = false;
    if (ECAlgorithms.ʻ(localECCurve)) {
      bool = ˊ(paramArrayOfShort, (short)1);
    } else if (ECAlgorithms.ᐝ(localECCurve)) {
      bool = ˊ(paramArrayOfShort, (short)2);
    }
    return paramECPoint.Ι(bool);
  }
  
  public static int ˋ(int paramInt, InputStream paramInputStream)
  {
    paramInputStream = ﹳ(paramInputStream);
    if (paramInputStream.bitLength() < 32)
    {
      int i = paramInputStream.intValue();
      if ((i > 0) && (i < paramInt)) {
        return i;
      }
    }
    throw new TlsFatalAlert((short)47);
  }
  
  public static void ˋ(BigInteger paramBigInteger, OutputStream paramOutputStream)
  {
    TlsUtils.ˋ(BigIntegers.ᵎ(paramBigInteger), paramOutputStream);
  }
  
  public static BigInteger ˎ(int paramInt, InputStream paramInputStream)
  {
    return ʻ(paramInt, TlsUtils.ٴ(paramInputStream));
  }
  
  public static void ˎ(int paramInt, OutputStream paramOutputStream)
  {
    ˋ(BigInteger.valueOf(paramInt), paramOutputStream);
  }
  
  public static void ˏ(int paramInt, OutputStream paramOutputStream)
  {
    if (!NamedCurve.Ꮀ(paramInt)) {
      throw new TlsFatalAlert((short)80);
    }
    TlsUtils.ˊ((short)3, paramOutputStream);
    TlsUtils.ᴻ(paramInt);
    TlsUtils.ʻ(paramInt, paramOutputStream);
  }
  
  private static void ˏ(int[] paramArrayOfInt, int paramInt)
  {
    if ((paramArrayOfInt != null) && (!Arrays.ʾ(paramArrayOfInt, paramInt))) {
      throw new TlsFatalAlert((short)47);
    }
  }
  
  public static String ᒥ(int paramInt)
  {
    if (ᓳ(paramInt)) {
      return aVh[(paramInt - 1)];
    }
    return null;
  }
  
  public static ECDomainParameters ᒧ(int paramInt)
  {
    String str = ᒥ(paramInt);
    if (str == null) {
      return null;
    }
    X9ECParameters localX9ECParameters2 = CustomNamedCurves.ג(str);
    X9ECParameters localX9ECParameters1 = localX9ECParameters2;
    if (localX9ECParameters2 == null)
    {
      localX9ECParameters2 = ECNamedCurveTable.ג(str);
      localX9ECParameters1 = localX9ECParameters2;
      if (localX9ECParameters2 == null) {
        return null;
      }
    }
    return new ECDomainParameters(localX9ECParameters1.iv(), localX9ECParameters1.iw(), localX9ECParameters1.gy(), localX9ECParameters1.ix(), localX9ECParameters1.getSeed());
  }
  
  public static boolean ᒪ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 49153: 
    case 49154: 
    case 49155: 
    case 49156: 
    case 49157: 
    case 49158: 
    case 49159: 
    case 49160: 
    case 49161: 
    case 49162: 
    case 49163: 
    case 49164: 
    case 49165: 
    case 49166: 
    case 49167: 
    case 49168: 
    case 49169: 
    case 49170: 
    case 49171: 
    case 49172: 
    case 49173: 
    case 49174: 
    case 49175: 
    case 49176: 
    case 49177: 
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
    case 49203: 
    case 49204: 
    case 49205: 
    case 49206: 
    case 49207: 
    case 49208: 
    case 49209: 
    case 49210: 
    case 49211: 
    case 49266: 
    case 49267: 
    case 49268: 
    case 49269: 
    case 49270: 
    case 49271: 
    case 49272: 
    case 49273: 
    case 49286: 
    case 49287: 
    case 49288: 
    case 49289: 
    case 49290: 
    case 49291: 
    case 49292: 
    case 49293: 
    case 49306: 
    case 49307: 
    case 52243: 
    case 52244: 
    case 58386: 
    case 58387: 
    case 58388: 
    case 58389: 
    case 58392: 
    case 58393: 
      return true;
    }
    return false;
  }
  
  public static boolean ᓳ(int paramInt)
  {
    return (paramInt > 0) && (paramInt <= aVh.length);
  }
  
  public static BigInteger ﹳ(InputStream paramInputStream)
  {
    return new BigInteger(1, TlsUtils.ٴ(paramInputStream));
  }
  
  public static int[] ﹴ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("'extensionData' cannot be null");
    }
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    int i = TlsUtils.ʹ(paramArrayOfByte);
    if ((i < 2) || ((i & 0x1) != 0)) {
      throw new TlsFatalAlert((short)50);
    }
    int[] arrayOfInt = TlsUtils.ʼ(i / 2, paramArrayOfByte);
    TlsProtocol.ˏ(paramArrayOfByte);
    return arrayOfInt;
  }
  
  public static short[] ﹸ(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("'extensionData' cannot be null");
    }
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    int i = TlsUtils.ﾞ(paramArrayOfByte);
    if (i < 1) {
      throw new TlsFatalAlert((short)50);
    }
    short[] arrayOfShort = TlsUtils.ʻ(i, paramArrayOfByte);
    TlsProtocol.ˏ(paramArrayOfByte);
    if (!Arrays.ˋ(arrayOfShort, (short)0)) {
      throw new TlsFatalAlert((short)47);
    }
    return arrayOfShort;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.TlsECCUtils
 * JD-Core Version:    0.7.0.1
 */