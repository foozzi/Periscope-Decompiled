.class public Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lorg/spongycastle/crypto/PBEParametersGenerator;
.source ""


# instance fields
.field private aGQ:[B

.field private aNl:Lorg/spongycastle/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    .line 38
    return-void
.end method

.method private ʔ(I)[B
    .locals 14

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v6

    .line 78
    add-int v0, p1, v6

    add-int/lit8 v0, v0, -0x1

    div-int v7, v0, v6

    .line 79
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 80
    mul-int v0, v7, v6

    new-array v9, v0, [B

    .line 81
    const/4 v10, 0x0

    .line 83
    new-instance v11, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aFe:[B

    invoke-direct {v11, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, v11}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 87
    const/4 v12, 0x1

    :goto_0
    if-gt v12, v7, :cond_1

    .line 90
    const/4 v13, 0x3

    .line 91
    :goto_1
    aget-byte v0, v8, v13

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v8, v13

    if-nez v0, :cond_0

    .line 93
    add-int/lit8 v13, v13, -0x1

    goto :goto_1

    .line 96
    :cond_0
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aqg:[B

    iget v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aFf:I

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->ˊ([BI[B[BI)V

    .line 97
    add-int/2addr v10, v6

    .line 87
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 100
    :cond_1
    return-object v9
.end method

.method private ˊ([BI[B[BI)V
    .locals 6

    .line 47
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    array-length v1, p3

    const/4 v2, 0x0

    invoke-interface {v0, p3, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p4, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    const/4 v4, 0x1

    :goto_0
    if-ge v4, p2, :cond_3

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aNl:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 67
    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    array-length v0, v0

    if-eq v5, v0, :cond_2

    .line 69
    add-int v0, p5, v5

    aget-byte v1, p4, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->aGQ:[B

    aget-byte v2, v2, v5

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 62
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method


# virtual methods
.method public ر(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    .line 113
    div-int/lit8 p1, p1, 0x8

    .line 115
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->ʔ(I)[B

    move-result-object v2

    .line 117
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public ڎ(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .line 151
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->ر(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 4

    .line 133
    div-int/lit8 p1, p1, 0x8

    .line 134
    div-int/lit8 p2, p2, 0x8

    .line 136
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->ʔ(I)[B

    move-result-object v3

    .line 138
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v0, v1, v3, p1, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-object v0
.end method
