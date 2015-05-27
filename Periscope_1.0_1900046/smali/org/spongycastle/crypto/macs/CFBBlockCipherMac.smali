.class public Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private aEU:I

.field private aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

.field private aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

.field private aNy:[B

.field private aNz:I

.field private buf:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 3

    .line 191
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 192
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 252
    rem-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNy:[B

    .line 259
    new-instance v0, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    .line 260
    iput-object p4, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 261
    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNz:I

    .line 263
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    .line 265
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 339
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v5

    .line 344
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    if-nez v0, :cond_0

    .line 346
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    if-ge v0, v5, :cond_1

    .line 348
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    .line 349
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNA:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->ᵢ([BI)I

    .line 357
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->ˊ([BI[BI)I

    .line 359
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNy:[B

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->ᒽ([B)V

    .line 361
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNy:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNz:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 365
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNz:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->iG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 282
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNz:I

    return v0
.end method

.method public reset()V
    .locals 3

    .line 376
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 378
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    .line 386
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 387
    return-void
.end method

.method public update(B)V
    .locals 5

    .line 288
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->ˊ([BI[BI)I

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    aput-byte p1, v0, v1

    .line 295
    return-void
.end method

.method public update([BII)V
    .locals 8

    .line 302
    if-gez p3, :cond_0

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->getBlockSize()I

    move-result v5

    .line 308
    const/4 v6, 0x0

    .line 309
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    sub-int v7, v5, v0

    .line 311
    if-le p3, v7, :cond_1

    .line 313
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    invoke-static {p1, p2, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNy:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/lit8 v6, v0, 0x0

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    .line 318
    sub-int/2addr p3, v7

    .line 319
    add-int/2addr p2, v7

    .line 321
    :goto_0
    if-le p3, v5, :cond_1

    .line 323
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNy:[B

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->ˊ([BI[BI)I

    move-result v0

    add-int/2addr v6, v0

    .line 325
    sub-int/2addr p3, v5

    .line 326
    add-int/2addr p2, v5

    goto :goto_0

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aEU:I

    .line 333
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->reset()V

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/CFBBlockCipherMac;->aNB:Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/macs/MacCFBBlockCipher;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 278
    return-void
.end method
