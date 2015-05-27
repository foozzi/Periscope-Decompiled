.class Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UBI"
.end annotation


# instance fields
.field private final aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

.field private aHB:[B

.field private aHC:I

.field private aHD:[J

.field final synthetic aHE:Lorg/spongycastle/crypto/digests/SkeinEngine;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/digests/SkeinEngine;I)V
    .locals 2

    .line 389
    iput-object p1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHE:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    .line 390
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    .line 391
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    .line 392
    return-void
.end method

.method private ʻ([J)V
    .locals 5

    .line 435
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHE:Lorg/spongycastle/crypto/digests/SkeinEngine;

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SkeinEngine;->aHs:Lorg/spongycastle/crypto/engines/ThreefishEngine;

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHE:Lorg/spongycastle/crypto/digests/SkeinEngine;

    iget-object v1, v1, Lorg/spongycastle/crypto/digests/SkeinEngine;->aHu:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->jg()[J

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(Z[J[J)V

    .line 436
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 438
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    mul-int/lit8 v2, v4, 0x8

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ﾞ([BI)J

    move-result-wide v1

    aput-wide v1, v0, v4

    .line 436
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHE:Lorg/spongycastle/crypto/digests/SkeinEngine;

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SkeinEngine;->aHs:Lorg/spongycastle/crypto/engines/ThreefishEngine;

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    invoke-virtual {v0, v1, p1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ([J[J)I

    .line 443
    const/4 v4, 0x0

    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_1

    .line 445
    aget-wide v0, p1, v4

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    aget-wide v2, v2, v4

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    .line 443
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 447
    :cond_1
    return-void
.end method


# virtual methods
.method public reset(I)V
    .locals 1

    .line 404
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->reset()V

    .line 405
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->setType(I)V

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    .line 407
    return-void
.end method

.method public ʼ([J)V
    .locals 3

    .line 452
    iget v2, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v2

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->וּ(Z)V

    .line 458
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->ʻ([J)V

    .line 459
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;)V
    .locals 2

    .line 396
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ʳ([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    .line 397
    iget v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    .line 398
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ᐝ([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHD:[J

    .line 399
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    iget-object v1, p1, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->ˊ(Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;)V

    .line 400
    return-void
.end method

.method public ˊ([BII[J)V
    .locals 5

    .line 415
    const/4 v3, 0x0

    .line 416
    :goto_0
    if-le p3, v3, :cond_1

    .line 418
    iget v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 420
    invoke-direct {p0, p4}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->ʻ([J)V

    .line 421
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->ᵧ(Z)V

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    .line 425
    :cond_0
    sub-int v0, p3, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 426
    add-int v0, p2, v3

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHB:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    invoke-static {p1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    add-int/2addr v3, v4

    .line 428
    iget v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHC:I

    .line 429
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->aHA:Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;

    invoke-virtual {v0, v4}, Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;->ᴄ(I)V

    .line 430
    goto :goto_0

    .line 431
    :cond_1
    return-void
.end method
