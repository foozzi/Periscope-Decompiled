.class public Lorg/spongycastle/crypto/engines/TEAEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aKV:Z

.field private aKW:Z

.field private aLW:I

.field private aLX:I

.field private aLY:I

.field private aLZ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aKV:Z

    .line 34
    return-void
.end method

.method private ʼ(I[BI)V
    .locals 2

    .line 179
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 180
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 181
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 182
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 183
    return-void
.end method

.method private ˇ([B)V
    .locals 2

    .line 108
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size must be 128 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLW:I

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLX:I

    .line 115
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLY:I

    .line 116
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLZ:I

    .line 117
    return-void
.end method

.method private ˏ([BI[BI)I
    .locals 7

    .line 126
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v3

    .line 127
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v4

    .line 129
    const/4 v5, 0x0

    .line 131
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x20

    if-eq v6, v0, :cond_0

    .line 133
    const v0, 0x61c88647

    sub-int/2addr v5, v0

    .line 134
    shl-int/lit8 v0, v4, 0x4

    iget v1, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLW:I

    add-int/2addr v0, v1

    add-int v1, v4, v5

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v4, 0x5

    iget v2, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLX:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 135
    shl-int/lit8 v0, v3, 0x4

    iget v1, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLY:I

    add-int/2addr v0, v1

    add-int v1, v3, v5

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v3, 0x5

    iget v2, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLZ:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, v3, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->ʼ(I[BI)V

    .line 139
    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v4, p3, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ʼ(I[BI)V

    .line 141
    const/16 v0, 0x8

    return v0
.end method

.method private ՙ([BI)I
    .locals 3

    .line 171
    move v0, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    move v1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    move v1, p2

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private ᐝ([BI[BI)I
    .locals 7

    .line 151
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v3

    .line 152
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ՙ([BI)I

    move-result v4

    .line 154
    const v5, -0x3910c8e0

    .line 156
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x20

    if-eq v6, v0, :cond_0

    .line 158
    shl-int/lit8 v0, v3, 0x4

    iget v1, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLY:I

    add-int/2addr v0, v1

    add-int v1, v3, v5

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v3, 0x5

    iget v2, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLZ:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    sub-int/2addr v4, v0

    .line 159
    shl-int/lit8 v0, v4, 0x4

    iget v1, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLW:I

    add-int/2addr v0, v1

    add-int v1, v4, v5

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v4, 0x5

    iget v2, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aLX:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    .line 160
    const v0, 0x61c88647

    add-int/2addr v5, v0

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, v3, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->ʼ(I[BI)V

    .line 164
    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v4, p3, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ʼ(I[BI)V

    .line 166
    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 43
    const/16 v0, 0x8

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "TEA"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 98
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 3

    .line 77
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aKV:Z

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TEAEngine;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 89
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aKW:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 58
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to TEA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aKW:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->aKV:Z

    .line 66
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 68
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->ˇ([B)V

    .line 69
    return-void
.end method
