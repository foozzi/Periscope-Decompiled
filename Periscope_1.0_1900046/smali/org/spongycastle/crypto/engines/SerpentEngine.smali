.class public Lorg/spongycastle/crypto/engines/SerpentEngine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private aIY:Z

.field private aLF:[I

.field private aLN:I

.field private aLO:I

.field private aLP:I

.field private aLQ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private jI()V
    .locals 7

    .line 758
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v3

    .line 759
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v4

    .line 760
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v0, v3

    xor-int v5, v0, v4

    .line 761
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v4

    shl-int/lit8 v1, v3, 0x3

    xor-int v6, v0, v1

    .line 763
    const/4 v0, 0x1

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 764
    const/4 v0, 0x7

    invoke-direct {p0, v6, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 765
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v0, v3

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 766
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v4

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 767
    return-void
.end method

.method private jJ()V
    .locals 7

    .line 774
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    shl-int/lit8 v1, v1, 0x7

    xor-int v3, v0, v1

    .line 775
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int v4, v0, v1

    .line 776
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v5

    .line 777
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v6

    .line 778
    xor-int v0, v5, v3

    shl-int/lit8 v1, v4, 0x3

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 779
    xor-int v0, v6, v4

    xor-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 780
    const/4 v0, 0x3

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 781
    const/16 v0, 0xd

    invoke-direct {p0, v4, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateRight(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 782
    return-void
.end method

.method private rotateLeft(II)I
    .locals 2

    .line 250
    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2

    .line 257
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private ʹ(IIII)V
    .locals 11

    .line 661
    xor-int/lit8 v2, p3, -0x1

    .line 662
    and-int v3, p2, v2

    .line 663
    xor-int v4, p4, v3

    .line 664
    and-int v5, p1, v4

    .line 665
    xor-int v6, p2, v2

    .line 666
    xor-int v0, v5, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 667
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    or-int v7, p2, v0

    .line 668
    and-int v8, p1, v7

    .line 669
    xor-int v0, v4, v8

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 670
    or-int v9, p1, p4

    .line 671
    xor-int v10, v2, v7

    .line 672
    xor-int v0, v9, v10

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 673
    and-int v0, p2, v9

    xor-int v1, p1, p3

    or-int/2addr v1, v5

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 674
    return-void
.end method

.method private ʿ(IIII)V
    .locals 7

    .line 454
    xor-int v2, p1, p4

    .line 455
    xor-int v3, p3, v2

    .line 456
    xor-int v4, p2, v3

    .line 457
    and-int v0, p1, p4

    xor-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 458
    and-int v0, p2, v2

    xor-int v5, p1, v0

    .line 459
    or-int v0, p3, v5

    xor-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 460
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int v1, v3, v5

    and-int v6, v0, v1

    .line 461
    xor-int/lit8 v0, v3, -0x1

    xor-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 462
    xor-int/lit8 v0, v5, -0x1

    xor-int/2addr v0, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 463
    return-void
.end method

.method private ˈ(IIII)V
    .locals 7

    .line 470
    xor-int/lit8 v2, p1, -0x1

    .line 471
    xor-int v3, p1, p2

    .line 472
    or-int v0, v2, v3

    xor-int v4, p4, v0

    .line 473
    xor-int v5, p3, v4

    .line 474
    xor-int v0, v3, v5

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 475
    and-int v0, p4, v3

    xor-int v6, v2, v0

    .line 476
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    and-int/2addr v0, v6

    xor-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 477
    and-int v0, p1, v4

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    or-int/2addr v1, v5

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 478
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int v1, v5, v6

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 479
    return-void
.end method

.method private ˉ(IIII)V
    .locals 6

    .line 486
    xor-int/lit8 v0, p1, -0x1

    xor-int v1, p2, v0

    .line 487
    or-int v0, p1, v1

    xor-int v2, p3, v0

    .line 488
    xor-int v0, p4, v2

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 489
    or-int v0, p4, v1

    xor-int v3, p2, v0

    .line 490
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int v4, v1, v0

    .line 491
    and-int v0, v2, v3

    xor-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 492
    xor-int v5, v2, v3

    .line 493
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v5

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 494
    and-int v0, v4, v5

    xor-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 495
    return-void
.end method

.method private ˋ([BI[BI)V
    .locals 5

    .line 293
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 294
    add-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 295
    add-int/lit8 v0, p2, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 296
    add-int/lit8 v0, p2, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 298
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 299
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 300
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x8

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0xb

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 301
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0xf

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 302
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 303
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x17

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 304
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x18

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x1b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 305
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x1c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x1f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 306
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x20

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x23

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x24

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x27

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 308
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x28

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x2b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 309
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x2c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x2f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 310
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x30

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x33

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 311
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x34

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x37

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 312
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x38

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x3b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 313
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x3c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x3f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 314
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x40

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x43

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 315
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x44

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x47

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 316
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x4b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 317
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x4c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x4f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x50

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x53

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x54

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x57

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 320
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x58

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x5b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 321
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x5c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x5f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x60

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x63

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 323
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x64

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x67

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x68

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x6b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 325
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x6c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x6f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 326
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x70

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x73

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 327
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x74

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x77

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 328
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x78

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x7b

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jI()V

    .line 329
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x7c

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v2, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v4, 0x7f

    aget v3, v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 332
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 333
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 334
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 335
    return-void
.end method

.method private ˌ(IIII)V
    .locals 9

    .line 502
    xor-int v2, p2, p4

    .line 503
    and-int v0, p2, v2

    xor-int v3, p1, v0

    .line 504
    xor-int v4, v2, v3

    .line 505
    xor-int v0, p3, v4

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 506
    and-int v0, v2, v3

    xor-int v5, p2, v0

    .line 507
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    or-int v6, v0, v5

    .line 508
    xor-int v0, v3, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 509
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/lit8 v7, v0, -0x1

    .line 510
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int v8, v0, v5

    .line 511
    xor-int v0, v7, v8

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 512
    or-int v0, v7, v8

    xor-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 513
    return-void
.end method

.method private ˍ(IIII)V
    .locals 9

    .line 520
    xor-int/lit8 v3, p1, -0x1

    .line 521
    xor-int v4, p2, p4

    .line 522
    and-int v5, p3, v3

    .line 523
    xor-int v0, v4, v5

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 524
    xor-int v6, p3, v3

    .line 525
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int v7, p3, v0

    .line 526
    and-int v8, p2, v7

    .line 527
    xor-int v0, v6, v8

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 528
    or-int v0, p4, v8

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    or-int/2addr v1, v6

    and-int/2addr v0, v1

    xor-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 529
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v4

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    or-int v2, p4, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 530
    return-void
.end method

.method private ˎ([BI[BI)V
    .locals 4

    .line 351
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x83

    aget v0, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 352
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x82

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 353
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x81

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 354
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v1, 0x80

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 356
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᴵ(IIII)V

    .line 357
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x7c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x7d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x7e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x7f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 358
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->י(IIII)V

    .line 359
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x78

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x79

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x7a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x7b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 360
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʹ(IIII)V

    .line 361
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x74

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x75

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x76

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x77

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 362
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﹳ(IIII)V

    .line 363
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x70

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x71

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x72

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x73

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 364
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ(IIII)V

    .line 365
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x6c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x6d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x6e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x6f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 366
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˑ(IIII)V

    .line 367
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x68

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x69

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x6a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x6b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 368
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˌ(IIII)V

    .line 369
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x64

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x65

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x66

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x67

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 370
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˈ(IIII)V

    .line 371
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x60

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x61

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x62

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x63

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 372
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᴵ(IIII)V

    .line 373
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x5c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x5d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x5e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x5f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 374
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->י(IIII)V

    .line 375
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x58

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x59

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x5a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x5b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 376
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʹ(IIII)V

    .line 377
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x54

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x55

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x56

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x57

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 378
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﹳ(IIII)V

    .line 379
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x50

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x51

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x52

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x53

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 380
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ(IIII)V

    .line 381
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x4c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x4d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x4e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x4f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 382
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˑ(IIII)V

    .line 383
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x48

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x49

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x4a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x4b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 384
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˌ(IIII)V

    .line 385
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x44

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x45

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x46

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x47

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 386
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˈ(IIII)V

    .line 387
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x40

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x41

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x42

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x43

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 388
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᴵ(IIII)V

    .line 389
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x3c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x3d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x3e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x3f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 390
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->י(IIII)V

    .line 391
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x38

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x39

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x3a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x3b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 392
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʹ(IIII)V

    .line 393
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x34

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x35

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x36

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x37

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 394
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﹳ(IIII)V

    .line 395
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x30

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x31

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x32

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x33

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 396
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ(IIII)V

    .line 397
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x2c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x2d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x2e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x2f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 398
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˑ(IIII)V

    .line 399
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x28

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x29

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x2a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 400
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˌ(IIII)V

    .line 401
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x24

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x25

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x26

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x27

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 402
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˈ(IIII)V

    .line 403
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x20

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x21

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x22

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x23

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 404
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᴵ(IIII)V

    .line 405
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x1c

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x1d

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x1e

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x1f

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 406
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->י(IIII)V

    .line 407
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x19

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x1a

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x1b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 408
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʹ(IIII)V

    .line 409
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x14

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x15

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x16

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x17

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 410
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﹳ(IIII)V

    .line 411
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x10

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x11

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x12

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x13

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 412
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ(IIII)V

    .line 413
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0xe

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 414
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˑ(IIII)V

    .line 415
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0xa

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 416
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˌ(IIII)V

    .line 417
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 418
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->jJ()V

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v3, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˈ(IIII)V

    .line 420
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 421
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x4

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 422
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0x8

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 423
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-direct {p0, v0, p3, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐝ(I[BI)V

    .line 424
    return-void
.end method

.method private ˑ(IIII)V
    .locals 12

    .line 537
    xor-int v2, p2, p4

    .line 538
    xor-int/lit8 v3, v2, -0x1

    .line 539
    xor-int v4, p1, p3

    .line 540
    xor-int v5, p3, v2

    .line 541
    and-int v6, p2, v5

    .line 542
    xor-int v0, v4, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 543
    or-int v7, p1, v3

    .line 544
    xor-int v8, p4, v7

    .line 545
    or-int v9, v4, v8

    .line 546
    xor-int v0, v2, v9

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 547
    xor-int/lit8 v10, v5, -0x1

    .line 548
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    or-int v11, v0, v1

    .line 549
    xor-int v0, v10, v11

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 550
    and-int v0, p4, v10

    xor-int v1, v4, v11

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 551
    return-void
.end method

.method private ՙ(IIII)V
    .locals 11

    .line 681
    xor-int/lit8 v2, p1, -0x1

    .line 682
    xor-int v3, p1, p4

    .line 683
    xor-int v4, p2, v3

    .line 684
    or-int v5, v2, v3

    .line 685
    xor-int v6, p3, v5

    .line 686
    xor-int v0, p2, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 687
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    or-int v7, v3, v0

    .line 688
    xor-int v8, p4, v7

    .line 689
    and-int v9, v6, v8

    .line 690
    xor-int v0, v4, v9

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 691
    xor-int v10, v6, v8

    .line 692
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    xor-int/2addr v0, v10

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 693
    xor-int/lit8 v0, v6, -0x1

    and-int v1, v4, v10

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 694
    return-void
.end method

.method private י(IIII)V
    .locals 11

    .line 701
    xor-int/lit8 v2, p1, -0x1

    .line 702
    xor-int v3, p1, p2

    .line 703
    xor-int v4, p3, v3

    .line 704
    or-int v5, p3, v2

    .line 705
    xor-int v6, p4, v5

    .line 706
    xor-int v0, v4, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 707
    and-int v7, v4, v6

    .line 708
    xor-int v8, v3, v7

    .line 709
    or-int v9, p2, v8

    .line 710
    xor-int v0, v6, v9

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 711
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    or-int v10, p2, v0

    .line 712
    xor-int v0, v8, v10

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 713
    and-int v0, p4, v2

    xor-int v1, v4, v10

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 714
    return-void
.end method

.method private ـ(IIII)V
    .locals 12

    .line 558
    xor-int v2, p1, p2

    .line 559
    and-int v3, p1, p3

    .line 560
    or-int v4, p1, p4

    .line 561
    xor-int v5, p3, p4

    .line 562
    and-int v6, v2, v4

    .line 563
    or-int v7, v3, v6

    .line 564
    xor-int v0, v5, v7

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 565
    xor-int v8, p2, v4

    .line 566
    xor-int v9, v7, v8

    .line 567
    and-int v10, v5, v9

    .line 568
    xor-int v0, v2, v10

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 569
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    and-int v11, v0, v1

    .line 570
    xor-int v0, v9, v11

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 571
    or-int v0, p2, p4

    xor-int v1, v5, v11

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 572
    return-void
.end method

.method private ٴ(IIII)V
    .locals 13

    .line 721
    xor-int v3, p2, p3

    .line 722
    and-int v4, p3, v3

    .line 723
    xor-int v5, p4, v4

    .line 724
    xor-int v6, p1, v5

    .line 725
    or-int v7, p4, v3

    .line 726
    and-int v8, v6, v7

    .line 727
    xor-int v0, p2, v8

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 728
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    or-int v9, v5, v0

    .line 729
    and-int v10, p1, v6

    .line 730
    xor-int v0, v3, v10

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 731
    xor-int v11, v6, v9

    .line 732
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    and-int v12, v0, v11

    .line 733
    xor-int v0, v5, v12

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 734
    xor-int/lit8 v0, v11, -0x1

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 735
    return-void
.end method

.method private ᐝ(I[BI)V
    .locals 2

    .line 273
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 274
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 275
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 276
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 277
    return-void
.end method

.method private ᐧ([BI)I
    .locals 3

    .line 264
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private ᐧ(IIII)V
    .locals 12

    .line 579
    or-int v2, p1, p2

    .line 580
    xor-int v3, p2, p3

    .line 581
    and-int v4, p2, v3

    .line 582
    xor-int v5, p1, v4

    .line 583
    xor-int v6, p3, v5

    .line 584
    or-int v7, p4, v5

    .line 585
    xor-int v0, v3, v7

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 586
    or-int v8, v3, v7

    .line 587
    xor-int v9, p4, v8

    .line 588
    xor-int v0, v6, v9

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 589
    xor-int v10, v2, v9

    .line 590
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    and-int v11, v0, v10

    .line 591
    xor-int v0, v5, v11

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 592
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int/2addr v1, v10

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 593
    return-void
.end method

.method private ᐨ(IIII)V
    .locals 11

    .line 600
    xor-int v2, p1, p4

    .line 601
    and-int v3, p4, v2

    .line 602
    xor-int v4, p3, v3

    .line 603
    or-int v5, p2, v4

    .line 604
    xor-int v0, v2, v5

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 605
    xor-int/lit8 v6, p2, -0x1

    .line 606
    or-int v7, v2, v6

    .line 607
    xor-int v0, v4, v7

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 608
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    and-int v8, p1, v0

    .line 609
    xor-int v9, v2, v6

    .line 610
    and-int v10, v5, v9

    .line 611
    xor-int v0, v8, v10

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 612
    xor-int v0, p1, v4

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    and-int/2addr v1, v9

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 613
    return-void
.end method

.method private ᴵ(IIII)V
    .locals 8

    .line 742
    and-int v0, p1, p2

    or-int v3, p3, v0

    .line 743
    or-int v0, p1, p2

    and-int v4, p4, v0

    .line 744
    xor-int v0, v3, v4

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 745
    xor-int/lit8 v5, p4, -0x1

    .line 746
    xor-int v6, p2, v4

    .line 747
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v5

    or-int v7, v6, v0

    .line 748
    xor-int v0, p1, v7

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 749
    xor-int v0, p3, v6

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    or-int/2addr v1, p4

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 750
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v0, v3

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    iget v2, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    and-int/2addr v2, p1

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 751
    return-void
.end method

.method private ᵣ([B)[I
    .locals 10

    .line 127
    const/16 v0, 0x10

    new-array v4, v0, [I

    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v6, 0x0

    .line 131
    array-length v0, p1

    add-int/lit8 v5, v0, -0x4

    :goto_0
    if-lez v5, :cond_0

    .line 133
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v1

    aput v1, v4, v0

    .line 131
    add-int/lit8 v5, v5, -0x4

    goto :goto_0

    .line 136
    :cond_0
    if-nez v5, :cond_1

    .line 138
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐧ([BI)I

    move-result v1

    aput v1, v4, v0

    .line 139
    const/16 v0, 0x8

    if-ge v6, v0, :cond_2

    .line 141
    const/4 v0, 0x1

    aput v0, v4, v6

    goto :goto_1

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be a multiple of 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    :goto_1
    const/16 v7, 0x84

    .line 153
    new-array v8, v7, [I

    .line 158
    const/16 v9, 0x8

    :goto_2
    const/16 v0, 0x10

    if-ge v9, v0, :cond_3

    .line 160
    add-int/lit8 v0, v9, -0x8

    aget v0, v4, v0

    add-int/lit8 v1, v9, -0x5

    aget v1, v4, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v9, -0x3

    aget v1, v4, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v9, -0x1

    aget v1, v4, v1

    xor-int/2addr v0, v1

    const v1, -0x61c88647

    xor-int/2addr v0, v1

    add-int/lit8 v1, v9, -0x8

    xor-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    aput v0, v4, v9

    .line 158
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 163
    :cond_3
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v4, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    const/16 v9, 0x8

    :goto_3
    if-ge v9, v7, :cond_4

    .line 170
    add-int/lit8 v0, v9, -0x8

    aget v0, v8, v0

    add-int/lit8 v1, v9, -0x5

    aget v1, v8, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v9, -0x3

    aget v1, v8, v1

    xor-int/2addr v0, v1

    add-int/lit8 v1, v9, -0x1

    aget v1, v8, v1

    xor-int/2addr v0, v1

    const v1, -0x61c88647

    xor-int/2addr v0, v1

    xor-int/2addr v0, v9

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/SerpentEngine;->rotateLeft(II)I

    move-result v0

    aput v0, v8, v9

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 176
    :cond_4
    const/4 v0, 0x0

    aget v0, v8, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    const/4 v2, 0x2

    aget v2, v8, v2

    const/4 v3, 0x3

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    .line 177
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/4 v1, 0x0

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/4 v1, 0x1

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/4 v1, 0x2

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/4 v1, 0x3

    aput v0, v8, v1

    .line 178
    const/4 v0, 0x4

    aget v0, v8, v0

    const/4 v1, 0x5

    aget v1, v8, v1

    const/4 v2, 0x6

    aget v2, v8, v2

    const/4 v3, 0x7

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    .line 179
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/4 v1, 0x4

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/4 v1, 0x5

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/4 v1, 0x6

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/4 v1, 0x7

    aput v0, v8, v1

    .line 180
    const/16 v0, 0x8

    aget v0, v8, v0

    const/16 v1, 0x9

    aget v1, v8, v1

    const/16 v2, 0xa

    aget v2, v8, v2

    const/16 v3, 0xb

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    .line 181
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x8

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x9

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0xa

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0xb

    aput v0, v8, v1

    .line 182
    const/16 v0, 0xc

    aget v0, v8, v0

    const/16 v1, 0xd

    aget v1, v8, v1

    const/16 v2, 0xe

    aget v2, v8, v2

    const/16 v3, 0xf

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    .line 183
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0xc

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0xd

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0xe

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0xf

    aput v0, v8, v1

    .line 184
    const/16 v0, 0x10

    aget v0, v8, v0

    const/16 v1, 0x11

    aget v1, v8, v1

    const/16 v2, 0x12

    aget v2, v8, v2

    const/16 v3, 0x13

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    .line 185
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x10

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x11

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x12

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x13

    aput v0, v8, v1

    .line 186
    const/16 v0, 0x14

    aget v0, v8, v0

    const/16 v1, 0x15

    aget v1, v8, v1

    const/16 v2, 0x16

    aget v2, v8, v2

    const/16 v3, 0x17

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    .line 187
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x14

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x15

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x16

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x17

    aput v0, v8, v1

    .line 188
    const/16 v0, 0x18

    aget v0, v8, v0

    const/16 v1, 0x19

    aget v1, v8, v1

    const/16 v2, 0x1a

    aget v2, v8, v2

    const/16 v3, 0x1b

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    .line 189
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x18

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x19

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x1a

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x1b

    aput v0, v8, v1

    .line 190
    const/16 v0, 0x1c

    aget v0, v8, v0

    const/16 v1, 0x1d

    aget v1, v8, v1

    const/16 v2, 0x1e

    aget v2, v8, v2

    const/16 v3, 0x1f

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    .line 191
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x1c

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x1d

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x1e

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x1f

    aput v0, v8, v1

    .line 192
    const/16 v0, 0x20

    aget v0, v8, v0

    const/16 v1, 0x21

    aget v1, v8, v1

    const/16 v2, 0x22

    aget v2, v8, v2

    const/16 v3, 0x23

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    .line 193
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x20

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x21

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x22

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x23

    aput v0, v8, v1

    .line 194
    const/16 v0, 0x24

    aget v0, v8, v0

    const/16 v1, 0x25

    aget v1, v8, v1

    const/16 v2, 0x26

    aget v2, v8, v2

    const/16 v3, 0x27

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    .line 195
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x24

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x25

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x26

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x27

    aput v0, v8, v1

    .line 196
    const/16 v0, 0x28

    aget v0, v8, v0

    const/16 v1, 0x29

    aget v1, v8, v1

    const/16 v2, 0x2a

    aget v2, v8, v2

    const/16 v3, 0x2b

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    .line 197
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x28

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x29

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x2a

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x2b

    aput v0, v8, v1

    .line 198
    const/16 v0, 0x2c

    aget v0, v8, v0

    const/16 v1, 0x2d

    aget v1, v8, v1

    const/16 v2, 0x2e

    aget v2, v8, v2

    const/16 v3, 0x2f

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    .line 199
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x2c

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x2d

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x2e

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x2f

    aput v0, v8, v1

    .line 200
    const/16 v0, 0x30

    aget v0, v8, v0

    const/16 v1, 0x31

    aget v1, v8, v1

    const/16 v2, 0x32

    aget v2, v8, v2

    const/16 v3, 0x33

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    .line 201
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x30

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x31

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x32

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x33

    aput v0, v8, v1

    .line 202
    const/16 v0, 0x34

    aget v0, v8, v0

    const/16 v1, 0x35

    aget v1, v8, v1

    const/16 v2, 0x36

    aget v2, v8, v2

    const/16 v3, 0x37

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    .line 203
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x34

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x35

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x36

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x37

    aput v0, v8, v1

    .line 204
    const/16 v0, 0x38

    aget v0, v8, v0

    const/16 v1, 0x39

    aget v1, v8, v1

    const/16 v2, 0x3a

    aget v2, v8, v2

    const/16 v3, 0x3b

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    .line 205
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x38

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x39

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x3a

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x3b

    aput v0, v8, v1

    .line 206
    const/16 v0, 0x3c

    aget v0, v8, v0

    const/16 v1, 0x3d

    aget v1, v8, v1

    const/16 v2, 0x3e

    aget v2, v8, v2

    const/16 v3, 0x3f

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    .line 207
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x3c

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x3d

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x3e

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x3f

    aput v0, v8, v1

    .line 208
    const/16 v0, 0x40

    aget v0, v8, v0

    const/16 v1, 0x41

    aget v1, v8, v1

    const/16 v2, 0x42

    aget v2, v8, v2

    const/16 v3, 0x43

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    .line 209
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x40

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x41

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x42

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x43

    aput v0, v8, v1

    .line 210
    const/16 v0, 0x44

    aget v0, v8, v0

    const/16 v1, 0x45

    aget v1, v8, v1

    const/16 v2, 0x46

    aget v2, v8, v2

    const/16 v3, 0x47

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    .line 211
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x44

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x45

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x46

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x47

    aput v0, v8, v1

    .line 212
    const/16 v0, 0x48

    aget v0, v8, v0

    const/16 v1, 0x49

    aget v1, v8, v1

    const/16 v2, 0x4a

    aget v2, v8, v2

    const/16 v3, 0x4b

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    .line 213
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x48

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x49

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x4a

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x4b

    aput v0, v8, v1

    .line 214
    const/16 v0, 0x4c

    aget v0, v8, v0

    const/16 v1, 0x4d

    aget v1, v8, v1

    const/16 v2, 0x4e

    aget v2, v8, v2

    const/16 v3, 0x4f

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    .line 215
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x4c

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x4d

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x4e

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x4f

    aput v0, v8, v1

    .line 216
    const/16 v0, 0x50

    aget v0, v8, v0

    const/16 v1, 0x51

    aget v1, v8, v1

    const/16 v2, 0x52

    aget v2, v8, v2

    const/16 v3, 0x53

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    .line 217
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x50

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x51

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x52

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x53

    aput v0, v8, v1

    .line 218
    const/16 v0, 0x54

    aget v0, v8, v0

    const/16 v1, 0x55

    aget v1, v8, v1

    const/16 v2, 0x56

    aget v2, v8, v2

    const/16 v3, 0x57

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    .line 219
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x54

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x55

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x56

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x57

    aput v0, v8, v1

    .line 220
    const/16 v0, 0x58

    aget v0, v8, v0

    const/16 v1, 0x59

    aget v1, v8, v1

    const/16 v2, 0x5a

    aget v2, v8, v2

    const/16 v3, 0x5b

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    .line 221
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x58

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x59

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x5a

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x5b

    aput v0, v8, v1

    .line 222
    const/16 v0, 0x5c

    aget v0, v8, v0

    const/16 v1, 0x5d

    aget v1, v8, v1

    const/16 v2, 0x5e

    aget v2, v8, v2

    const/16 v3, 0x5f

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    .line 223
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x5c

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x5d

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x5e

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x5f

    aput v0, v8, v1

    .line 224
    const/16 v0, 0x60

    aget v0, v8, v0

    const/16 v1, 0x61

    aget v1, v8, v1

    const/16 v2, 0x62

    aget v2, v8, v2

    const/16 v3, 0x63

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    .line 225
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x60

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x61

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x62

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x63

    aput v0, v8, v1

    .line 226
    const/16 v0, 0x64

    aget v0, v8, v0

    const/16 v1, 0x65

    aget v1, v8, v1

    const/16 v2, 0x66

    aget v2, v8, v2

    const/16 v3, 0x67

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˍ(IIII)V

    .line 227
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x64

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x65

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x66

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x67

    aput v0, v8, v1

    .line 228
    const/16 v0, 0x68

    aget v0, v8, v0

    const/16 v1, 0x69

    aget v1, v8, v1

    const/16 v2, 0x6a

    aget v2, v8, v2

    const/16 v3, 0x6b

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˉ(IIII)V

    .line 229
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x68

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x69

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x6a

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x6b

    aput v0, v8, v1

    .line 230
    const/16 v0, 0x6c

    aget v0, v8, v0

    const/16 v1, 0x6d

    aget v1, v8, v1

    const/16 v2, 0x6e

    aget v2, v8, v2

    const/16 v3, 0x6f

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ʿ(IIII)V

    .line 231
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x6c

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x6d

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x6e

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x6f

    aput v0, v8, v1

    .line 232
    const/16 v0, 0x70

    aget v0, v8, v0

    const/16 v1, 0x71

    aget v1, v8, v1

    const/16 v2, 0x72

    aget v2, v8, v2

    const/16 v3, 0x73

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ٴ(IIII)V

    .line 233
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x70

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x71

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x72

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x73

    aput v0, v8, v1

    .line 234
    const/16 v0, 0x74

    aget v0, v8, v0

    const/16 v1, 0x75

    aget v1, v8, v1

    const/16 v2, 0x76

    aget v2, v8, v2

    const/16 v3, 0x77

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ՙ(IIII)V

    .line 235
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x74

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x75

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x76

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x77

    aput v0, v8, v1

    .line 236
    const/16 v0, 0x78

    aget v0, v8, v0

    const/16 v1, 0x79

    aget v1, v8, v1

    const/16 v2, 0x7a

    aget v2, v8, v2

    const/16 v3, 0x7b

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ﾞ(IIII)V

    .line 237
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x78

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x79

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x7a

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x7b

    aput v0, v8, v1

    .line 238
    const/16 v0, 0x7c

    aget v0, v8, v0

    const/16 v1, 0x7d

    aget v1, v8, v1

    const/16 v2, 0x7e

    aget v2, v8, v2

    const/16 v3, 0x7f

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᐨ(IIII)V

    .line 239
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x7c

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x7d

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x7e

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x7f

    aput v0, v8, v1

    .line 240
    const/16 v0, 0x80

    aget v0, v8, v0

    const/16 v1, 0x81

    aget v1, v8, v1

    const/16 v2, 0x82

    aget v2, v8, v2

    const/16 v3, 0x83

    aget v3, v8, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ـ(IIII)V

    .line 241
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    const/16 v1, 0x80

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    const/16 v1, 0x81

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    const/16 v1, 0x82

    aput v0, v8, v1

    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    const/16 v1, 0x83

    aput v0, v8, v1

    .line 243
    return-object v8
.end method

.method private ﹳ(IIII)V
    .locals 11

    .line 620
    or-int v2, p3, p4

    .line 621
    and-int v3, p1, v2

    .line 622
    xor-int v4, p2, v3

    .line 623
    and-int v5, p1, v4

    .line 624
    xor-int v6, p3, v5

    .line 625
    xor-int v0, p4, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 626
    xor-int/lit8 v7, p1, -0x1

    .line 627
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    and-int v8, v6, v0

    .line 628
    xor-int v0, v4, v8

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 629
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    or-int v9, v0, v7

    .line 630
    xor-int v10, p4, v9

    .line 631
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    xor-int/2addr v0, v10

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 632
    and-int v0, v4, v10

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    xor-int/2addr v1, v7

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 633
    return-void
.end method

.method private ﾞ(IIII)V
    .locals 12

    .line 640
    xor-int/lit8 v2, p1, -0x1

    .line 641
    xor-int v3, p1, p2

    .line 642
    xor-int v4, p1, p4

    .line 643
    xor-int v5, p3, v2

    .line 644
    or-int v6, v3, v4

    .line 645
    xor-int v0, v5, v6

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    .line 646
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    and-int v7, p4, v0

    .line 647
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    xor-int v8, v3, v0

    .line 648
    xor-int v0, v7, v8

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    .line 649
    iget v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLN:I

    or-int v9, v2, v0

    .line 650
    or-int v10, v3, v7

    .line 651
    xor-int v11, v4, v9

    .line 652
    xor-int v0, v10, v11

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLP:I

    .line 653
    xor-int v0, p2, v7

    iget v1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLO:I

    and-int/2addr v1, v11

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLQ:I

    .line 654
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 61
    const/16 v0, 0x10

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "Serpent"

    return-object v0
.end method

.method public reset()V
    .locals 0

    .line 112
    return-void
.end method

.method public final ˊ([BI[BI)I
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Serpent not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 95
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aIY:Z

    if-eqz v0, :cond_3

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˋ([BI[BI)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ˎ([BI[BI)V

    .line 107
    :goto_0
    const/16 v0, 0x10

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 44
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 46
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aIY:Z

    .line 47
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/SerpentEngine;->ᵣ([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngine;->aLF:[I

    .line 48
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Serpent init - "

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
.end method
