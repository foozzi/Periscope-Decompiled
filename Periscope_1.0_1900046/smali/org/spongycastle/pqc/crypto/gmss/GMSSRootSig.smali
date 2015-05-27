.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aDx:[B

.field private aQu:I

.field private aaN:I

.field private avM:I

.field private beF:Lorg/spongycastle/crypto/Digest;

.field private beG:I

.field private beH:I

.field private beM:I

.field private beN:[B

.field private beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private bfA:[B

.field private bfB:I

.field private bfC:I

.field private bfD:I

.field private bfE:J

.field private bfF:J

.field private bfG:I

.field private bfz:[B

.field private height:I

.field private w:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;II)V
    .locals 5

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beF:Lorg/spongycastle/crypto/Digest;

    .line 162
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 164
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    .line 165
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    .line 166
    iput p3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    .line 168
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    .line 170
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    shl-int/lit8 v4, v0, 0x3

    .line 171
    int-to-double v0, v4

    int-to-double v2, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfB:I

    .line 172
    return-void
.end method


# virtual methods
.method public qL()[[B
    .locals 5

    .line 583
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    const/4 v1, 0x5

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 584
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beN:[B

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 585
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->aDx:[B

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 586
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfz:[B

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 587
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfA:[B

    const/4 v1, 0x3

    aput-object v0, v4, v1

    .line 588
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->rc()[B

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v4, v1

    .line 590
    return-object v4
.end method

.method public qM()[I
    .locals 3

    .line 600
    const/16 v0, 0x9

    new-array v2, v0, [I

    .line 601
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->aaN:I

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 602
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfC:I

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 603
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfD:I

    const/4 v1, 0x2

    aput v0, v2, v1

    .line 604
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->aQu:I

    const/4 v1, 0x3

    aput v0, v2, v1

    .line 605
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beM:I

    const/4 v1, 0x4

    aput v0, v2, v1

    .line 606
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beH:I

    const/4 v1, 0x5

    aput v0, v2, v1

    .line 607
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v1, 0x6

    aput v0, v2, v1

    .line 608
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/4 v1, 0x7

    aput v0, v2, v1

    .line 609
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfG:I

    const/16 v1, 0x8

    aput v0, v2, v1

    .line 610
    return-object v2
.end method

.method public rc()[B
    .locals 5

    .line 619
    const/16 v0, 0x10

    new-array v4, v0, [B

    .line 621
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 622
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, v4, v1

    .line 623
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, v4, v1

    .line 624
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v4, v1

    .line 625
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, v4, v1

    .line 626
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, v4, v1

    .line 627
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x6

    aput-byte v0, v4, v1

    .line 628
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x7

    aput-byte v0, v4, v1

    .line 630
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x8

    aput-byte v0, v4, v1

    .line 631
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x9

    aput-byte v0, v4, v1

    .line 632
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xa

    aput-byte v0, v4, v1

    .line 633
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const/16 v2, 0x18

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xb

    aput-byte v0, v4, v1

    .line 634
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xc

    aput-byte v0, v4, v1

    .line 635
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xd

    aput-byte v0, v4, v1

    .line 636
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xe

    aput-byte v0, v4, v1

    .line 637
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xf

    aput-byte v0, v4, v1

    .line 639
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfF:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 650
    const/16 v0, 0x9

    new-array v5, v0, [I

    .line 651
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->qM()[I

    move-result-object v5

    .line 652
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    const/4 v1, 0x5

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    .line 653
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->qL()[[B

    move-result-object v6

    .line 654
    const/4 v7, 0x0

    :goto_0
    const/16 v0, 0x9

    if-ge v7, v0, :cond_0

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, v5, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 654
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 658
    :cond_0
    const/4 v7, 0x0

    :goto_1
    const/4 v0, 0x5

    if-ge v7, v0, :cond_1

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    aget-object v2, v6, v7

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 658
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 663
    :cond_1
    return-object v4
.end method

.method public ĩ(I)I
    .locals 3

    .line 565
    const/4 v1, 0x1

    .line 566
    const/4 v2, 0x2

    .line 567
    :goto_0
    if-ge v2, p1, :cond_0

    .line 569
    shl-int/lit8 v2, v2, 0x1

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return v1
.end method

.method public ᵎ([B[B)V
    .locals 17

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfz:[B

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, p2

    array-length v1, v1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beF:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfz:[B

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beF:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfz:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    new-array v5, v0, [B

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfz:[B

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    const/4 v6, 0x0

    .line 194
    const/4 v7, 0x0

    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfB:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ĩ(I)I

    move-result v8

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v1, 0x8

    rem-int v0, v1, v0

    if-nez v0, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v1, 0x8

    div-int v9, v1, v0

    .line 202
    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    if-ge v10, v0, :cond_1

    .line 205
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_0

    .line 207
    aget-byte v0, v5, v10

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    and-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 208
    aget-byte v0, v5, v10

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v10

    .line 205
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 202
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 212
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfB:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v1

    sub-int/2addr v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfG:I

    .line 213
    move-object/from16 v0, p0

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfG:I

    .line 215
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v8, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    and-int/2addr v0, v6

    add-int/2addr v7, v0

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v6, v0

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v10, v0

    goto :goto_2

    .line 220
    :cond_2
    goto/16 :goto_d

    .line 221
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_a

    .line 224
    const/4 v11, 0x0

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int v12, v0, v1

    .line 228
    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_6

    .line 230
    const-wide/16 v9, 0x0

    .line 231
    const/4 v14, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v14, v0, :cond_4

    .line 233
    aget-byte v0, v5, v11

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v14, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v9, v0

    .line 234
    add-int/lit8 v11, v11, 0x1

    .line 231
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 237
    :cond_4
    const/4 v14, 0x0

    :goto_5
    const/16 v0, 0x8

    if-ge v14, v0, :cond_5

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    int-to-long v0, v0

    and-long/2addr v0, v9

    long-to-int v0, v0

    add-int/2addr v7, v0

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v9, v0

    .line 237
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 228
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 244
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int v12, v0, v1

    .line 245
    const-wide/16 v9, 0x0

    .line 246
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_7

    .line 248
    aget-byte v0, v5, v11

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v13, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v9, v0

    .line 249
    add-int/lit8 v11, v11, 0x1

    .line 246
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 251
    :cond_7
    shl-int/lit8 v12, v12, 0x3

    .line 253
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_8

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    int-to-long v0, v0

    and-long/2addr v0, v9

    long-to-int v0, v0

    add-int/2addr v7, v0

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v9, v0

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v13, v0

    goto :goto_7

    .line 259
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfB:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v1

    sub-int/2addr v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfG:I

    .line 260
    move-object/from16 v0, p0

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfG:I

    .line 262
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v8, :cond_9

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    and-int/2addr v0, v6

    add-int/2addr v7, v0

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v6, v0

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v13, v0

    goto :goto_8

    .line 267
    :cond_9
    goto/16 :goto_d

    .line 268
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v1, 0x39

    if-ge v0, v1, :cond_f

    .line 271
    const/4 v11, 0x0

    .line 276
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    shl-int/lit8 v0, v0, 0x3

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v0, v1

    if-gt v11, v0, :cond_c

    .line 278
    ushr-int/lit8 v12, v11, 0x3

    .line 279
    rem-int/lit8 v14, v11, 0x8

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v11, v0

    .line 281
    add-int/lit8 v0, v11, 0x7

    ushr-int/lit8 v13, v0, 0x3

    .line 282
    const-wide/16 v9, 0x0

    .line 283
    const/4 v15, 0x0

    .line 284
    move/from16 v16, v12

    :goto_a
    move/from16 v0, v16

    if-ge v0, v13, :cond_b

    .line 286
    aget-byte v0, v5, v16

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v15, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v9, v0

    .line 287
    add-int/lit8 v15, v15, 0x1

    .line 284
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 289
    :cond_b
    ushr-long/2addr v9, v14

    .line 291
    int-to-long v0, v7

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    int-to-long v2, v2

    and-long/2addr v2, v9

    add-long/2addr v0, v2

    long-to-int v7, v0

    goto :goto_9

    .line 295
    :cond_c
    ushr-int/lit8 v12, v11, 0x3

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    if-ge v12, v0, :cond_e

    .line 298
    rem-int/lit8 v14, v11, 0x8

    .line 299
    const-wide/16 v9, 0x0

    .line 300
    const/4 v15, 0x0

    .line 301
    move/from16 v16, v12

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    move/from16 v1, v16

    if-ge v1, v0, :cond_d

    .line 303
    aget-byte v0, v5, v16

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v15, 0x3

    shl-int/2addr v0, v1

    int-to-long v0, v0

    xor-long/2addr v9, v0

    .line 304
    add-int/lit8 v15, v15, 0x1

    .line 301
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 307
    :cond_d
    ushr-long/2addr v9, v14

    .line 309
    int-to-long v0, v7

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    int-to-long v2, v2

    and-long/2addr v2, v9

    add-long/2addr v0, v2

    long-to-int v7, v0

    .line 312
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfB:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v0, v1

    sub-int/2addr v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfG:I

    .line 313
    move-object/from16 v0, p0

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfG:I

    .line 315
    const/16 v16, 0x0

    :goto_c
    move/from16 v0, v16

    if-ge v0, v8, :cond_f

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->avM:I

    and-int/2addr v0, v6

    add-int/2addr v7, v0

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v6, v0

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int v16, v16, v0

    goto :goto_c

    .line 323
    :cond_f
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfB:I

    int-to-double v1, v8

    move-object/from16 v3, p0

    iget v3, v3, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beH:I

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beH:I

    add-int/2addr v0, v7

    int-to-double v0, v0

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beM:I

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beH:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfA:[B

    .line 334
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->aaN:I

    .line 335
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfC:I

    .line 336
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfD:I

    .line 337
    const-wide/16 v0, 0x0

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->bfE:J

    .line 338
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->aQu:I

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beN:[B

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    new-array v0, v0, [B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->aDx:[B

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->aDx:[B

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->beG:I

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    return-void
.end method
