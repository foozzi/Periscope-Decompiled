.class public Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# instance fields
.field aYX:Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 4

    .line 32
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->aYX:Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 34
    :catch_0
    move-exception v3

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oooops! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    .line 68
    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v3, v0

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v1

    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->aYX:Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    .line 77
    return-void
.end method

.method protected engineInit([B)V
    .locals 1

    .line 83
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->וֹ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->aYX:Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    .line 84
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2

    .line 91
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->engineInit([B)V

    .line 94
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in PKCS12 PBE parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "PKCS12 PBE Parameters"

    return-object v0
.end method

.method protected ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3

    .line 55
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-ne p1, v0, :cond_0

    .line 57
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->aYX:Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/PBEPKCS12$AlgParams;->aYX:Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->fT()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to PKCS12 PBE parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
