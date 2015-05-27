.class public Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lorg/spongycastle/crypto/PBEParametersGenerator;
.source ""


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 20
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 27
    return-void
.end method

.method private ʔ(I)[B
    .locals 8

    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v4, v0, [B

    .line 49
    new-array v5, p1, [B

    .line 50
    const/4 v6, 0x0

    .line 54
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFe:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFe:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aqg:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aqg:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 59
    array-length v0, v4

    if-le p1, v0, :cond_0

    array-length v7, v4

    goto :goto_1

    :cond_0
    move v7, p1

    .line 60
    :goto_1
    const/4 v0, 0x0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    add-int/2addr v6, v7

    .line 64
    sub-int/2addr p1, v7

    .line 65
    if-nez p1, :cond_1

    .line 67
    goto :goto_2

    .line 71
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 73
    goto :goto_0

    .line 75
    :goto_2
    return-object v5
.end method


# virtual methods
.method public ر(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    .line 89
    div-int/lit8 p1, p1, 0x8

    .line 91
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->ʔ(I)[B

    move-result-object v2

    .line 93
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public ڎ(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 129
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->ر(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 4

    .line 110
    div-int/lit8 p1, p1, 0x8

    .line 111
    div-int/lit8 p2, p2, 0x8

    .line 113
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;->ʔ(I)[B

    move-result-object v3

    .line 115
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v0, v1, v3, p1, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-object v0
.end method
