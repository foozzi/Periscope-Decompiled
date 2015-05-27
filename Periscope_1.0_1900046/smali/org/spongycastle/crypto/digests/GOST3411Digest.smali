.class public Lorg/spongycastle/crypto/digests/GOST3411Digest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field private static final aGh:[B


# instance fields
.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aFR:[B

.field private aFS:[B

.field private aFT:[B

.field private aFU:[B

.field private aFV:[[B

.field private aFW:[B

.field private aFX:I

.field private aFY:[B

.field private aFZ:[B

.field aGa:[B

.field aGb:[S

.field aGc:[S

.field aGd:[B

.field aGe:[B

.field aGf:[B

.field aGg:[B

.field private aac:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 254
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGh:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    .line 22
    const/4 v0, 0x4

    const/16 v1, 0x20

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 115
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGa:[B

    .line 154
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGc:[S

    .line 165
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    .line 166
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGg:[B

    .line 36
    const-string v0, "D-A"

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ᓒ(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFY:[B

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFY:[B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 39
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/GOST3411Digest;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    .line 22
    const/4 v0, 0x4

    const/16 v1, 0x20

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 115
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGa:[B

    .line 154
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGc:[S

    .line 165
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    .line 166
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGg:[B

    .line 60
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ˊ(Lorg/spongycastle/util/Memoable;)V

    .line 61
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    .line 22
    const/4 v0, 0x4

    const/16 v1, 0x20

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 115
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGa:[B

    .line 154
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGc:[S

    .line 165
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    .line 166
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGg:[B

    .line 48
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFY:[B

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFY:[B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 51
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 52
    return-void
.end method

.method private finish()V
    .locals 4

    .line 227
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/util/Pack;->ʼ(J[BI)V

    .line 229
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->update(B)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ͺ([BI)V

    .line 235
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ͺ([BI)V

    .line 236
    return-void
.end method

.method private ˊ([B[BI[BI)V
    .locals 3

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p4, p5, p2, p3}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 151
    return-void
.end method

.method private ˊ([B[S)V
    .locals 4

    .line 314
    const/4 v3, 0x0

    :goto_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_0

    .line 316
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    mul-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, v3

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method private ˊ([S[B)V
    .locals 4

    .line 322
    const/4 v3, 0x0

    :goto_0
    array-length v0, p2

    div-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_0

    .line 324
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-short v1, p1, v3

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 325
    mul-int/lit8 v0, v3, 0x2

    aget-short v1, p1, v3

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method private ᵢ([B)[B
    .locals 4

    .line 119
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v3, v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    mul-int/lit8 v1, v3, 0x4

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    mul-int/lit8 v1, v3, 0x4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v3, 0x8

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    mul-int/lit8 v1, v3, 0x4

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v3, 0x10

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    mul-int/lit8 v1, v3, 0x4

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v3, 0x18

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFZ:[B

    return-object v0
.end method

.method private ⁱ([B)[B
    .locals 5

    .line 134
    const/4 v4, 0x0

    :goto_0
    const/16 v0, 0x8

    if-ge v4, v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGa:[B

    aget-byte v1, p1, v4

    add-int/lit8 v2, v4, 0x8

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 134
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 139
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGa:[B

    const/4 v1, 0x0

    const/16 v2, 0x18

    const/16 v3, 0x8

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object p1
.end method

.method private ﹶ([B)V
    .locals 5

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ˊ([B[S)V

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGc:[S

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/4 v3, 0x3

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/16 v3, 0xc

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    const/16 v3, 0xf

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    int-to-short v1, v1

    const/16 v2, 0xf

    aput-short v1, v0, v2

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGb:[S

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGc:[S

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGc:[S

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ˊ([S[B)V

    .line 162
    return-void
.end method

.method private ﹺ([B)V
    .locals 6

    .line 300
    const/4 v3, 0x0

    .line 302
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    array-length v0, v0

    if-eq v4, v0, :cond_0

    .line 304
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int v5, v0, v3

    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    int-to-byte v1, v5

    aput-byte v1, v0, v4

    .line 308
    ushr-int/lit8 v3, v5, 0x8

    .line 302
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    .line 242
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->finish()V

    .line 244
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 248
    const/16 v0, 0x20

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "GOST3411"

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 70
    const/16 v0, 0x20

    return v0
.end method

.method public iM()I
    .locals 1

    .line 331
    const/16 v0, 0x20

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 336
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/spongycastle/crypto/digests/GOST3411Digest;)V

    return-object v0
.end method

.method public reset()V
    .locals 6

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    .line 265
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    array-length v0, v0

    if-ge v5, v0, :cond_0

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 271
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 269
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 273
    :cond_1
    const/4 v5, 0x0

    :goto_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 273
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 277
    :cond_2
    const/4 v5, 0x0

    :goto_3
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v5, v0, :cond_3

    .line 279
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 277
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 281
    :cond_3
    const/4 v5, 0x0

    :goto_4
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v5, v0, :cond_4

    .line 283
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 281
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 285
    :cond_4
    const/4 v5, 0x0

    :goto_5
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    array-length v0, v0

    if-ge v5, v0, :cond_5

    .line 287
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 285
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 289
    :cond_5
    const/4 v5, 0x0

    :goto_6
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v0, v0

    if-ge v5, v0, :cond_6

    .line 291
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 294
    :cond_6
    sget-object v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGh:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGh:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    return-void
.end method

.method public update(B)V
    .locals 4

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    aput-byte p1, v0, v1

    .line 76
    iget v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ﹺ([B)V

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ͺ([BI)V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    .line 82
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    .line 83
    return-void
.end method

.method public update([BII)V
    .locals 4

    .line 87
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 89
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 90
    add-int/lit8 p2, p2, 0x1

    .line 91
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 94
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ﹺ([B)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ͺ([BI)V

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 102
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    goto :goto_1

    .line 106
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 108
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 109
    add-int/lit8 p2, p2, 0x1

    .line 110
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 112
    :cond_2
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 6

    .line 341
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    move-object v5, v0

    .line 343
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFY:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFY:[B

    .line 344
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFY:[B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 346
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 348
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFS:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFU:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v3, 0x1

    aget-object v2, v2, v3

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    const/4 v3, 0x3

    aget-object v2, v2, v3

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    iget-object v2, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFW:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFX:I

    .line 358
    iget-wide v0, v5, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aac:J

    .line 359
    return-void
.end method

.method protected ͺ([BI)V
    .locals 9

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    const/4 v6, 0x0

    :goto_0
    const/16 v0, 0x20

    if-ge v6, v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGg:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    aget-byte v1, v1, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    aget-byte v2, v2, v6

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 183
    :cond_0
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGg:[B

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ᵢ([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ˊ([B[BI[BI)V

    .line 186
    const/4 v6, 0x1

    :goto_1
    const/4 v0, 0x4

    if-ge v6, v0, :cond_3

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ⁱ([B)[B

    move-result-object v7

    .line 189
    const/4 v8, 0x0

    :goto_2
    const/16 v0, 0x20

    if-ge v8, v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    aget-byte v1, v7, v8

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFV:[[B

    aget-object v2, v2, v6

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 189
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ⁱ([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ⁱ([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    .line 194
    const/4 v8, 0x0

    :goto_3
    const/16 v0, 0x20

    if-ge v8, v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGg:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGe:[B

    aget-byte v1, v1, v8

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGf:[B

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 199
    :cond_2
    move-object v0, p0

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGg:[B

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ᵢ([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    mul-int/lit8 v3, v6, 0x8

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    mul-int/lit8 v5, v6, 0x8

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ˊ([B[BI[BI)V

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 203
    :cond_3
    const/4 v6, 0x0

    :goto_4
    const/16 v0, 0xc

    if-ge v6, v0, :cond_4

    .line 205
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ﹶ([B)V

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 207
    :cond_4
    const/4 v6, 0x0

    :goto_5
    const/16 v0, 0x20

    if-ge v6, v0, :cond_5

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    aget-byte v1, v1, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFT:[B

    aget-byte v2, v2, v6

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 212
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ﹶ([B)V

    .line 214
    const/4 v6, 0x0

    :goto_6
    const/16 v0, 0x20

    if-ge v6, v0, :cond_6

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    aget-byte v1, v1, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    aget-byte v2, v2, v6

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 214
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 218
    :cond_6
    const/4 v6, 0x0

    :goto_7
    const/16 v0, 0x3d

    if-ge v6, v0, :cond_7

    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->ﹶ([B)V

    .line 218
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 222
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aGd:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->aFR:[B

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-void
.end method
