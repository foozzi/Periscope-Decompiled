.class public Lorg/spongycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private aFa:Ljava/security/SecureRandom;

.field private aNg:I

.field private aSt:Lorg/spongycastle/crypto/Digest;

.field private aSu:Lorg/spongycastle/crypto/Digest;

.field private aSv:I

.field private aSw:I

.field private aSx:I

.field private aSy:[B

.field private aSz:B

.field private aqg:[B

.field private fp:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 81
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    .line 82
    iput-object p3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    .line 83
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    .line 84
    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    .line 85
    iput p4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    .line 86
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aqg:[B

    .line 87
    add-int/lit8 v0, p4, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    .line 88
    iput-byte p5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSz:B

    .line 89
    return-void
.end method

.method private ˋ([BIII)[B
    .locals 7

    .line 315
    new-array v3, p4, [B

    .line 316
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    new-array v4, v0, [B

    .line 317
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 318
    const/4 v6, 0x0

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 322
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    div-int v0, p4, v0

    if-ge v6, v0, :cond_0

    .line 324
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->ˏ(I[B)V

    .line 326
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 327
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 328
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 330
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    mul-int/2addr v0, v6

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    mul-int/2addr v0, v6

    if-ge v0, p4, :cond_1

    .line 337
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->ˏ(I[B)V

    .line 339
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 340
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-interface {v0, v5, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 341
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSu:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 343
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    mul-int/2addr v0, v6

    array-length v1, v3

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSv:I

    mul-int/2addr v2, v6

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    :cond_1
    return-object v3
.end method

.method private ˏ(I[B)V
    .locals 2

    .line 300
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 301
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 302
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 303
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 304
    return-void
.end method

.method private ᖮ([B)V
    .locals 2

    .line 144
    const/4 v1, 0x0

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_0

    .line 146
    const/4 v0, 0x0

    aput-byte v0, p1, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public iP()[B
    .locals 8

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 187
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aFa:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aqg:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aqg:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    new-array v5, v0, [B

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 200
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 201
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aqg:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v0, v5

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v5, v2, v0, v1}, Lorg/spongycastle/crypto/signers/PSSSigner;->ˋ([BIII)[B

    move-result-object v6

    .line 204
    const/4 v7, 0x0

    :goto_0
    array-length v0, v6

    if-eq v7, v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    aget-byte v1, v0, v7

    aget-byte v2, v6, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSx:I

    sub-int/2addr v2, v3

    const/16 v3, 0xff

    shr-int v2, v3, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 211
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    const/4 v3, 0x0

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-byte v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSz:B

    aput-byte v2, v0, v1

    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v7

    .line 217
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 219
    return-object v7
.end method

.method public reset()V
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 176
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 157
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 168
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6

    .line 97
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object v5, v0

    .line 101
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .line 102
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->iN()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aFa:Ljava/security/SecureRandom;

    .line 103
    goto :goto_0

    .line 106
    :cond_0
    move-object v4, p2

    .line 107
    if-eqz p1, :cond_1

    .line 109
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aFa:Ljava/security/SecureRandom;

    .line 113
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, v4}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 117
    instance-of v0, v4, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    if-eqz v0, :cond_2

    .line 119
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->lj()Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v5

    goto :goto_1

    .line 123
    :cond_2
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-object v5, v0

    .line 126
    :goto_1
    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSx:I

    .line 128
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSx:I

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x9

    if-ge v0, v1, :cond_3

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key too small for specified hash and salt lengths"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSx:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/PSSSigner;->reset()V

    .line 136
    return-void
.end method

.method public ᵔ([B)Z
    .locals 8

    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 233
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aEV:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->ˑ([BII)[B

    move-result-object v5

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    array-length v2, v5

    sub-int/2addr v1, v2

    array-length v2, v5

    const/4 v3, 0x0

    invoke-static {v5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    goto :goto_0

    .line 236
    :catch_0
    move-exception v5

    .line 238
    const/4 v0, 0x0

    return v0

    .line 241
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    iget-byte v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSz:B

    if-eq v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 244
    const/4 v0, 0x0

    return v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/signers/PSSSigner;->ˋ([BIII)[B

    move-result-object v5

    .line 249
    const/4 v6, 0x0

    :goto_1
    array-length v0, v5

    if-eq v6, v0, :cond_1

    .line 251
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    aget-byte v1, v0, v6

    aget-byte v2, v5, v6

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 249
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSx:I

    sub-int/2addr v2, v3

    const/16 v3, 0xff

    shr-int v2, v3, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 256
    const/4 v6, 0x0

    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    if-eq v6, v0, :cond_3

    .line 258
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    aget-byte v0, v0, v6

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 261
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 265
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 268
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSw:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 274
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSt:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v2, v2

    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x1

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aNg:I

    sub-int v7, v0, v1

    .line 277
    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    array-length v0, v0

    if-eq v7, v0, :cond_6

    .line 279
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    aget-byte v0, v0, v6

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    aget-byte v1, v1, v7

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 283
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 287
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->aSy:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 288
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->fp:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ᖮ([B)V

    .line 290
    const/4 v0, 0x1

    return v0
.end method
