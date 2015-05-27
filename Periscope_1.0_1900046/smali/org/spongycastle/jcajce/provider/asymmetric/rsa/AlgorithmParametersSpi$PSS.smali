.class public Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;
.super Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSS"
.end annotation


# instance fields
.field aXq:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 9

    .line 170
    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->aXq:Ljava/security/spec/PSSParameterSpec;

    .line 171
    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 174
    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    move-object v6, v0

    .line 175
    new-instance v7, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->aqw:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v1, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 178
    new-instance v8, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v8, v5, v7, v0, v1}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;)V

    .line 180
    const-string v0, "DER"

    invoke-virtual {v8, v0}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    .line 187
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 193
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 212
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->aXq:Ljava/security/spec/PSSParameterSpec;

    .line 218
    return-void
.end method

.method protected engineInit([B)V
    .locals 7

    .line 226
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ʺ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v6

    .line 228
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->ga()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->gb()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->gb()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->gj()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/RSASSAPSSparams;->gk()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->aXq:Ljava/security/spec/PSSParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    goto :goto_0

    .line 235
    :catch_0
    move-exception v6

    .line 237
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid PSS Parameter encoding."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :catch_1
    move-exception v6

    .line 241
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid PSS Parameter encoding."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :goto_0
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3

    .line 250
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->engineInit([B)V

    goto :goto_0

    .line 256
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :goto_0
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 262
    const-string v0, "PSS Parameters"

    return-object v0
.end method

.method protected ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 200
    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->aXq:Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/rsa/AlgorithmParametersSpi$PSS;->aXq:Ljava/security/spec/PSSParameterSpec;

    return-object v0

    .line 205
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to PSS parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
