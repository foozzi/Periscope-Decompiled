.class public Lorg/spongycastle/crypto/macs/CMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aEU:I

.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aFS:[B

.field private aNC:[B

.field private aND:[B

.field private aNE:[B

.field private aNy:[B

.field private aNz:I

.field private buf:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 55
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/macs/CMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    if-le p2, v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAC size must be less or equal to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size must be either 64 or 128 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 91
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNz:I

    .line 93
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNy:[B

    .line 95
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    .line 97
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNC:[B

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    .line 100
    return-void
.end method

.method private static ʽ([B[B)I
    .locals 5

    .line 109
    array-length v2, p0

    .line 110
    const/4 v3, 0x0

    .line 111
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 113
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 114
    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 115
    ushr-int/lit8 v0, v4, 0x7

    and-int/lit8 v3, v0, 0x1

    .line 116
    goto :goto_0

    .line 117
    :cond_0
    return v3
.end method

.method private static ᐡ([B)[B
    .locals 7

    .line 122
    array-length v0, p0

    new-array v4, v0, [B

    .line 123
    invoke-static {p0, v4}, Lorg/spongycastle/crypto/macs/CMac;->ʽ([B[B)I

    move-result v5

    .line 124
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, -0x79

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    and-int/lit16 v6, v0, 0xff

    .line 129
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, v4, v0

    rsub-int/lit8 v2, v5, 0x1

    shl-int/lit8 v2, v2, 0x3

    ushr-int v2, v6, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 131
    return-object v4
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8

    .line 214
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 217
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    if-ne v0, v5, :cond_0

    .line 219
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/CMac;->aND:[B

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v0}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;->ᵢ([BI)I

    .line 224
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/CMac;->aNE:[B

    .line 227
    :goto_0
    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNy:[B

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 229
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    aget-byte v1, v0, v7

    aget-byte v2, v6, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 227
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNy:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->aNz:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CMac;->reset()V

    .line 238
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNz:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNz:I

    return v0
.end method

.method public reset()V
    .locals 3

    .line 249
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 249
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    .line 259
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 260
    return-void
.end method

.method public update(B)V
    .locals 5

    .line 168
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    aput-byte p1, v0, v1

    .line 175
    return-void
.end method

.method public update([BII)V
    .locals 7

    .line 179
    if-gez p3, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 186
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    sub-int v6, v5, v0

    .line 188
    if-le p3, v6, :cond_1

    .line 190
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    .line 195
    sub-int/2addr p3, v6

    .line 196
    add-int/2addr p2, v6

    .line 198
    :goto_0
    if-le p3, v5, :cond_1

    .line 200
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->aNy:[B

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 202
    sub-int/2addr p3, v5

    .line 203
    add-int/2addr p2, v5

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEU:I

    .line 210
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 5

    .line 136
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/macs/CMac;->ˏ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNC:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aFS:[B

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CMac;->aNC:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CMac;->aFS:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aFS:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/macs/CMac;->ᐡ([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aND:[B

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aND:[B

    invoke-static {v0}, Lorg/spongycastle/crypto/macs/CMac;->ᐡ([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CMac;->aNE:[B

    .line 146
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CMac;->reset()V

    .line 147
    return-void
.end method

.method ˏ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 151
    if-eqz p1, :cond_0

    .line 153
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CMac mode only permits key to be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    return-void
.end method
