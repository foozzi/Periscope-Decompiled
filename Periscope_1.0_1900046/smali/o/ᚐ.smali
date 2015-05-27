.class Lo/ᚐ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final pe:Lo/ŧ;


# instance fields
.field private final dV:Landroid/content/Context;

.field private pf:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private pg:[Ljava/lang/Thread;

.field private ph:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<[Ljava/lang/StackTraceElement;>;"
        }
    .end annotation
.end field

.field private pi:[Ljava/lang/StackTraceElement;

.field private final pj:Lo/ŧ;

.field private final pk:Lo/ŧ;

.field private final pl:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, "0"

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    sput-object v0, Lo/ᚐ;->pe:Lo/ŧ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lo/ᚐ;->pl:I

    .line 48
    iput-object p1, p0, Lo/ᚐ;->dV:Landroid/content/Context;

    .line 49
    invoke-static {p3}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    iput-object v0, p0, Lo/ᚐ;->pj:Lo/ŧ;

    .line 50
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo/ᚐ;->pk:Lo/ŧ;

    .line 52
    return-void
.end method

.method private ˊ(FIZIJJ)I
    .locals 2

    .line 558
    const/4 v1, 0x0

    .line 560
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lo/ɤ;->ˋ(IF)I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    .line 561
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lo/ɤ;->ˣ(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 562
    const/4 v0, 0x3

    invoke-static {v0, p3}, Lo/ɤ;->ـ(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 563
    const/4 v0, 0x4

    invoke-static {v0, p4}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 564
    const/4 v0, 0x5

    invoke-static {v0, p5, p6}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 565
    const/4 v0, 0x6

    invoke-static {v0, p7, p8}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 567
    return v1
.end method

.method private ˊ(ILo/ŧ;Lo/ŧ;IJJZLjava/util/Map;ILo/ŧ;Lo/ŧ;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILo/\u0167;Lo/\u0167;IJJZLjava/util/Map<Lo/qr$if;Ljava/lang/String;>;ILo/\u0167;Lo/\u0167;)I"
        }
    .end annotation

    .line 428
    const/4 v2, 0x0

    .line 430
    const/4 v0, 0x1

    invoke-static {v0, p2}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 431
    const/4 v0, 0x3

    invoke-static {v0, p1}, Lo/ɤ;->ː(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 432
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0, p3}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    .line 433
    const/4 v0, 0x5

    invoke-static {v0, p4}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 434
    const/4 v0, 0x6

    invoke-static {v0, p5, p6}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v2, v0

    .line 435
    const/4 v0, 0x7

    invoke-static {v0, p7, p8}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v2, v0

    .line 436
    const/16 v0, 0xa

    invoke-static {v0, p9}, Lo/ɤ;->ـ(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 437
    if-eqz p10, :cond_1

    .line 438
    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v4, v0

    .line 439
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/qr$if;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lo/ᚐ;->ˊ(Lo/qr$if;Ljava/lang/String;)I

    move-result v5

    .line 440
    const/16 v0, 0xb

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v5}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v5

    add-int/2addr v2, v0

    .line 442
    goto :goto_1

    .line 444
    :cond_1
    const/16 v0, 0xc

    move/from16 v1, p11

    invoke-static {v0, v1}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 445
    if-nez p12, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const/16 v0, 0xd

    move-object/from16 v1, p12

    invoke-static {v0, v1}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    .line 446
    if-nez p13, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/16 v0, 0xe

    move-object/from16 v1, p13

    invoke-static {v0, v1}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    .line 448
    return v2
.end method

.method private ˊ(Ljava/lang/StackTraceElement;Z)I
    .locals 4

    .line 631
    const/4 v3, 0x0

    .line 633
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    goto :goto_0

    .line 637
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 640
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 643
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 648
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_2

    .line 650
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 652
    :cond_2
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 654
    return v3
.end method

.method private ˊ(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)I"
        }
    .end annotation

    .line 492
    const/4 v2, 0x0

    .line 494
    invoke-direct {p0, p1, p2}, Lo/ᚐ;->ˋ(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v3

    .line 495
    const/4 v0, 0x1

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v3}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/lit8 v2, v0, 0x0

    .line 498
    if-eqz p4, :cond_0

    .line 499
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v5, v0

    .line 500
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lo/ᚐ;->ᐝ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 502
    const/4 v0, 0x2

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v6}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    add-int/2addr v2, v0

    .line 504
    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Lo/ᚐ;->pf:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lo/ᚐ;->pf:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    invoke-static {v1, v0}, Lo/ɤ;->ـ(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 513
    :cond_2
    const/4 v0, 0x4

    invoke-static {v0, p3}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 515
    return v2
.end method

.method private ˊ(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;JLjava/util/Map;FIZIJJLo/ŧ;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;JLjava/util/Map<Ljava/lang/String;Ljava/lang/String;>;FIZIJJLo/\u0167;)I"
        }
    .end annotation

    .line 469
    const/4 v9, 0x0

    .line 471
    const/4 v0, 0x1

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/lit8 v9, v0, 0x0

    .line 472
    invoke-static/range {p3 .. p3}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v9, v0

    .line 473
    move/from16 v0, p10

    move-object/from16 v1, p6

    invoke-direct {p0, p1, p2, v0, v1}, Lo/ᚐ;->ˊ(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I

    move-result v10

    .line 474
    const/4 v0, 0x3

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v10}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v10

    add-int/2addr v9, v0

    .line 476
    move-object v0, p0

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p10

    move-wide/from16 v5, p11

    move-wide/from16 v7, p13

    invoke-direct/range {v0 .. v8}, Lo/ᚐ;->ˊ(FIZIJJ)I

    move-result v11

    .line 478
    const/4 v0, 0x5

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v11}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v11

    add-int/2addr v9, v0

    .line 481
    if-eqz p15, :cond_0

    .line 482
    move-object/from16 v0, p15

    invoke-direct {p0, v0}, Lo/ᚐ;->ˏ(Lo/ŧ;)I

    move-result v12

    .line 483
    const/4 v0, 0x6

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v12}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v12

    add-int/2addr v9, v0

    .line 487
    :cond_0
    return v9
.end method

.method private ˊ(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 8

    .line 659
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v2

    .line 660
    const/4 v0, 0x2

    invoke-static {v0, p3}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 662
    move-object v3, p2

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 663
    invoke-direct {p0, v6, p4}, Lo/ᚐ;->ˊ(Ljava/lang/StackTraceElement;Z)I

    move-result v7

    .line 664
    const/4 v0, 0x3

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v7}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/2addr v2, v0

    .line 662
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 668
    :cond_0
    return v2
.end method

.method private ˊ(Ljava/lang/Throwable;I)I
    .locals 9

    .line 578
    const/4 v2, 0x0

    .line 580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 584
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 585
    if-eqz v3, :cond_0

    .line 586
    invoke-static {v3}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 589
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 590
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lo/ᚐ;->ˊ(Ljava/lang/StackTraceElement;Z)I

    move-result v8

    .line 591
    const/4 v0, 0x4

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v8}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    add-int/2addr v2, v0

    .line 589
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 598
    if-eqz v4, :cond_4

    .line 599
    iget v0, p0, Lo/ᚐ;->pl:I

    if-ge p2, v0, :cond_2

    .line 600
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v4, v0}, Lo/ᚐ;->ˊ(Ljava/lang/Throwable;I)I

    move-result v5

    .line 602
    const/4 v0, 0x6

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v5}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v5

    add-int/2addr v2, v0

    .line 604
    goto :goto_2

    .line 607
    :cond_2
    const/4 v5, 0x0

    .line 608
    :goto_1
    if-eqz v4, :cond_3

    .line 609
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 610
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 613
    :cond_3
    const/4 v0, 0x7

    invoke-static {v0, v5}, Lo/ɤ;->ʲ(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 617
    :cond_4
    :goto_2
    return v2
.end method

.method private ˊ(Lo/qr$if;Ljava/lang/String;)I
    .locals 3

    .line 417
    iget v0, p1, Lo/qr$if;->Wm:I

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ː(II)I

    move-result v2

    .line 418
    invoke-static {p2}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 420
    return v2
.end method

.method private ˊ(Lo/ŧ;Lo/ŧ;Lo/ŧ;Lo/ŧ;I)I
    .locals 4

    .line 383
    const/4 v2, 0x0

    .line 385
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 386
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 387
    const/4 v0, 0x3

    invoke-static {v0, p3}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 388
    invoke-direct {p0}, Lo/ᚐ;->ᚐ()I

    move-result v3

    .line 389
    const/4 v0, 0x5

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v3}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 391
    const/4 v0, 0x6

    invoke-static {v0, p4}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 392
    const/16 v0, 0xa

    invoke-static {v0, p5}, Lo/ɤ;->ː(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 394
    return v2
.end method

.method private ˊ(Lo/ŧ;Lo/ŧ;Z)I
    .locals 3

    .line 406
    const/4 v2, 0x0

    .line 408
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lo/ɤ;->ː(II)I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 409
    const/4 v0, 0x2

    invoke-static {v0, p1}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 410
    const/4 v0, 0x3

    invoke-static {v0, p2}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 411
    const/4 v0, 0x4

    invoke-static {v0, p3}, Lo/ɤ;->ـ(IZ)I

    move-result v0

    add-int/2addr v2, v0

    .line 413
    return v2
.end method

.method private ˊ(Lo/ɤ;FIZIJJ)V
    .locals 9

    .line 361
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 362
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lo/ᚐ;->ˊ(FIZIJJ)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 364
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lo/ɤ;->ˊ(IF)V

    .line 365
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Lo/ɤ;->ı(II)V

    .line 366
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p4}, Lo/ɤ;->ˑ(IZ)V

    .line 367
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p5}, Lo/ɤ;->ᵗ(II)V

    .line 368
    const/4 v0, 0x5

    move-wide v1, p6

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 369
    const/4 v0, 0x6

    move-wide/from16 v1, p8

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 370
    return-void
.end method

.method private ˊ(Lo/ɤ;ILjava/lang/StackTraceElement;Z)V
    .locals 3

    .line 327
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lo/ɤ;->ו(II)V

    .line 328
    invoke-direct {p0, p3, p4}, Lo/ᚐ;->ˊ(Ljava/lang/StackTraceElement;Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 330
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    goto :goto_0

    .line 335
    :cond_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 338
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 341
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 347
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_2

    .line 348
    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0, v1}, Lo/ɤ;->ˊ(IJ)V

    .line 354
    :cond_2
    if-eqz p4, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ᵗ(II)V

    .line 355
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .line 231
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 232
    invoke-direct {p0, p2, p3}, Lo/ᚐ;->ˋ(Ljava/lang/Thread;Ljava/lang/Throwable;)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 234
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    iget-object v3, p0, Lo/ᚐ;->pi:[Ljava/lang/StackTraceElement;

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 238
    iget-object v0, p0, Lo/ᚐ;->pg:[Ljava/lang/Thread;

    array-length v6, v0

    .line 239
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    .line 240
    iget-object v0, p0, Lo/ᚐ;->pg:[Ljava/lang/Thread;

    aget-object v8, v0, v7

    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    iget-object v3, p0, Lo/ᚐ;->ph:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, p3, v0, v1}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/Throwable;II)V

    .line 246
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 247
    invoke-direct {p0}, Lo/ᚐ;->ᴏ()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 248
    sget-object v0, Lo/ᚐ;->pe:Lo/ŧ;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 249
    sget-object v0, Lo/ᚐ;->pe:Lo/ŧ;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 250
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 252
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 253
    invoke-direct {p0}, Lo/ᚐ;->ᴈ()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 254
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 255
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lo/ɤ;->ˊ(IJ)V

    .line 256
    iget-object v0, p0, Lo/ᚐ;->pj:Lo/ŧ;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 257
    iget-object v0, p0, Lo/ᚐ;->pk:Lo/ŧ;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lo/ᚐ;->pk:Lo/ŧ;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 260
    :cond_1
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0264;Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 210
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 211
    invoke-direct {p0, p2, p3, p4, p5}, Lo/ᚐ;->ˊ(Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 215
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0, p1, p5}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/util/Map;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lo/ᚐ;->pf:Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lo/ᚐ;->pf:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˑ(IZ)V

    .line 226
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p4}, Lo/ɤ;->ᵗ(II)V

    .line 227
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 7

    .line 314
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 315
    invoke-direct {p0, p2, p3, p4, p5}, Lo/ᚐ;->ˊ(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v2

    .line 316
    invoke-virtual {p1, v2}, Lo/ɤ;->ﹰ(I)V

    .line 317
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 318
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p4}, Lo/ɤ;->ᵗ(II)V

    .line 320
    move-object v3, p3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 321
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, v6, p5}, Lo/ᚐ;->ˊ(Lo/ɤ;ILjava/lang/StackTraceElement;Z)V

    .line 320
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/lang/Throwable;II)V
    .locals 7

    .line 280
    const/4 v0, 0x2

    invoke-virtual {p1, p4, v0}, Lo/ɤ;->ו(II)V

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lo/ᚐ;->ˊ(Ljava/lang/Throwable;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 283
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 284
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    .line 285
    if-eqz v2, :cond_0

    .line 286
    invoke-static {v2}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 289
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 290
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v6, v1}, Lo/ᚐ;->ˊ(Lo/ɤ;ILjava/lang/StackTraceElement;Z)V

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 293
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 294
    if-eqz v3, :cond_4

    .line 295
    iget v0, p0, Lo/ᚐ;->pl:I

    if-ge p3, v0, :cond_2

    .line 296
    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x6

    invoke-direct {p0, p1, v3, v0, v1}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/Throwable;II)V

    goto :goto_2

    .line 300
    :cond_2
    const/4 v4, 0x0

    .line 301
    :goto_1
    if-eqz v3, :cond_3

    .line 302
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    :cond_3
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v4}, Lo/ɤ;->ᵗ(II)V

    .line 308
    :cond_4
    :goto_2
    return-void
.end method

.method private ˊ(Lo/ɤ;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0264;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 266
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 267
    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lo/ᚐ;->ᐝ(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 271
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 272
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 273
    if-nez v4, :cond_0

    const-string v0, ""

    goto :goto_1

    :cond_0
    move-object v0, v4

    :goto_1
    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 274
    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method

.method private ˊ(Lo/ɤ;Lo/ŧ;)V
    .locals 2

    .line 373
    if-eqz p2, :cond_0

    .line 374
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 375
    invoke-direct {p0, p2}, Lo/ᚐ;->ˏ(Lo/ŧ;)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 376
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 378
    :cond_0
    return-void
.end method

.method private ˋ(Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 9

    .line 519
    const/4 v3, 0x0

    .line 521
    iget-object v0, p0, Lo/ᚐ;->pi:[Ljava/lang/StackTraceElement;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lo/ᚐ;->ˊ(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v4

    .line 522
    const/4 v0, 0x1

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v4}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    add-int/lit8 v3, v0, 0x0

    .line 525
    iget-object v0, p0, Lo/ᚐ;->pg:[Ljava/lang/Thread;

    array-length v5, v0

    .line 526
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 527
    iget-object v0, p0, Lo/ᚐ;->pg:[Ljava/lang/Thread;

    aget-object v7, v0, v6

    .line 528
    iget-object v0, p0, Lo/ᚐ;->ph:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v7, v0, v1, v2}, Lo/ᚐ;->ˊ(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v4

    .line 529
    const/4 v0, 0x1

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v4}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 526
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 533
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lo/ᚐ;->ˊ(Ljava/lang/Throwable;I)I

    move-result v6

    .line 534
    const/4 v0, 0x2

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v6}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    add-int/2addr v3, v0

    .line 537
    invoke-direct {p0}, Lo/ᚐ;->ᴏ()I

    move-result v7

    .line 538
    const/4 v0, 0x3

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v7}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/2addr v3, v0

    .line 541
    invoke-direct {p0}, Lo/ᚐ;->ᴈ()I

    move-result v8

    .line 542
    const/4 v0, 0x3

    invoke-static {v0}, Lo/ɤ;->ﯾ(I)I

    move-result v0

    invoke-static {v8}, Lo/ɤ;->ﺗ(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    add-int/2addr v3, v0

    .line 545
    return v3
.end method

.method private ˏ(Lo/ŧ;)I
    .locals 1

    .line 574
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    return v0
.end method

.method private י(Ljava/lang/String;)Lo/ŧ;
    .locals 1

    .line 672
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private ᐝ(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 549
    invoke-static {p1}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v2

    .line 550
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v2, v0

    .line 552
    return v2
.end method

.method private ᚐ()I
    .locals 3

    .line 398
    const/4 v2, 0x0

    .line 399
    new-instance v0, Lo/qf;

    invoke-direct {v0}, Lo/qf;-><init>()V

    iget-object v1, p0, Lo/ᚐ;->dV:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/qf;->ᐠ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/lit8 v2, v0, 0x0

    .line 402
    return v2
.end method

.method private ᴈ()I
    .locals 4

    .line 452
    const/4 v3, 0x0

    .line 454
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 455
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 456
    iget-object v0, p0, Lo/ᚐ;->pj:Lo/ŧ;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 457
    iget-object v0, p0, Lo/ᚐ;->pk:Lo/ŧ;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lo/ᚐ;->pk:Lo/ŧ;

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 461
    :cond_0
    return v3
.end method

.method private ᴏ()I
    .locals 4

    .line 621
    const/4 v3, 0x0

    .line 623
    sget-object v0, Lo/ᚐ;->pe:Lo/ŧ;

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/lit8 v3, v0, 0x0

    .line 624
    sget-object v0, Lo/ᚐ;->pe:Lo/ŧ;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v3, v0

    .line 625
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lo/ɤ;->ˋ(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 627
    return v3
.end method


# virtual methods
.method public ˊ(Lo/ɤ;JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Thread;FIZIJJLandroid/app/ActivityManager$RunningAppProcessInfo;Ljava/util/List;[Ljava/lang/StackTraceElement;Lo/ᔂ;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0264;JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Thread;FIZIJJLandroid/app/ActivityManager$RunningAppProcessInfo;Ljava/util/List<[Ljava/lang/StackTraceElement;>;[Ljava/lang/StackTraceElement;Lo/\u1502;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;)V"
        }
    .end annotation

    .line 180
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᚐ;->pf:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 181
    move-object/from16 v0, p17

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᚐ;->ph:Ljava/util/List;

    .line 182
    move-object/from16 v0, p18

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᚐ;->pi:[Ljava/lang/StackTraceElement;

    .line 183
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᚐ;->pg:[Ljava/lang/Thread;

    .line 185
    invoke-virtual/range {p19 .. p19}, Lo/ᔂ;->ᓗ()Lo/ŧ;

    move-result-object v16

    .line 187
    if-nez v16, :cond_0

    .line 188
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "No log data to include with this event."

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-virtual/range {p19 .. p19}, Lo/ᔂ;->ᓚ()V

    .line 194
    move-object/from16 v0, p1

    const/16 v1, 0xa

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ו(II)V

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-wide/from16 v4, p2

    move-object/from16 v6, p20

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    move-wide/from16 v13, p14

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lo/ᚐ;->ˊ(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;JLjava/util/Map;FIZIJJLo/ŧ;)I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 198
    move-object/from16 v0, p1

    const/4 v1, 0x1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lo/ɤ;->ˊ(IJ)V

    .line 199
    invoke-static/range {p6 .. p6}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p11

    move-object/from16 v5, p20

    invoke-direct/range {v0 .. v5}, Lo/ᚐ;->ˊ(Lo/ɤ;Ljava/lang/Thread;Ljava/lang/Throwable;ILjava/util/Map;)V

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p11

    move-wide/from16 v6, p12

    move-wide/from16 v8, p14

    invoke-direct/range {v0 .. v9}, Lo/ᚐ;->ˊ(Lo/ɤ;FIZIJJ)V

    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lo/ᚐ;->ˊ(Lo/ɤ;Lo/ŧ;)V

    .line 205
    return-void
.end method

.method public ˊ(Lo/ɤ;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u0264;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map<Lo/qr$if;Ljava/lang/String;>;ILjava/lang/String;Ljava/lang/String;)V"
        }
    .end annotation

    .line 105
    invoke-static/range {p2 .. p2}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v14

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lo/ᚐ;->י(Ljava/lang/String;)Lo/ŧ;

    move-result-object v15

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-direct {v0, v1}, Lo/ᚐ;->י(Ljava/lang/String;)Lo/ŧ;

    move-result-object v16

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p13

    invoke-direct {v0, v1}, Lo/ᚐ;->י(Ljava/lang/String;)Lo/ŧ;

    move-result-object v17

    .line 110
    move-object/from16 v0, p1

    const/16 v1, 0x9

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ו(II)V

    .line 112
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lo/ᚐ;->ˊ(ILo/ŧ;Lo/ŧ;IJJZLjava/util/Map;ILo/ŧ;Lo/ŧ;)I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 116
    move-object/from16 v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v14}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 118
    move-object/from16 v0, p1

    const/4 v1, 0x3

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ﾟ(II)V

    .line 119
    move-object/from16 v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v15}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 120
    move-object/from16 v0, p1

    const/4 v1, 0x5

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ᵗ(II)V

    .line 121
    move-object/from16 v0, p1

    const/4 v1, 0x6

    move-wide/from16 v2, p6

    invoke-virtual {v0, v1, v2, v3}, Lo/ɤ;->ˊ(IJ)V

    .line 122
    move-object/from16 v0, p1

    const/4 v1, 0x7

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Lo/ɤ;->ˊ(IJ)V

    .line 123
    move-object/from16 v0, p1

    const/16 v1, 0xa

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ˑ(IZ)V

    .line 125
    invoke-interface/range {p11 .. p11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object/from16 v19, v0

    .line 126
    move-object/from16 v0, p1

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ו(II)V

    .line 127
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/qr$if;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Lo/ᚐ;->ˊ(Lo/qr$if;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 129
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/qr$if;

    iget v0, v0, Lo/qr$if;->Wm:I

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lo/ɤ;->ﾟ(II)V

    .line 130
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    move-object/from16 v0, p1

    const/16 v1, 0xc

    move/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ᵗ(II)V

    .line 134
    if-eqz v17, :cond_1

    .line 135
    move-object/from16 v0, p1

    const/16 v1, 0xd

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 137
    :cond_1
    if-eqz v16, :cond_2

    .line 138
    move-object/from16 v0, p1

    const/16 v1, 0xe

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 140
    :cond_2
    return-void
.end method

.method public ˊ(Lo/ɤ;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 56
    invoke-static {p3}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 57
    invoke-static {p2}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p1, v0, p4, p5}, Lo/ɤ;->ˊ(IJ)V

    .line 59
    return-void
.end method

.method public ˊ(Lo/ɤ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 145
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v2

    .line 146
    invoke-direct {p0, p3}, Lo/ᚐ;->י(Ljava/lang/String;)Lo/ŧ;

    move-result-object v3

    .line 147
    invoke-direct {p0, p4}, Lo/ᚐ;->י(Ljava/lang/String;)Lo/ŧ;

    move-result-object v4

    .line 149
    const/4 v5, 0x0

    .line 150
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/lit8 v5, v0, 0x0

    .line 151
    if-eqz p3, :cond_1

    .line 152
    const/4 v0, 0x2

    invoke-static {v0, v3}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v5, v0

    .line 154
    :cond_1
    if-eqz p4, :cond_2

    .line 155
    const/4 v0, 0x3

    invoke-static {v0, v4}, Lo/ɤ;->ˋ(ILo/ŧ;)I

    move-result v0

    add-int/2addr v5, v0

    .line 158
    :cond_2
    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 159
    invoke-virtual {p1, v5}, Lo/ɤ;->ﹰ(I)V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 161
    if-eqz p3, :cond_3

    .line 162
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 164
    :cond_3
    if-eqz p4, :cond_4

    .line 165
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 167
    :cond_4
    return-void
.end method

.method public ˊ(Lo/ɤ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 64
    invoke-static {p2}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v6

    .line 65
    invoke-static {p3}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v7

    .line 66
    invoke-static {p4}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v8

    .line 67
    invoke-static {p5}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v9

    .line 70
    const/4 v0, 0x7

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 71
    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lo/ᚐ;->ˊ(Lo/ŧ;Lo/ŧ;Lo/ŧ;Lo/ŧ;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v6}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 74
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v7}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 75
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v8}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 78
    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 79
    invoke-direct {p0}, Lo/ᚐ;->ᚐ()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 80
    new-instance v0, Lo/qf;

    invoke-direct {v0}, Lo/qf;-><init>()V

    iget-object v1, p0, Lo/ᚐ;->dV:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/qf;->ᐠ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lo/ɤ;->ˊ(ILjava/lang/String;)V

    .line 83
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v9}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 84
    const/16 v0, 0xa

    move/from16 v1, p6

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ﾟ(II)V

    .line 85
    return-void
.end method

.method public ˊ(Lo/ɤ;Z)V
    .locals 4

    .line 88
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v2

    .line 89
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v0}, Lo/ŧ;->ˈ(Ljava/lang/String;)Lo/ŧ;

    move-result-object v3

    .line 91
    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ו(II)V

    .line 92
    invoke-direct {p0, v2, v3, p2}, Lo/ᚐ;->ˊ(Lo/ŧ;Lo/ŧ;Z)I

    move-result v0

    invoke-virtual {p1, v0}, Lo/ɤ;->ﹰ(I)V

    .line 93
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lo/ɤ;->ﾟ(II)V

    .line 94
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 95
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lo/ɤ;->ˊ(ILo/ŧ;)V

    .line 96
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Lo/ɤ;->ˑ(IZ)V

    .line 97
    return-void
.end method
