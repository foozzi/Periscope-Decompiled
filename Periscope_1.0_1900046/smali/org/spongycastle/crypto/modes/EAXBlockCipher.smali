.class public Lorg/spongycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private aEU:I

.field private aEW:Z

.field private aKx:Lorg/spongycastle/crypto/Mac;

.field private aNz:I

.field private aOF:[B

.field private aOH:[B

.field private aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

.field private aON:[B

.field private aOO:[B

.field private aOP:[B

.field private aOQ:Z

.field private fU:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    .line 63
    new-instance v0, Lorg/spongycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/CMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    .line 64
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOH:[B

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOO:[B

    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aON:[B

    .line 67
    new-instance v0, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    .line 68
    return-void
.end method

.method private kg()V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOQ:Z

    if-eqz v0, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOQ:Z

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOO:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 145
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    new-array v3, v0, [B

    .line 146
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    aput-byte v1, v3, v0

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 148
    return-void
.end method

.method private kh()V
    .locals 5

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    new-array v3, v0, [B

    .line 153
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 155
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOH:[B

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOH:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aON:[B

    aget-byte v1, v1, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOO:[B

    aget-byte v2, v2, v4

    xor-int/2addr v1, v2

    aget-byte v2, v3, v4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private ˊ(B[BI)I
    .locals 6

    .line 337
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    aput-byte p1, v0, v1

    .line 339
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 341
    array-length v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    add-int/2addr v1, p3

    if-ge v0, v1, :cond_0

    .line 343
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer is too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEW:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->ˊ([BI[BI)I

    move-result v5

    .line 354
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    invoke-interface {v0, p2, p3, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 360
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->ˊ([BI[BI)I

    move-result v5

    .line 363
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    .line 364
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEW:Z

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    .line 370
    :cond_2
    return v5

    .line 373
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private ٴ([BI)Z
    .locals 4

    .line 378
    const/4 v2, 0x0

    .line 380
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    if-ge v3, v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOH:[B

    aget-byte v0, v0, v3

    add-int v1, p2, v3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    or-int/2addr v2, v0

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private וֹ(Z)V
    .locals 4

    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    .line 173
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 175
    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOH:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 180
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    new-array v3, v0, [B

    .line 181
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    aput-byte v1, v3, v0

    .line 182
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOQ:Z

    .line 186
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOF:[B

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOF:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOF:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->ᵔ([BII)V

    .line 190
    :cond_1
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 241
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->kg()V

    .line 243
    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    .line 244
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    array-length v0, v0

    new-array v5, v0, [B

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    .line 248
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEW:Z

    if-eqz v0, :cond_1

    .line 250
    array-length v0, p1

    add-int v1, p2, v4

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 252
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->ˊ([BI[BI)I

    .line 256
    const/4 v0, 0x0

    invoke-static {v5, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1, v4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 260
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->kh()V

    .line 262
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOH:[B

    add-int v1, p2, v4

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->וֹ(Z)V

    .line 266
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    add-int/2addr v0, v4

    return v0

    .line 270
    :cond_1
    array-length v0, p1

    add-int v1, p2, v4

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    .line 272
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    if-ge v4, v0, :cond_3

    .line 276
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_3
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    if-le v4, v0, :cond_4

    .line 280
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    sub-int v2, v4, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 282
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v5, v3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->ˊ([BI[BI)I

    .line 284
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    sub-int v0, v4, v0

    const/4 v1, 0x0

    invoke-static {v5, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    :cond_4
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->kh()V

    .line 289
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    sub-int v1, v4, v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->ٴ([BI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 291
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check in EAX failed"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->וֹ(Z)V

    .line 296
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    sub-int v0, v4, v0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 2

    .line 325
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    add-int v1, p1, v0

    .line 327
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEW:Z

    if-eqz v0, :cond_0

    .line 329
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    add-int/2addr v0, v1

    return v0

    .line 332
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    if-ge v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    sub-int v0, v1, v0

    :goto_0
    return v0
.end method

.method public iH()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->וֹ(Z)V

    .line 164
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7

    .line 88
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEW:Z

    .line 93
    instance-of v0, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_0

    .line 95
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AEADParameters;

    move-object v6, v0

    .line 97
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->fn()[B

    move-result-object v4

    .line 98
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->kp()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOF:[B

    .line 99
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->iO()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    .line 100
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/AEADParameters;->ko()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v5

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    .line 104
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object v6, v0

    .line 106
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v4

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOF:[B

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->iO()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    .line 109
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to EAX"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :goto_0
    if-eqz p1, :cond_2

    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    add-int/2addr v0, v1

    :goto_1
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOP:[B

    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    new-array v6, v0, [B

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, v5}, Lorg/spongycastle/crypto/Mac;->ˊ(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 123
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-byte v1, v6, v0

    .line 124
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    const/4 v2, 0x0

    invoke-interface {v0, v6, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    array-length v1, v4

    const/4 v2, 0x0

    invoke-interface {v0, v4, v2, v1}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aON:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOM:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aON:[B

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 131
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->reset()V

    .line 132
    return-void
.end method

.method public ˋ([BII[BI)I
    .locals 4

    .line 221
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->kg()V

    .line 223
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 225
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    const/4 v2, 0x0

    .line 230
    const/4 v3, 0x0

    :goto_0
    if-eq v3, p3, :cond_1

    .line 232
    add-int v0, p2, v3

    aget-byte v0, p1, v0

    add-int v1, p5, v2

    invoke-direct {p0, v0, p4, v1}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->ˊ(B[BI)I

    move-result v0

    add-int/2addr v2, v0

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return v2
.end method

.method public ء(I)I
    .locals 2

    .line 311
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEU:I

    add-int v1, p1, v0

    .line 312
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aEW:Z

    if-nez v0, :cond_1

    .line 314
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    if-ge v1, v0, :cond_0

    .line 316
    const/4 v0, 0x0

    return v0

    .line 318
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aNz:I

    sub-int/2addr v1, v0

    .line 320
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->fU:I

    rem-int v0, v1, v0

    sub-int v0, v1, v0

    return v0
.end method

.method public ᵔ([BII)V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aOQ:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->aKx:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 208
    return-void
.end method
