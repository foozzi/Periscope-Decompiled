.class public Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source ""


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1

    .line 22
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 2

    .line 29
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    const-string v1, "RAW"

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    .line 58
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    .line 64
    return-void
.end method

.method protected engineInit([B)V
    .locals 4

    .line 73
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_0

    .line 76
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v3, v0

    .line 78
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object p1

    .line 81
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    .line 82
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 4

    .line 89
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v3, v0

    .line 95
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 97
    :catch_0
    move-exception v3

    .line 99
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->engineInit([B)V

    .line 108
    return-void

    .line 111
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in IV parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineToString()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "IV Parameters"

    return-object v0
.end method

.method protected ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2

    .line 46
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_0

    .line 48
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to IV parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
