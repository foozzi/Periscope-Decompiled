.class public Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aEU:I

.field private aEX:Lorg/spongycastle/crypto/BlockCipher;

.field private aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

.field private aNy:[B

.field private aNz:I

.field private buf:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2

    .line 34
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    .line 96
    iput-object p3, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 97
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNz:I

    .line 99
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNy:[B

    .line 101
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    .line 103
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 178
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    if-ge v0, v5, :cond_2

    .line 185
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 186
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    goto :goto_0

    .line 191
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    if-ne v0, v5, :cond_1

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->ᵢ([BI)I

    .line 200
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 202
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNy:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNz:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 206
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNz:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNz:I

    return v0
.end method

.method public reset()V
    .locals 3

    .line 217
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    .line 227
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 228
    return-void
.end method

.method public update(B)V
    .locals 5

    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    aput-byte p1, v0, v1

    .line 133
    return-void
.end method

.method public update([BII)V
    .locals 7

    .line 140
    if-gez p3, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 146
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    sub-int v6, v5, v0

    .line 148
    if-le p3, v6, :cond_1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    .line 155
    sub-int/2addr p3, v6

    .line 156
    add-int/2addr p2, v6

    .line 158
    :goto_0
    if-le p3, v5, :cond_1

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aNy:[B

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 162
    sub-int/2addr p3, v5

    .line 163
    add-int/2addr p2, v5

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEU:I

    .line 170
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 113
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;->aEX:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 116
    return-void
.end method
