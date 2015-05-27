.class public Lorg/spongycastle/crypto/engines/XTEAEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aKV:Z

.field private aKW:Z

.field private aLc:[I

.field private aMv:[I

.field private aMw:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aLc:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMv:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMw:[I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aKV:Z

    .line 36
    return-void
.end method

.method private ʼ(I[BI)V
    .locals 2

    .line 183
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 184
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 185
    move v0, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 186
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 187
    return-void
.end method

.method private ˇ([B)V
    .locals 6

    .line 110
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size must be 128 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v4, v0, :cond_1

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aLc:[I

    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ՙ([BI)I

    move-result v1

    aput v1, v0, v4

    .line 116
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 121
    :cond_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v0, 0x20

    if-ge v4, v0, :cond_2

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMv:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aLc:[I

    and-int/lit8 v2, v5, 0x3

    aget v1, v1, v2

    add-int/2addr v1, v5

    aput v1, v0, v4

    .line 124
    const v0, 0x61c88647

    sub-int/2addr v5, v0

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMw:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aLc:[I

    ushr-int/lit8 v2, v5, 0xb

    and-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    add-int/2addr v1, v5

    aput v1, v0, v4

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    :cond_2
    return-void
.end method

.method private ˏ([BI[BI)I
    .locals 5

    .line 136
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ՙ([BI)I

    move-result v2

    .line 137
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ՙ([BI)I

    move-result v3

    .line 139
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x20

    if-ge v4, v0, :cond_0

    .line 141
    shl-int/lit8 v0, v3, 0x4

    ushr-int/lit8 v1, v3, 0x5

    xor-int/2addr v0, v1

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMv:[I

    aget v1, v1, v4

    xor-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 142
    shl-int/lit8 v0, v2, 0x4

    ushr-int/lit8 v1, v2, 0x5

    xor-int/2addr v0, v1

    add-int/2addr v0, v2

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMw:[I

    aget v1, v1, v4

    xor-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ʼ(I[BI)V

    .line 146
    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v3, p3, v0}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ʼ(I[BI)V

    .line 148
    const/16 v0, 0x8

    return v0
.end method

.method private ՙ([BI)I
    .locals 3

    .line 175
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
    .locals 5

    .line 158
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ՙ([BI)I

    move-result v2

    .line 159
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ՙ([BI)I

    move-result v3

    .line 161
    const/16 v4, 0x1f

    :goto_0
    if-ltz v4, :cond_0

    .line 163
    shl-int/lit8 v0, v2, 0x4

    ushr-int/lit8 v1, v2, 0x5

    xor-int/2addr v0, v1

    add-int/2addr v0, v2

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMw:[I

    aget v1, v1, v4

    xor-int/2addr v0, v1

    sub-int/2addr v3, v0

    .line 164
    shl-int/lit8 v0, v3, 0x4

    ushr-int/lit8 v1, v3, 0x5

    xor-int/2addr v0, v1

    add-int/2addr v0, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aMv:[I

    aget v1, v1, v4

    xor-int/2addr v0, v1

    sub-int/2addr v2, v0

    .line 161
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ʼ(I[BI)V

    .line 168
    add-int/lit8 v0, p4, 0x4

    invoke-direct {p0, v3, p3, v0}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ʼ(I[BI)V

    .line 170
    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 45
    const/16 v0, 0x8

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "XTEA"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 100
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 3

    .line 79
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aKV:Z

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XTEAEngine;->iG()Ljava/lang/String;

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

    .line 84
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 86
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 91
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aKW:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ˏ([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ᐝ([BI[BI)I

    move-result v0

    :goto_0
    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 60
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 62
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

    .line 65
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aKW:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->aKV:Z

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 70
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/XTEAEngine;->ˇ([B)V

    .line 71
    return-void
.end method
