package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.IOException;
import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource.PSpecified;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.RSAESOAEPparams;
import org.spongycastle.asn1.pkcs.RSASSAPSSparams;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.provider.util.DigestFactory;

public abstract class AlgorithmParametersSpi
  extends java.security.AlgorithmParametersSpi
{
  protected AlgorithmParameterSpec engineGetParameterSpec(Class paramClass)
  {
    if (paramClass == null) {
      throw new NullPointerException("argument to getParameterSpec must not be null");
    }
    return ᐧ(paramClass);
  }
  
  protected abstract AlgorithmParameterSpec ᐧ(Class paramClass);
  
  protected boolean ᕪ(String paramString)
  {
    return (paramString == null) || (paramString.equals("ASN.1"));
  }
  
  public static class OAEP
    extends AlgorithmParametersSpi
  {
    OAEPParameterSpec aXp;
    
    protected byte[] engineGetEncoded()
    {
      Object localObject1 = new AlgorithmIdentifier(DigestFactory.ϊ(this.aXp.getDigestAlgorithm()), DERNull.abj);
      Object localObject2 = (MGF1ParameterSpec)this.aXp.getMGFParameters();
      localObject2 = new AlgorithmIdentifier(PKCSObjectIdentifiers.aqw, new AlgorithmIdentifier(DigestFactory.ϊ(((MGF1ParameterSpec)localObject2).getDigestAlgorithm()), DERNull.abj));
      PSource.PSpecified localPSpecified = (PSource.PSpecified)this.aXp.getPSource();
      localObject1 = new RSAESOAEPparams((AlgorithmIdentifier)localObject1, (AlgorithmIdentifier)localObject2, new AlgorithmIdentifier(PKCSObjectIdentifiers.aqx, new DEROctetString(localPSpecified.getValue())));
      try
      {
        localObject1 = ((RSAESOAEPparams)localObject1).getEncoded("DER");
        return localObject1;
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException("Error encoding OAEPParameters");
      }
    }
    
    protected byte[] engineGetEncoded(String paramString)
    {
      if ((ᕪ(paramString)) || (paramString.equalsIgnoreCase("X.509"))) {
        return engineGetEncoded();
      }
      return null;
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      if (!(paramAlgorithmParameterSpec instanceof OAEPParameterSpec)) {
        throw new InvalidParameterSpecException("OAEPParameterSpec required to initialise an OAEP algorithm parameters object");
      }
      this.aXp = ((OAEPParameterSpec)paramAlgorithmParameterSpec);
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      try
      {
        paramArrayOfByte = RSAESOAEPparams.ﹼ(paramArrayOfByte);
        this.aXp = new OAEPParameterSpec(paramArrayOfByte.ga().fK().getId(), paramArrayOfByte.gb().fK().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.ᓪ(paramArrayOfByte.gb().fL()).fK().getId()), new PSource.PSpecified(ASN1OctetString.ﹸ(paramArrayOfByte.gd().fL()).eM()));
        return;
      }
      catch (ClassCastException paramArrayOfByte)
      {
        throw new IOException("Not a valid OAEP Parameter encoding.");
      }
      catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
      {
        throw new IOException("Not a valid OAEP Parameter encoding.");
      }
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if ((paramString.equalsIgnoreCase("X.509")) || (paramString.equalsIgnoreCase("ASN.1")))
      {
        engineInit(paramArrayOfByte);
        return;
      }
      throw new IOException("Unknown parameter format " + paramString);
    }
    
    protected String engineToString()
    {
      return "OAEP Parameters";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if ((paramClass == OAEPParameterSpec.class) && (this.aXp != null)) {
        return this.aXp;
      }
      throw new InvalidParameterSpecException("unknown parameter spec passed to OAEP parameters object.");
    }
  }
  
  public static class PSS
    extends AlgorithmParametersSpi
  {
    PSSParameterSpec aXq;
    
    protected byte[] engineGetEncoded()
    {
      PSSParameterSpec localPSSParameterSpec = this.aXq;
      AlgorithmIdentifier localAlgorithmIdentifier = new AlgorithmIdentifier(DigestFactory.ϊ(localPSSParameterSpec.getDigestAlgorithm()), DERNull.abj);
      MGF1ParameterSpec localMGF1ParameterSpec = (MGF1ParameterSpec)localPSSParameterSpec.getMGFParameters();
      return new RSASSAPSSparams(localAlgorithmIdentifier, new AlgorithmIdentifier(PKCSObjectIdentifiers.aqw, new AlgorithmIdentifier(DigestFactory.ϊ(localMGF1ParameterSpec.getDigestAlgorithm()), DERNull.abj)), new ASN1Integer(localPSSParameterSpec.getSaltLength()), new ASN1Integer(localPSSParameterSpec.getTrailerField())).getEncoded("DER");
    }
    
    protected byte[] engineGetEncoded(String paramString)
    {
      if ((paramString.equalsIgnoreCase("X.509")) || (paramString.equalsIgnoreCase("ASN.1"))) {
        return engineGetEncoded();
      }
      return null;
    }
    
    protected void engineInit(AlgorithmParameterSpec paramAlgorithmParameterSpec)
    {
      if (!(paramAlgorithmParameterSpec instanceof PSSParameterSpec)) {
        throw new InvalidParameterSpecException("PSSParameterSpec required to initialise an PSS algorithm parameters object");
      }
      this.aXq = ((PSSParameterSpec)paramAlgorithmParameterSpec);
    }
    
    protected void engineInit(byte[] paramArrayOfByte)
    {
      try
      {
        paramArrayOfByte = RSASSAPSSparams.ʺ(paramArrayOfByte);
        this.aXq = new PSSParameterSpec(paramArrayOfByte.ga().fK().getId(), paramArrayOfByte.gb().fK().getId(), new MGF1ParameterSpec(AlgorithmIdentifier.ᓪ(paramArrayOfByte.gb().fL()).fK().getId()), paramArrayOfByte.gj().intValue(), paramArrayOfByte.gk().intValue());
        return;
      }
      catch (ClassCastException paramArrayOfByte)
      {
        throw new IOException("Not a valid PSS Parameter encoding.");
      }
      catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
      {
        throw new IOException("Not a valid PSS Parameter encoding.");
      }
    }
    
    protected void engineInit(byte[] paramArrayOfByte, String paramString)
    {
      if ((ᕪ(paramString)) || (paramString.equalsIgnoreCase("X.509")))
      {
        engineInit(paramArrayOfByte);
        return;
      }
      throw new IOException("Unknown parameter format " + paramString);
    }
    
    protected String engineToString()
    {
      return "PSS Parameters";
    }
    
    protected AlgorithmParameterSpec ᐧ(Class paramClass)
    {
      if ((paramClass == PSSParameterSpec.class) && (this.aXq != null)) {
        return this.aXq;
      }
      throw new InvalidParameterSpecException("unknown parameter spec passed to PSS parameters object.");
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.rsa.AlgorithmParametersSpi
 * JD-Core Version:    0.7.0.1
 */