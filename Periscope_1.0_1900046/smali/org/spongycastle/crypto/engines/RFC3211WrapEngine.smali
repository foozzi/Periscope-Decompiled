.class public Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# instance fields
.field private aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

.field private aJY:Z

.field private aLe:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private aLf:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    .line 28
    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 34
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJY:Z

    .line 36
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v1, v0

    .line 40
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLf:Ljava/security/SecureRandom;

    .line 41
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLe:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLf:Ljava/security/SecureRandom;

    .line 50
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLe:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 52
    :goto_0
    return-void
.end method

.method public ᐨ([BII)[B
    .locals 6

    .line 64
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJY:Z

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLe:Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v3

    .line 74
    add-int/lit8 v0, p3, 0x4

    mul-int/lit8 v1, v3, 0x2

    if-ge v0, v1, :cond_1

    .line 76
    mul-int/lit8 v0, v3, 0x2

    new-array v4, v0, [B

    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 v0, p3, 0x4

    rem-int/2addr v0, v3

    if-nez v0, :cond_2

    add-int/lit8 v0, p3, 0x4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p3, 0x4

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v3

    :goto_0
    new-array v4, v0, [B

    .line 83
    :goto_1
    int-to-byte v0, p3

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 84
    aget-byte v0, p1, p2

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v4, v1

    .line 85
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v4, v1

    .line 86
    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v4, v1

    .line 88
    const/4 v0, 0x4

    invoke-static {p1, p2, v4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    add-int/lit8 v5, p3, 0x4

    :goto_2
    array-length v0, v4

    if-ge v5, v0, :cond_3

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLf:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 95
    :cond_3
    const/4 v5, 0x0

    :goto_3
    array-length v0, v4

    if-ge v5, v0, :cond_4

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v4, v5, v4, v5}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 95
    add-int/2addr v5, v3

    goto :goto_3

    .line 100
    :cond_4
    const/4 v5, 0x0

    :goto_4
    array-length v0, v4

    if-ge v5, v0, :cond_5

    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v4, v5, v4, v5}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 100
    add-int/2addr v5, v3

    goto :goto_4

    .line 105
    :cond_5
    return-object v4
.end method

.method public ﹳ([BII)[B
    .locals 10

    .line 114
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJY:Z

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v3

    .line 121
    mul-int/lit8 v0, v3, 0x2

    if-ge p3, v0, :cond_1

    .line 123
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "input too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    new-array v4, p3, [B

    .line 127
    new-array v5, v3, [B

    .line 129
    const/4 v0, 0x0

    invoke-static {p1, p2, v4, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {p1, p2, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLe:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 134
    move v6, v3

    :goto_0
    array-length v0, v4

    if-ge v6, v0, :cond_2

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v4, v6, v4, v6}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 134
    add-int/2addr v6, v3

    goto :goto_0

    .line 139
    :cond_2
    array-length v0, v4

    array-length v1, v5

    sub-int/2addr v0, v1

    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v4, v0, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLe:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v4, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aLe:Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 147
    const/4 v6, 0x0

    :goto_1
    array-length v0, v4

    if-ge v6, v0, :cond_3

    .line 149
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->aJV:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0, v4, v6, v4, v6}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->ˊ([BI[BI)I

    .line 147
    add-int/2addr v6, v3

    goto :goto_1

    .line 152
    :cond_3
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    array-length v1, v4

    add-int/lit8 v1, v1, -0x4

    if-le v0, v1, :cond_4

    .line 154
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "wrapped key corrupted"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_4
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    new-array v6, v0, [B

    .line 159
    const/4 v0, 0x0

    aget-byte v0, v4, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v4, v1, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v8, 0x0

    :goto_2
    const/4 v0, 0x3

    if-eq v8, v0, :cond_5

    .line 165
    add-int/lit8 v0, v8, 0x1

    aget-byte v0, v4, v0

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v9, v0

    .line 166
    aget-byte v0, v6, v8

    xor-int/2addr v0, v9

    or-int/2addr v7, v0

    .line 163
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 168
    :cond_5
    if-eqz v7, :cond_6

    .line 170
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "wrapped key fails checksum"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6
    return-object v6
.end method
