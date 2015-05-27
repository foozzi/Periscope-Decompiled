.class public Lo/sn$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field private static final Ye:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 397
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lo/sn$if;->Ye:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static ˈ([BII)[B
    .locals 11

    .line 537
    if-nez p0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    if-gez p1, :cond_1

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have negative offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_1
    if-gez p2, :cond_2

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have length offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_2
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_3

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have offset of %d and length of %d with array of length %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_3
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    add-int v5, v0, v1

    .line 554
    new-array v6, v5, [B

    .line 556
    const/4 v7, 0x0

    .line 557
    const/4 v8, 0x0

    .line 558
    add-int/lit8 v9, p2, -0x2

    .line 559
    :goto_1
    if-ge v7, v9, :cond_5

    .line 560
    add-int v0, v7, p1

    const/4 v1, 0x3

    invoke-static {p0, v0, v1, v6, v8}, Lo/sn$if;->ˊ([BII[BI)[B

    .line 559
    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_1

    .line 562
    :cond_5
    if-ge v7, p2, :cond_6

    .line 563
    add-int v0, v7, p1

    sub-int v1, p2, v7

    invoke-static {p0, v0, v1, v6, v8}, Lo/sn$if;->ˊ([BII[BI)[B

    .line 564
    add-int/lit8 v8, v8, 0x4

    .line 567
    :cond_6
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-gt v8, v0, :cond_7

    .line 568
    new-array v10, v8, [B

    .line 569
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v0, v10, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    return-object v10

    .line 572
    :cond_7
    return-object v6
.end method

.method private static ˊ([BII[BI)[B
    .locals 5

    .line 439
    sget-object v3, Lo/sn$if;->Ye:[B

    .line 441
    if-lez p2, :cond_0

    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    or-int/2addr v0, v1

    const/4 v1, 0x2

    if-le p2, v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    or-int v4, v0, v1

    .line 445
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_3

    .line 447
    :pswitch_0
    ushr-int/lit8 v0, v4, 0x12

    aget-byte v0, v3, v0

    aput-byte v0, p3, p4

    .line 448
    add-int/lit8 v0, p4, 0x1

    ushr-int/lit8 v1, v4, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p3, v0

    .line 449
    add-int/lit8 v0, p4, 0x2

    ushr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p3, v0

    .line 450
    add-int/lit8 v0, p4, 0x3

    and-int/lit8 v1, v4, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p3, v0

    .line 451
    return-object p3

    .line 454
    :pswitch_1
    ushr-int/lit8 v0, v4, 0x12

    aget-byte v0, v3, v0

    aput-byte v0, p3, p4

    .line 455
    add-int/lit8 v0, p4, 0x1

    ushr-int/lit8 v1, v4, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p3, v0

    .line 456
    add-int/lit8 v0, p4, 0x2

    ushr-int/lit8 v1, v4, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p3, v0

    .line 457
    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x3d

    aput-byte v1, p3, v0

    .line 458
    return-object p3

    .line 461
    :pswitch_2
    ushr-int/lit8 v0, v4, 0x12

    aget-byte v0, v3, v0

    aput-byte v0, p3, p4

    .line 462
    add-int/lit8 v0, p4, 0x1

    ushr-int/lit8 v1, v4, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p3, v0

    .line 463
    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x3d

    aput-byte v1, p3, v0

    .line 464
    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x3d

    aput-byte v1, p3, v0

    .line 465
    return-object p3

    .line 468
    :goto_3
    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
