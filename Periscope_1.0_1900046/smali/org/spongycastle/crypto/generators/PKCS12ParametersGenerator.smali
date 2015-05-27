.class public Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lorg/spongycastle/crypto/PBEParametersGenerator;
.source ""


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aNj:I

.field private aNk:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 40
    instance-of v0, p1, Lorg/spongycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNj:I

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->iM()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :goto_0
    return-void
.end method

.method private ˊ([BI[B)V
    .locals 5

    .line 61
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, p3

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 63
    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v1, v3

    aput-byte v1, p1, v0

    .line 64
    ushr-int/lit8 v3, v3, 0x8

    .line 66
    array-length v0, p3

    add-int/lit8 v4, v0, -0x2

    :goto_0
    if-ltz v4, :cond_0

    .line 68
    aget-byte v0, p3, v4

    and-int/lit16 v0, v0, 0xff

    add-int v1, p2, v4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 69
    add-int v0, p2, v4

    int-to-byte v1, v3

    aput-byte v1, p1, v0

    .line 70
    ushr-int/lit8 v3, v3, 0x8

    .line 66
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method private ᐢ(II)[B
    .locals 14

    .line 81
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    new-array v4, v0, [B

    .line 82
    move/from16 v0, p2

    new-array v5, v0, [B

    .line 84
    const/4 v6, 0x0

    :goto_0
    array-length v0, v4

    if-eq v6, v0, :cond_0

    .line 86
    int-to-byte v0, p1

    aput-byte v0, v4, v6

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aqg:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aqg:[B

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 93
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aqg:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    new-array v6, v0, [B

    .line 95
    const/4 v7, 0x0

    :goto_1
    array-length v0, v6

    if-eq v7, v0, :cond_1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aqg:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aqg:[B

    array-length v1, v1

    rem-int v1, v7, v1

    aget-byte v0, v0, v1

    aput-byte v0, v6, v7

    .line 95
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 102
    :cond_2
    const/4 v0, 0x0

    new-array v6, v0, [B

    .line 107
    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFe:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFe:[B

    array-length v0, v0

    if-eqz v0, :cond_4

    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFe:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    new-array v7, v0, [B

    .line 111
    const/4 v8, 0x0

    :goto_3
    array-length v0, v7

    if-eq v8, v0, :cond_3

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFe:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFe:[B

    array-length v1, v1

    rem-int v1, v8, v1

    aget-byte v0, v0, v1

    aput-byte v0, v7, v8

    .line 111
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    goto :goto_4

    .line 118
    :cond_4
    const/4 v0, 0x0

    new-array v7, v0, [B

    .line 121
    :goto_4
    array-length v0, v6

    array-length v1, v7

    add-int/2addr v0, v1

    new-array v8, v0, [B

    .line 123
    array-length v0, v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v1, v8, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    array-length v0, v6

    array-length v1, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    new-array v9, v0, [B

    .line 127
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNj:I

    add-int v0, v0, p2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNj:I

    div-int v10, v0, v1

    .line 128
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNj:I

    new-array v11, v0, [B

    .line 130
    const/4 v12, 0x1

    :goto_5
    if-gt v12, v10, :cond_9

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v8

    const/4 v2, 0x0

    invoke-interface {v0, v8, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 135
    const/4 v13, 0x1

    :goto_6
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFf:I

    if-ge v13, v0, :cond_5

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    array-length v1, v11

    const/4 v2, 0x0

    invoke-interface {v0, v11, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 135
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 141
    :cond_5
    const/4 v13, 0x0

    :goto_7
    array-length v0, v9

    if-eq v13, v0, :cond_6

    .line 143
    array-length v0, v11

    rem-int v0, v13, v0

    aget-byte v0, v11, v0

    aput-byte v0, v9, v13

    .line 141
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 146
    :cond_6
    const/4 v13, 0x0

    :goto_8
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    div-int/2addr v0, v1

    if-eq v13, v0, :cond_7

    .line 148
    iget v0, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNk:I

    mul-int/2addr v0, v13

    invoke-direct {p0, v8, v0, v9}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->ˊ([BI[B)V

    .line 146
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 151
    :cond_7
    if-ne v12, v10, :cond_8

    .line 153
    add-int/lit8 v0, v12, -0x1

    iget v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNj:I

    mul-int/2addr v0, v1

    array-length v1, v5

    add-int/lit8 v2, v12, -0x1

    iget v3, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNj:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v11, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 157
    :cond_8
    add-int/lit8 v0, v12, -0x1

    iget v1, p0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->aNj:I

    mul-int/2addr v0, v1

    array-length v1, v11

    const/4 v2, 0x0

    invoke-static {v11, v2, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 161
    :cond_9
    return-object v5
.end method


# virtual methods
.method public ر(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    .line 174
    div-int/lit8 p1, p1, 0x8

    .line 176
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v2

    .line 178
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public ڎ(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    .line 214
    div-int/lit8 p1, p1, 0x8

    .line 216
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v2

    .line 218
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public ᵙ(II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 5

    .line 194
    div-int/lit8 p1, p1, 0x8

    .line 195
    div-int/lit8 p2, p2, 0x8

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v3

    .line 199
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;->ᐢ(II)[B

    move-result-object v4

    .line 201
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-object v0
.end method
