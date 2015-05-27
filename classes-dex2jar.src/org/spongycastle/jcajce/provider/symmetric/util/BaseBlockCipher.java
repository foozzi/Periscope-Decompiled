package org.spongycastle.jcajce.provider.symmetric.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cms.GCMParameters;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CCMBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.CTSBlockCipher;
import org.spongycastle.crypto.modes.EAXBlockCipher;
import org.spongycastle.crypto.modes.GCFBBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.crypto.modes.GOFBBlockCipher;
import org.spongycastle.crypto.modes.OCBBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.crypto.modes.OpenPGPCFBBlockCipher;
import org.spongycastle.crypto.modes.PGPCFBBlockCipher;
import org.spongycastle.crypto.modes.SICBlockCipher;
import org.spongycastle.crypto.paddings.BlockCipherPadding;
import org.spongycastle.crypto.paddings.ISO10126d2Padding;
import org.spongycastle.crypto.paddings.ISO7816d4Padding;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.paddings.TBCPadding;
import org.spongycastle.crypto.paddings.X923Padding;
import org.spongycastle.crypto.paddings.ZeroBytePadding;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSBox;
import org.spongycastle.crypto.params.RC2Parameters;
import org.spongycastle.crypto.params.RC5Parameters;
import org.spongycastle.jcajce.spec.GOST28147ParameterSpec;
import org.spongycastle.jcajce.spec.RepeatedSecretKeySpec;
import org.spongycastle.util.Strings;

public class BaseBlockCipher
  extends BaseWrapCipher
  implements PBE
{
  private static final Class aYP = ⅼ("javax.crypto.spec.GCMParameterSpec");
  private int aWR = 0;
  private Class[] aXo = { RC2ParameterSpec.class, RC5ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class, GOST28147ParameterSpec.class, aYP };
  private BlockCipher aZe;
  private BlockCipherProvider aZf;
  private GenericBlockCipher aZg;
  private ParametersWithIV aZh;
  private AEADParameters aZi;
  private boolean aZj;
  private PBEParameterSpec aZk = null;
  private String aZl = null;
  private String aZm = null;
  
  public BaseBlockCipher(BlockCipher paramBlockCipher)
  {
    this.aZe = paramBlockCipher;
    this.aZg = new BufferedGenericBlockCipher(paramBlockCipher);
  }
  
  public BaseBlockCipher(BlockCipher paramBlockCipher, int paramInt)
  {
    this.aZe = paramBlockCipher;
    this.aZg = new BufferedGenericBlockCipher(paramBlockCipher);
    this.aWR = (paramInt / 8);
  }
  
  public BaseBlockCipher(BufferedBlockCipher paramBufferedBlockCipher, int paramInt)
  {
    this.aZe = paramBufferedBlockCipher.iH();
    this.aZg = new BufferedGenericBlockCipher(paramBufferedBlockCipher);
    this.aWR = (paramInt / 8);
  }
  
  public BaseBlockCipher(AEADBlockCipher paramAEADBlockCipher)
  {
    this.aZe = paramAEADBlockCipher.iH();
    this.aWR = this.aZe.getBlockSize();
    this.aZg = new AEADGenericBlockCipher(paramAEADBlockCipher);
  }
  
  public BaseBlockCipher(BlockCipherProvider paramBlockCipherProvider)
  {
    this.aZe = paramBlockCipherProvider.nR();
    this.aZf = paramBlockCipherProvider;
    this.aZg = new BufferedGenericBlockCipher(paramBlockCipherProvider.nR());
  }
  
  private static Class ⅼ(String paramString)
  {
    try
    {
      paramString = BaseBlockCipher.class.getClassLoader().loadClass(paramString);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private boolean ﭘ(String paramString)
  {
    return ("CCM".equals(paramString)) || ("EAX".equals(paramString)) || ("GCM".equals(paramString)) || ("OCB".equals(paramString));
  }
  
  protected int engineDoFinal(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    int i = 0;
    if (paramInt2 != 0) {}
    try
    {
      i = this.aZg.ˋ(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
      paramInt1 = this.aZg.doFinal(paramArrayOfByte2, paramInt3 + i);
      return paramInt1 + i;
    }
    catch (OutputLengthException paramArrayOfByte1)
    {
      throw new ShortBufferException(paramArrayOfByte1.getMessage());
    }
    catch (DataLengthException paramArrayOfByte1)
    {
      throw new IllegalBlockSizeException(paramArrayOfByte1.getMessage());
    }
  }
  
  protected byte[] engineDoFinal(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[engineGetOutputSize(paramInt2)];
    if (paramInt2 != 0) {
      i = this.aZg.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte, 0);
    }
    try
    {
      paramInt1 = this.aZg.doFinal(arrayOfByte, i);
      paramInt1 = i + paramInt1;
    }
    catch (DataLengthException paramArrayOfByte)
    {
      throw new IllegalBlockSizeException(paramArrayOfByte.getMessage());
    }
    if (paramInt1 == arrayOfByte.length) {
      return arrayOfByte;
    }
    paramArrayOfByte = new byte[paramInt1];
    System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, paramInt1);
    return paramArrayOfByte;
  }
  
  protected int engineGetBlockSize()
  {
    return this.aZe.getBlockSize();
  }
  
  protected byte[] engineGetIV()
  {
    if (this.aZi != null) {
      return this.aZi.fn();
    }
    if (this.aZh != null) {
      return this.aZh.getIV();
    }
    return null;
  }
  
  protected int engineGetKeySize(Key paramKey)
  {
    return paramKey.getEncoded().length * 8;
  }
  
  protected int engineGetOutputSize(int paramInt)
  {
    return this.aZg.getOutputSize(paramInt);
  }
  
  protected AlgorithmParameters engineGetParameters()
  {
    if (this.aXe == null) {
      if (this.aZk != null)
      {
        try
        {
          this.aXe = AlgorithmParameters.getInstance(this.aZl, "SC");
          this.aXe.init(this.aZk);
        }
        catch (Exception localException1)
        {
          return null;
        }
      }
      else if (this.aZh != null)
      {
        String str = this.aZg.iH().iG();
        Object localObject = str;
        if (str.indexOf('/') >= 0) {
          localObject = str.substring(0, str.indexOf('/'));
        }
        try
        {
          this.aXe = AlgorithmParameters.getInstance((String)localObject, "SC");
          this.aXe.init(this.aZh.getIV());
        }
        catch (Exception localException2)
        {
          throw new RuntimeException(localException2.toString());
        }
      }
      else if (this.aZi != null)
      {
        try
        {
          this.aXe = AlgorithmParameters.getInstance("GCM", "SC");
          this.aXe.init(new GCMParameters(this.aZi.fn(), this.aZi.iO()).getEncoded());
        }
        catch (Exception localException3)
        {
          throw new RuntimeException(localException3.toString());
        }
      }
    }
    return this.aXe;
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameters paramAlgorithmParameters, SecureRandom paramSecureRandom)
  {
    Object localObject2 = null;
    Object localObject3 = null;
    if (paramAlgorithmParameters != null)
    {
      int i = 0;
      for (;;)
      {
        Object localObject1 = localObject3;
        if (i == this.aXo.length) {
          break;
        }
        if (this.aXo[i] != null) {
          try
          {
            localObject1 = paramAlgorithmParameters.getParameterSpec(this.aXo[i]);
          }
          catch (Exception localException) {}
        }
        i += 1;
      }
      localObject2 = localException;
      if (localException == null) {
        throw new InvalidAlgorithmParameterException("can't handle parameter " + paramAlgorithmParameters.toString());
      }
    }
    engineInit(paramInt, paramKey, localObject2, paramSecureRandom);
    this.aXe = paramAlgorithmParameters;
  }
  
  protected void engineInit(int paramInt, Key paramKey, SecureRandom paramSecureRandom)
  {
    try
    {
      engineInit(paramInt, paramKey, null, paramSecureRandom);
      return;
    }
    catch (InvalidAlgorithmParameterException paramKey)
    {
      throw new InvalidKeyException(paramKey.getMessage());
    }
  }
  
  protected void engineInit(int paramInt, Key paramKey, AlgorithmParameterSpec paramAlgorithmParameterSpec, SecureRandom paramSecureRandom)
  {
    this.aZk = null;
    this.aZl = null;
    this.aXe = null;
    this.aZi = null;
    if (!(paramKey instanceof SecretKey)) {
      throw new InvalidKeyException("Key for algorithm " + paramKey.getAlgorithm() + " not suitable for symmetric enryption.");
    }
    if ((paramAlgorithmParameterSpec == null) && (this.aZe.iG().startsWith("RC5-64"))) {
      throw new InvalidAlgorithmParameterException("RC5 requires an RC5ParametersSpec to be passed in.");
    }
    Object localObject1;
    Object localObject2;
    if ((paramKey instanceof BCPBEKey))
    {
      paramKey = (BCPBEKey)paramKey;
      if (paramKey.nV() != null) {
        this.aZl = paramKey.nV().getId();
      } else {
        this.aZl = paramKey.getAlgorithm();
      }
      if (paramKey.nU() != null)
      {
        localObject1 = paramKey.nU();
        if ((paramAlgorithmParameterSpec instanceof IvParameterSpec))
        {
          paramKey = new ParametersWithIV((CipherParameters)localObject1, ((IvParameterSpec)paramAlgorithmParameterSpec).getIV());
        }
        else
        {
          paramKey = (Key)localObject1;
          if ((paramAlgorithmParameterSpec instanceof GOST28147ParameterSpec))
          {
            localObject2 = (GOST28147ParameterSpec)paramAlgorithmParameterSpec;
            paramAlgorithmParameterSpec = new ParametersWithSBox((CipherParameters)localObject1, ((GOST28147ParameterSpec)localObject2).nD());
            paramKey = paramAlgorithmParameterSpec;
            if (((GOST28147ParameterSpec)localObject2).getIV() != null)
            {
              paramKey = paramAlgorithmParameterSpec;
              if (this.aWR != 0) {
                paramKey = new ParametersWithIV(paramAlgorithmParameterSpec, ((GOST28147ParameterSpec)localObject2).getIV());
              }
            }
          }
        }
      }
      else if ((paramAlgorithmParameterSpec instanceof PBEParameterSpec))
      {
        this.aZk = ((PBEParameterSpec)paramAlgorithmParameterSpec);
        paramKey = PBE.Util.ˊ(paramKey, paramAlgorithmParameterSpec, this.aZg.iH().iG());
      }
      else
      {
        throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
      }
      if ((paramKey instanceof ParametersWithIV)) {
        this.aZh = ((ParametersWithIV)paramKey);
      }
    }
    else if (paramAlgorithmParameterSpec == null)
    {
      paramKey = new KeyParameter(paramKey.getEncoded());
    }
    else if ((paramAlgorithmParameterSpec instanceof IvParameterSpec))
    {
      if (this.aWR != 0)
      {
        paramAlgorithmParameterSpec = (IvParameterSpec)paramAlgorithmParameterSpec;
        if ((paramAlgorithmParameterSpec.getIV().length != this.aWR) && (!ﭘ(this.aZm))) {
          throw new InvalidAlgorithmParameterException("IV must be " + this.aWR + " bytes long.");
        }
        if ((paramKey instanceof RepeatedSecretKeySpec))
        {
          paramKey = new ParametersWithIV(null, paramAlgorithmParameterSpec.getIV());
          this.aZh = ((ParametersWithIV)paramKey);
        }
        else
        {
          paramKey = new ParametersWithIV(new KeyParameter(paramKey.getEncoded()), paramAlgorithmParameterSpec.getIV());
          this.aZh = ((ParametersWithIV)paramKey);
        }
      }
      else
      {
        if ((this.aZm != null) && (this.aZm.equals("ECB"))) {
          throw new InvalidAlgorithmParameterException("ECB mode does not use an IV");
        }
        paramKey = new KeyParameter(paramKey.getEncoded());
      }
    }
    else if ((paramAlgorithmParameterSpec instanceof GOST28147ParameterSpec))
    {
      localObject1 = (GOST28147ParameterSpec)paramAlgorithmParameterSpec;
      paramAlgorithmParameterSpec = new ParametersWithSBox(new KeyParameter(paramKey.getEncoded()), ((GOST28147ParameterSpec)paramAlgorithmParameterSpec).nD());
      paramKey = paramAlgorithmParameterSpec;
      if (((GOST28147ParameterSpec)localObject1).getIV() != null)
      {
        paramKey = paramAlgorithmParameterSpec;
        if (this.aWR != 0)
        {
          paramKey = new ParametersWithIV(paramAlgorithmParameterSpec, ((GOST28147ParameterSpec)localObject1).getIV());
          this.aZh = ((ParametersWithIV)paramKey);
        }
      }
    }
    else if ((paramAlgorithmParameterSpec instanceof RC2ParameterSpec))
    {
      localObject1 = (RC2ParameterSpec)paramAlgorithmParameterSpec;
      paramAlgorithmParameterSpec = new RC2Parameters(paramKey.getEncoded(), ((RC2ParameterSpec)paramAlgorithmParameterSpec).getEffectiveKeyBits());
      paramKey = paramAlgorithmParameterSpec;
      if (((RC2ParameterSpec)localObject1).getIV() != null)
      {
        paramKey = paramAlgorithmParameterSpec;
        if (this.aWR != 0)
        {
          paramKey = new ParametersWithIV(paramAlgorithmParameterSpec, ((RC2ParameterSpec)localObject1).getIV());
          this.aZh = ((ParametersWithIV)paramKey);
        }
      }
    }
    else if ((paramAlgorithmParameterSpec instanceof RC5ParameterSpec))
    {
      localObject1 = (RC5ParameterSpec)paramAlgorithmParameterSpec;
      paramAlgorithmParameterSpec = new RC5Parameters(paramKey.getEncoded(), ((RC5ParameterSpec)paramAlgorithmParameterSpec).getRounds());
      if (this.aZe.iG().startsWith("RC5"))
      {
        if (this.aZe.iG().equals("RC5-32"))
        {
          if (((RC5ParameterSpec)localObject1).getWordSize() != 32) {
            throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 32 not " + ((RC5ParameterSpec)localObject1).getWordSize() + ".");
          }
        }
        else if ((this.aZe.iG().equals("RC5-64")) && (((RC5ParameterSpec)localObject1).getWordSize() != 64)) {
          throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 64 not " + ((RC5ParameterSpec)localObject1).getWordSize() + ".");
        }
      }
      else {
        throw new InvalidAlgorithmParameterException("RC5 parameters passed to a cipher that is not RC5.");
      }
      paramKey = paramAlgorithmParameterSpec;
      if (((RC5ParameterSpec)localObject1).getIV() != null)
      {
        paramKey = paramAlgorithmParameterSpec;
        if (this.aWR != 0)
        {
          paramKey = new ParametersWithIV(paramAlgorithmParameterSpec, ((RC5ParameterSpec)localObject1).getIV());
          this.aZh = ((ParametersWithIV)paramKey);
        }
      }
    }
    else if ((aYP != null) && (aYP.isInstance(paramAlgorithmParameterSpec)))
    {
      if ((!ﭘ(this.aZm)) && (!(this.aZg instanceof AEADGenericBlockCipher))) {
        throw new InvalidAlgorithmParameterException("GCMParameterSpec can only be used with AEAD modes.");
      }
      try
      {
        localObject1 = aYP.getDeclaredMethod("getTLen", new Class[0]);
        localObject2 = aYP.getDeclaredMethod("getIV", new Class[0]);
        if ((paramKey instanceof RepeatedSecretKeySpec))
        {
          paramKey = new AEADParameters(null, ((Integer)((Method)localObject1).invoke(paramAlgorithmParameterSpec, new Object[0])).intValue(), (byte[])((Method)localObject2).invoke(paramAlgorithmParameterSpec, new Object[0]));
          this.aZi = paramKey;
        }
        else
        {
          paramKey = new AEADParameters(new KeyParameter(paramKey.getEncoded()), ((Integer)((Method)localObject1).invoke(paramAlgorithmParameterSpec, new Object[0])).intValue(), (byte[])((Method)localObject2).invoke(paramAlgorithmParameterSpec, new Object[0]));
          this.aZi = paramKey;
        }
      }
      catch (Exception paramKey)
      {
        throw new InvalidAlgorithmParameterException("Cannot process GCMParameterSpec.");
      }
    }
    else
    {
      throw new InvalidAlgorithmParameterException("unknown parameter type.");
    }
    paramAlgorithmParameterSpec = paramKey;
    if (this.aWR != 0)
    {
      paramAlgorithmParameterSpec = paramKey;
      if (!(paramKey instanceof ParametersWithIV))
      {
        paramAlgorithmParameterSpec = paramKey;
        if (!(paramKey instanceof AEADParameters))
        {
          localObject1 = paramSecureRandom;
          paramAlgorithmParameterSpec = (AlgorithmParameterSpec)localObject1;
          if (localObject1 == null) {
            paramAlgorithmParameterSpec = new SecureRandom();
          }
          if ((paramInt == 1) || (paramInt == 3))
          {
            localObject1 = new byte[this.aWR];
            paramAlgorithmParameterSpec.nextBytes((byte[])localObject1);
            paramAlgorithmParameterSpec = new ParametersWithIV(paramKey, (byte[])localObject1);
            this.aZh = ((ParametersWithIV)paramAlgorithmParameterSpec);
          }
          else
          {
            paramAlgorithmParameterSpec = paramKey;
            if (this.aZg.iH().iG().indexOf("PGPCFB") < 0) {
              throw new InvalidAlgorithmParameterException("no IV set when one expected");
            }
          }
        }
      }
    }
    paramKey = paramAlgorithmParameterSpec;
    if (paramSecureRandom != null)
    {
      paramKey = paramAlgorithmParameterSpec;
      if (this.aZj) {
        paramKey = new ParametersWithRandom(paramAlgorithmParameterSpec, paramSecureRandom);
      }
    }
    switch (paramInt)
    {
    default: 
      break;
    }
    try
    {
      this.aZg.ˊ(true, paramKey);
      break label1401;
      this.aZg.ˊ(false, paramKey);
      break label1401;
      throw new InvalidParameterException("unknown opmode " + paramInt + " passed");
      label1401:
      return;
    }
    catch (Exception paramKey)
    {
      throw new InvalidKeyException(paramKey.getMessage());
    }
  }
  
  protected void engineSetMode(String paramString)
  {
    this.aZm = Strings.ʟ(paramString);
    if (this.aZm.equals("ECB"))
    {
      this.aWR = 0;
      this.aZg = new BufferedGenericBlockCipher(this.aZe);
      return;
    }
    if (this.aZm.equals("CBC"))
    {
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new BufferedGenericBlockCipher(new CBCBlockCipher(this.aZe));
      return;
    }
    int i;
    if (this.aZm.startsWith("OFB"))
    {
      this.aWR = this.aZe.getBlockSize();
      if (this.aZm.length() != 3)
      {
        i = Integer.parseInt(this.aZm.substring(3));
        this.aZg = new BufferedGenericBlockCipher(new OFBBlockCipher(this.aZe, i));
        return;
      }
      this.aZg = new BufferedGenericBlockCipher(new OFBBlockCipher(this.aZe, this.aZe.getBlockSize() * 8));
      return;
    }
    if (this.aZm.startsWith("CFB"))
    {
      this.aWR = this.aZe.getBlockSize();
      if (this.aZm.length() != 3)
      {
        i = Integer.parseInt(this.aZm.substring(3));
        this.aZg = new BufferedGenericBlockCipher(new CFBBlockCipher(this.aZe, i));
        return;
      }
      this.aZg = new BufferedGenericBlockCipher(new CFBBlockCipher(this.aZe, this.aZe.getBlockSize() * 8));
      return;
    }
    if (this.aZm.startsWith("PGP"))
    {
      boolean bool = this.aZm.equalsIgnoreCase("PGPCFBwithIV");
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new BufferedGenericBlockCipher(new PGPCFBBlockCipher(this.aZe, bool));
      return;
    }
    if (this.aZm.equalsIgnoreCase("OpenPGPCFB"))
    {
      this.aWR = 0;
      this.aZg = new BufferedGenericBlockCipher(new OpenPGPCFBBlockCipher(this.aZe));
      return;
    }
    if (this.aZm.startsWith("SIC"))
    {
      this.aWR = this.aZe.getBlockSize();
      if (this.aWR < 16) {
        throw new IllegalArgumentException("Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)");
      }
      this.aZg = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(this.aZe)));
      return;
    }
    if (this.aZm.startsWith("CTR"))
    {
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(this.aZe)));
      return;
    }
    if (this.aZm.startsWith("GOFB"))
    {
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new BufferedGenericBlockCipher(new BufferedBlockCipher(new GOFBBlockCipher(this.aZe)));
      return;
    }
    if (this.aZm.startsWith("GCFB"))
    {
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new BufferedGenericBlockCipher(new BufferedBlockCipher(new GCFBBlockCipher(this.aZe)));
      return;
    }
    if (this.aZm.startsWith("CTS"))
    {
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new BufferedGenericBlockCipher(new CTSBlockCipher(new CBCBlockCipher(this.aZe)));
      return;
    }
    if (this.aZm.startsWith("CCM"))
    {
      this.aWR = 13;
      this.aZg = new AEADGenericBlockCipher(new CCMBlockCipher(this.aZe));
      return;
    }
    if (this.aZm.startsWith("OCB"))
    {
      if (this.aZf != null)
      {
        this.aWR = 15;
        this.aZg = new AEADGenericBlockCipher(new OCBBlockCipher(this.aZe, this.aZf.nR()));
        return;
      }
      throw new NoSuchAlgorithmException("can't support mode " + paramString);
    }
    if (this.aZm.startsWith("EAX"))
    {
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new AEADGenericBlockCipher(new EAXBlockCipher(this.aZe));
      return;
    }
    if (this.aZm.startsWith("GCM"))
    {
      this.aWR = this.aZe.getBlockSize();
      this.aZg = new AEADGenericBlockCipher(new GCMBlockCipher(this.aZe));
      return;
    }
    throw new NoSuchAlgorithmException("can't support mode " + paramString);
  }
  
  protected void engineSetPadding(String paramString)
  {
    String str = Strings.ʟ(paramString);
    if (str.equals("NOPADDING"))
    {
      if (this.aZg.nX()) {
        this.aZg = new BufferedGenericBlockCipher(new BufferedBlockCipher(this.aZg.iH()));
      }
    }
    else
    {
      if (str.equals("WITHCTS"))
      {
        this.aZg = new BufferedGenericBlockCipher(new CTSBlockCipher(this.aZg.iH()));
        return;
      }
      this.aZj = true;
      if (ﭘ(this.aZm)) {
        throw new NoSuchPaddingException("Only NoPadding can be used with AEAD modes.");
      }
      if ((str.equals("PKCS5PADDING")) || (str.equals("PKCS7PADDING")))
      {
        this.aZg = new BufferedGenericBlockCipher(this.aZg.iH());
        return;
      }
      if (str.equals("ZEROBYTEPADDING"))
      {
        this.aZg = new BufferedGenericBlockCipher(this.aZg.iH(), new ZeroBytePadding());
        return;
      }
      if ((str.equals("ISO10126PADDING")) || (str.equals("ISO10126-2PADDING")))
      {
        this.aZg = new BufferedGenericBlockCipher(this.aZg.iH(), new ISO10126d2Padding());
        return;
      }
      if ((str.equals("X9.23PADDING")) || (str.equals("X923PADDING")))
      {
        this.aZg = new BufferedGenericBlockCipher(this.aZg.iH(), new X923Padding());
        return;
      }
      if ((str.equals("ISO7816-4PADDING")) || (str.equals("ISO9797-1PADDING")))
      {
        this.aZg = new BufferedGenericBlockCipher(this.aZg.iH(), new ISO7816d4Padding());
        return;
      }
      if (str.equals("TBCPADDING"))
      {
        this.aZg = new BufferedGenericBlockCipher(this.aZg.iH(), new TBCPadding());
        return;
      }
      throw new NoSuchPaddingException("Padding " + paramString + " unknown.");
    }
  }
  
  protected int engineUpdate(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    try
    {
      paramInt1 = this.aZg.ˋ(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
      return paramInt1;
    }
    catch (DataLengthException paramArrayOfByte1)
    {
      throw new ShortBufferException(paramArrayOfByte1.getMessage());
    }
  }
  
  protected byte[] engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = this.aZg.ء(paramInt2);
    if (i > 0)
    {
      byte[] arrayOfByte = new byte[i];
      paramInt1 = this.aZg.ˋ(paramArrayOfByte, paramInt1, paramInt2, arrayOfByte, 0);
      if (paramInt1 == 0) {
        return null;
      }
      if (paramInt1 != arrayOfByte.length)
      {
        paramArrayOfByte = new byte[paramInt1];
        System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, paramInt1);
        return paramArrayOfByte;
      }
      return arrayOfByte;
    }
    this.aZg.ˋ(paramArrayOfByte, paramInt1, paramInt2, null, 0);
    return null;
  }
  
  protected void engineUpdateAAD(ByteBuffer paramByteBuffer)
  {
    int i = paramByteBuffer.arrayOffset();
    int j = paramByteBuffer.position();
    int k = paramByteBuffer.limit();
    int m = paramByteBuffer.position();
    engineUpdateAAD(paramByteBuffer.array(), i + j, k - m);
  }
  
  protected void engineUpdateAAD(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aZg.updateAAD(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  static class AEADGenericBlockCipher
    implements BaseBlockCipher.GenericBlockCipher
  {
    private static final Constructor aZn = null;
    private AEADBlockCipher aZo;
    
    static
    {
      Class localClass = BaseBlockCipher.ﺒ("javax.crypto.AEADBadTagException");
      if (localClass != null)
      {
        aZn = ﹳ(localClass);
        return;
      }
    }
    
    AEADGenericBlockCipher(AEADBlockCipher paramAEADBlockCipher)
    {
      this.aZo = paramAEADBlockCipher;
    }
    
    private static Constructor ﹳ(Class paramClass)
    {
      try
      {
        paramClass = paramClass.getConstructor(new Class[] { String.class });
        return paramClass;
      }
      catch (Exception paramClass) {}
      return null;
    }
    
    public int doFinal(byte[] paramArrayOfByte, int paramInt)
    {
      try
      {
        paramInt = this.aZo.doFinal(paramArrayOfByte, paramInt);
        return paramInt;
      }
      catch (InvalidCipherTextException localInvalidCipherTextException)
      {
        if (aZn != null)
        {
          paramArrayOfByte = null;
          try
          {
            BadPaddingException localBadPaddingException = (BadPaddingException)aZn.newInstance(new Object[] { localInvalidCipherTextException.getMessage() });
            paramArrayOfByte = localBadPaddingException;
          }
          catch (Exception localException) {}
          if (paramArrayOfByte != null) {
            throw paramArrayOfByte;
          }
        }
        throw new BadPaddingException(localInvalidCipherTextException.getMessage());
      }
    }
    
    public int getOutputSize(int paramInt)
    {
      return this.aZo.getOutputSize(paramInt);
    }
    
    public BlockCipher iH()
    {
      return this.aZo.iH();
    }
    
    public boolean nX()
    {
      return false;
    }
    
    public void updateAAD(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      this.aZo.ᵔ(paramArrayOfByte, paramInt1, paramInt2);
    }
    
    public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
    {
      this.aZo.ˊ(paramBoolean, paramCipherParameters);
    }
    
    public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
    {
      return this.aZo.ˋ(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
    }
    
    public int ء(int paramInt)
    {
      return this.aZo.ء(paramInt);
    }
  }
  
  static class BufferedGenericBlockCipher
    implements BaseBlockCipher.GenericBlockCipher
  {
    private BufferedBlockCipher aKy;
    
    BufferedGenericBlockCipher(BlockCipher paramBlockCipher)
    {
      this.aKy = new PaddedBufferedBlockCipher(paramBlockCipher);
    }
    
    BufferedGenericBlockCipher(BlockCipher paramBlockCipher, BlockCipherPadding paramBlockCipherPadding)
    {
      this.aKy = new PaddedBufferedBlockCipher(paramBlockCipher, paramBlockCipherPadding);
    }
    
    BufferedGenericBlockCipher(BufferedBlockCipher paramBufferedBlockCipher)
    {
      this.aKy = paramBufferedBlockCipher;
    }
    
    public int doFinal(byte[] paramArrayOfByte, int paramInt)
    {
      try
      {
        paramInt = this.aKy.doFinal(paramArrayOfByte, paramInt);
        return paramInt;
      }
      catch (InvalidCipherTextException paramArrayOfByte)
      {
        throw new BadPaddingException(paramArrayOfByte.getMessage());
      }
    }
    
    public int getOutputSize(int paramInt)
    {
      return this.aKy.getOutputSize(paramInt);
    }
    
    public BlockCipher iH()
    {
      return this.aKy.iH();
    }
    
    public boolean nX()
    {
      return !(this.aKy instanceof CTSBlockCipher);
    }
    
    public void updateAAD(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      throw new UnsupportedOperationException("AAD is not supported in the current mode.");
    }
    
    public void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters)
    {
      this.aKy.ˊ(paramBoolean, paramCipherParameters);
    }
    
    public int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
    {
      return this.aKy.ˋ(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, paramInt3);
    }
    
    public int ء(int paramInt)
    {
      return this.aKy.ء(paramInt);
    }
  }
  
  static abstract interface GenericBlockCipher
  {
    public abstract int doFinal(byte[] paramArrayOfByte, int paramInt);
    
    public abstract int getOutputSize(int paramInt);
    
    public abstract BlockCipher iH();
    
    public abstract boolean nX();
    
    public abstract void updateAAD(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
    
    public abstract void ˊ(boolean paramBoolean, CipherParameters paramCipherParameters);
    
    public abstract int ˋ(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3);
    
    public abstract int ء(int paramInt);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher
 * JD-Core Version:    0.7.0.1
 */