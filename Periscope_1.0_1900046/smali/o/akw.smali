.class public Lo/akw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ala$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/akw$1;,
        Lo/akw$if;,
        Lo/akw$ˊ;
    }
.end annotation


# instance fields
.field private bJH:Ljava/lang/String;

.field private bJI:I

.field private bJJ:Ljava/lang/String;

.field private bJL:Ljava/lang/String;

.field private bKA:I

.field private bKB:I

.field private bKC:J

.field private bKD:J

.field private bKE:J

.field private bKF:Z

.field private bKG:Lo/aky;

.field private bKH:Lo/akw$ˊ;

.field private bKm:Lo/ald;

.field private bKq:Lo/akw$if;

.field private bKr:Lo/ala;

.field private bKs:Ljava/lang/String;

.field private bKt:Ljava/lang/String;

.field private bKu:[B

.field private bKv:J

.field private bKw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/akz;>;"
        }
    .end annotation
.end field

.field private bKx:I

.field private bKy:I

.field private bKz:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lo/akw;->bKx:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lo/akw;->bKy:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lo/akw;->bKz:I

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akw;->bKC:J

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akw;->bKD:J

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akw;->bKE:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akw;->bKF:Z

    .line 51
    new-instance v0, Lo/aky;

    invoke-direct {v0}, Lo/aky;-><init>()V

    iput-object v0, p0, Lo/akw;->bKG:Lo/aky;

    .line 60
    return-void
.end method

.method private Bj()V
    .locals 6

    .line 298
    new-instance v0, Lo/ald;

    iget-object v1, p0, Lo/akw;->bKr:Lo/ala;

    invoke-direct {v0, v1}, Lo/ald;-><init>(Lo/ala;)V

    iput-object v0, p0, Lo/akw;->bKm:Lo/ald;

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lo/akw;->bKA:I

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/akw;->bJJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/akw;->bJL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/akw;->bKs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/akw;->bJH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/akw;->bJI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    const/4 v0, 0x1

    iput v0, p0, Lo/akw;->bKz:I

    .line 305
    sget-object v0, Lo/akw$ˊ;->bKJ:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lo/akw;->bKB:I

    .line 309
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 310
    const-string v0, "app"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "tcUrl"

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "fpad"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "audioCodecs"

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "videoCodecs"

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    .line 316
    const/4 v0, 0x0

    aput-object v4, v5, v0

    .line 318
    const-string v0, "connect"

    invoke-virtual {p0, v0, v5}, Lo/akw;->ˊ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method private Bk()V
    .locals 6

    .line 354
    const/4 v0, 0x1

    new-array v4, v0, [B

    .line 355
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 356
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Lo/ala;->יִ([BII)V

    .line 358
    const/16 v0, 0x600

    new-array v0, v0, [B

    iput-object v0, p0, Lo/akw;->bKu:[B

    .line 359
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 360
    iget-object v0, p0, Lo/akw;->bKu:[B

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 361
    iget-object v0, p0, Lo/akw;->bKu:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/akw;->bKv:J

    .line 363
    sget-object v0, Lo/akw$ˊ;->bKK:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 364
    const/4 v0, 0x1

    iput v0, p0, Lo/akw;->bKz:I

    .line 365
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    iget-object v1, p0, Lo/akw;->bKu:[B

    iget-object v2, p0, Lo/akw;->bKu:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lo/ala;->יִ([BII)V

    .line 366
    return-void
.end method

.method private vG()V
    .locals 4

    .line 141
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lo/akw;->bKs:Ljava/lang/String;

    const-string v1, "rtmps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v3, 0x1

    .line 146
    :cond_0
    new-instance v0, Lo/ala;

    invoke-direct {v0}, Lo/ala;-><init>()V

    iput-object v0, p0, Lo/akw;->bKr:Lo/ala;

    .line 147
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    iget-object v1, p0, Lo/akw;->bJH:Ljava/lang/String;

    iget v2, p0, Lo/akw;->bJI:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lo/ala;->ˊ(Ljava/lang/String;IZLo/ala$if;)V

    .line 148
    return-void
.end method

.method private ˊ(Lo/alc;)Z
    .locals 9

    .line 441
    const/4 v4, 0x0

    .line 442
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 444
    iget-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    sget-object v1, Lo/akw$ˊ;->bKO:Lo/akw$ˊ;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 446
    :cond_0
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_1
    invoke-virtual {p1}, Lo/alc;->Bp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 451
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 453
    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget-object v0, v0, Lo/akz;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/akt;->ᒽ([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lo/akw;->bKD:J

    .line 454
    iget-wide v0, p0, Lo/akw;->bKE:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 457
    const/4 v0, 0x4

    new-array v5, v0, [B

    .line 458
    iget-wide v0, p0, Lo/akw;->bKE:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v5, v2}, Lo/akw;->ͺ(J[BI)V

    .line 459
    new-instance v6, Lo/alc;

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lo/alc;-><init>(III)V

    .line 460
    invoke-virtual {v6, v5}, Lo/alc;->ᓫ([B)V

    .line 461
    invoke-virtual {p0, v6}, Lo/akw;->ˏ(Lo/alc;)V

    .line 463
    const/4 v0, 0x1

    new-array v7, v0, [B

    .line 464
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-byte v0, v7, v1

    .line 465
    new-instance v8, Lo/alc;

    const/4 v0, 0x6

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v8, v0, v1, v2}, Lo/alc;-><init>(III)V

    .line 466
    invoke-virtual {v8, v7}, Lo/alc;->ᓫ([B)V

    .line 467
    invoke-virtual {p0, v8}, Lo/akw;->ˏ(Lo/alc;)V

    .line 468
    goto/16 :goto_0

    .line 470
    :cond_2
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 472
    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget-object v0, v0, Lo/akz;->buffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/akt;->ᒽ([BI)J

    move-result-wide v0

    long-to-int v5, v0

    .line 473
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    invoke-virtual {v0, v5}, Lo/ald;->ᓶ(I)V

    .line 474
    goto/16 :goto_0

    .line 475
    :cond_3
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 477
    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    iget-object v0, v0, Lo/akz;->buffer:[B

    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v1

    iget v1, v1, Lo/akz;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 478
    const/4 v0, 0x0

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    or-int v6, v0, v1

    .line 479
    const/4 v0, 0x6

    if-ne v6, v0, :cond_4

    .line 481
    const/4 v0, 0x7

    const/4 v1, 0x1

    aput-byte v0, v5, v1

    .line 482
    new-instance v7, Lo/alc;

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Lo/alc;-><init>(III)V

    .line 483
    invoke-virtual {v7, v5}, Lo/alc;->ᓫ([B)V

    .line 484
    invoke-virtual {p0, v7}, Lo/akw;->ˏ(Lo/alc;)V

    .line 486
    :cond_4
    goto/16 :goto_0

    .line 488
    :cond_5
    iget-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    sget-object v1, Lo/akw$ˊ;->bKO:Lo/akw$ˊ;

    if-ne v0, v1, :cond_6

    .line 490
    iget-object v0, p0, Lo/akw;->bKq:Lo/akw$if;

    invoke-interface {v0, p1}, Lo/akw$if;->ˊ(Lo/alc;)Z

    move-result v4

    goto/16 :goto_0

    .line 492
    :cond_6
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    .line 494
    invoke-virtual {p1}, Lo/alc;->Bu()[Ljava/lang/Object;

    move-result-object v5

    .line 495
    const/4 v0, 0x1

    aget-object v0, v5, v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 497
    const/4 v0, 0x1

    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 498
    iget v0, p0, Lo/akw;->bKA:I

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_8

    .line 500
    iget-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    sget-object v1, Lo/akw$ˊ;->bKJ:Lo/akw$ˊ;

    if-ne v0, v1, :cond_7

    .line 503
    const/16 v0, 0x12c

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/akw;->І(II)V

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lo/akw;->bKB:I

    .line 507
    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/Object;

    .line 508
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 509
    const-string v0, "createStream"

    invoke-virtual {p0, v0, v8}, Lo/akw;->ˊ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    sget-object v0, Lo/akw$ˊ;->bKN:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 511
    goto :goto_0

    .line 512
    :cond_7
    iget-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    sget-object v1, Lo/akw$ˊ;->bKN:Lo/akw$ˊ;

    if-ne v0, v1, :cond_8

    .line 514
    array-length v0, v5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    const/4 v0, 0x3

    aget-object v0, v5, v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 516
    const/4 v0, 0x3

    aget-object v0, v5, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lo/akw;->bKB:I

    .line 517
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/akw;->bKB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v0, Lo/akw$ˊ;->bKO:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 519
    iget-object v0, p0, Lo/akw;->bKq:Lo/akw$if;

    iget v1, p0, Lo/akw;->bKB:I

    invoke-interface {v0, v1}, Lo/akw$if;->Ŀ(I)V

    .line 525
    :cond_8
    :goto_0
    return v4
.end method

.method public static ͺ(J[BI)V
    .locals 5

    .line 193
    const/16 v0, 0x18

    shr-long v0, p0, v0

    const-wide/16 v2, 0x100

    rem-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 194
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    const-wide/16 v3, 0x100

    rem-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 195
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    const-wide/16 v3, 0x100

    rem-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 196
    add-int/lit8 v0, p3, 0x3

    const-wide/16 v1, 0x100

    rem-long v1, p0, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 197
    return-void
.end method

.method private І(II)V
    .locals 5

    .line 530
    const/16 v0, 0xa

    new-array v3, v0, [B

    .line 531
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v0, v3, v1

    .line 532
    const/4 v0, 0x3

    const/4 v1, 0x1

    aput-byte v0, v3, v1

    .line 533
    int-to-long v0, p2

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Lo/akw;->ͺ(J[BI)V

    .line 534
    int-to-long v0, p1

    const/4 v2, 0x6

    invoke-static {v0, v1, v3, v2}, Lo/akw;->ͺ(J[BI)V

    .line 535
    new-instance v4, Lo/alc;

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v4, v0, v1, v2}, Lo/alc;-><init>(III)V

    .line 536
    invoke-virtual {v4, v3}, Lo/alc;->ᓫ([B)V

    .line 537
    invoke-virtual {p0, v4}, Lo/akw;->ˏ(Lo/alc;)V

    .line 538
    return-void
.end method

.method private ᓸ(I)Lo/akz;
    .locals 5

    .line 323
    iget v0, p0, Lo/akw;->bKx:I

    if-le p1, v0, :cond_0

    .line 325
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    iget-object v0, p0, Lo/akw;->bKG:Lo/aky;

    invoke-virtual {v0, p1}, Lo/aky;->ᓽ(I)Lo/akz;

    move-result-object v2

    .line 329
    :goto_0
    if-lez p1, :cond_3

    .line 331
    iget-object v0, p0, Lo/akw;->bKw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/akz;

    move-object v3, v0

    .line 332
    iget v0, v3, Lo/akz;->length:I

    iget v1, p0, Lo/akw;->bKy:I

    sub-int v4, v0, v1

    .line 333
    if-le v4, p1, :cond_1

    .line 335
    move v4, p1

    .line 337
    :cond_1
    iget-object v0, v3, Lo/akz;->buffer:[B

    iget v1, p0, Lo/akw;->bKy:I

    invoke-virtual {v2, v0, v1, v4}, Lo/akz;->ᵣ([BII)V

    .line 338
    iget v0, p0, Lo/akw;->bKy:I

    add-int/2addr v0, v4

    iput v0, p0, Lo/akw;->bKy:I

    .line 339
    iget v0, p0, Lo/akw;->bKx:I

    sub-int/2addr v0, v4

    iput v0, p0, Lo/akw;->bKx:I

    .line 340
    sub-int/2addr p1, v4

    .line 342
    iget v0, p0, Lo/akw;->bKy:I

    iget v1, v3, Lo/akz;->length:I

    if-lt v0, v1, :cond_2

    .line 344
    iget-object v0, p0, Lo/akw;->bKw:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    invoke-virtual {v0, v3}, Lo/ala;->ˊ(Lo/akz;)V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lo/akw;->bKy:I

    .line 348
    :cond_2
    goto :goto_0

    .line 349
    :cond_3
    return-object v2
.end method


# virtual methods
.method public AZ()J
    .locals 2

    .line 541
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    invoke-virtual {v0}, Lo/ala;->AZ()J

    move-result-wide v0

    return-wide v0
.end method

.method public Ba()J
    .locals 2

    .line 545
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    invoke-virtual {v0}, Lo/ala;->Ba()J

    move-result-wide v0

    return-wide v0
.end method

.method public Bb()Ljava/util/Date;
    .locals 1

    .line 549
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    invoke-virtual {v0}, Lo/ala;->Bb()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public Bh()I
    .locals 1

    .line 172
    iget v0, p0, Lo/akw;->bKB:I

    return v0
.end method

.method public Bi()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lo/akw;->bKF:Z

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lo/akw;->bKt:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    monitor-enter p0

    .line 428
    :try_start_0
    iget-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    sget-object v1, Lo/akw$ˊ;->bKO:Lo/akw$ˊ;

    if-ne v0, v1, :cond_0

    .line 429
    sget-object v0, Lo/akw$ˊ;->bKP:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 430
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    .line 431
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 432
    iget v0, p0, Lo/akw;->bKB:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 433
    const-string v0, "deleteStream"

    invoke-virtual {p0, v0, v2}, Lo/akw;->ˊ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    :cond_0
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    invoke-virtual {v0}, Lo/ala;->shutdown()V

    .line 436
    iget-object v0, p0, Lo/akw;->bKq:Lo/akw$if;

    invoke-interface {v0}, Lo/akw$if;->onShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method timestamp()J
    .locals 5

    .line 187
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 188
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/akw;->bKv:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public ˊ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/akw$if;)V
    .locals 2

    .line 128
    iput-object p7, p0, Lo/akw;->bKq:Lo/akw$if;

    .line 129
    iput-object p1, p0, Lo/akw;->bKs:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lo/akw;->bJH:Ljava/lang/String;

    .line 131
    iput p3, p0, Lo/akw;->bJI:I

    .line 132
    iput-object p4, p0, Lo/akw;->bJJ:Ljava/lang/String;

    .line 133
    iput-object p5, p0, Lo/akw;->bKt:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/akw;->bJL:Ljava/lang/String;

    .line 136
    invoke-direct {p0}, Lo/akw;->vG()V

    .line 137
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/akw$if;)V
    .locals 5

    .line 97
    iput-object p2, p0, Lo/akw;->bKq:Lo/akw$if;

    .line 100
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/akw;->bKs:Ljava/lang/String;

    .line 102
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/akw;->bJH:Ljava/lang/String;

    .line 103
    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lo/akw;->bJI:I

    .line 104
    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/akw;->bJL:Ljava/lang/String;

    .line 106
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 107
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 109
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 112
    if-gtz v4, :cond_1

    .line 114
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/akw;->bJJ:Ljava/lang/String;

    .line 117
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/akw;->bKt:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lo/akw;->vG()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    goto :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 122
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    :goto_0
    return-void
.end method

.method public ˊ(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    .line 370
    new-instance v3, Lo/alc;

    iget v0, p0, Lo/akw;->bKB:I

    const/16 v1, 0x14

    const/4 v2, 0x3

    invoke-direct {v3, v1, v2, v0}, Lo/alc;-><init>(III)V

    .line 372
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    .line 373
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 374
    iget v0, p0, Lo/akw;->bKA:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/akw;->bKA:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 375
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    invoke-virtual {v3, v4}, Lo/alc;->ˎ([Ljava/lang/Object;)V

    .line 377
    invoke-virtual {p0, v3}, Lo/akw;->ˏ(Lo/alc;)V

    .line 378
    return-void
.end method

.method public ˊ(Lo/akz;)V
    .locals 2

    .line 89
    invoke-virtual {p1}, Lo/akz;->Bo()Lo/aky;

    move-result-object v0

    iget-object v1, p0, Lo/akw;->bKG:Lo/aky;

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lo/akw;->bKG:Lo/aky;

    invoke-virtual {v0, p1}, Lo/aky;->ˋ(Lo/akz;)V

    .line 93
    :cond_0
    return-void
.end method

.method public ˊ(Lo/ala;)V
    .locals 1

    .line 152
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/akw;->bKw:Ljava/util/List;

    .line 153
    invoke-direct {p0}, Lo/akw;->Bk()V

    .line 154
    return-void
.end method

.method public ˊ(Lo/ala;Lo/akz;)V
    .locals 7

    .line 202
    iget-object v0, p0, Lo/akw;->bKw:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget v0, p0, Lo/akw;->bKx:I

    iget v1, p2, Lo/akz;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/akw;->bKx:I

    .line 205
    iget-wide v0, p0, Lo/akw;->bKD:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 207
    iget v0, p0, Lo/akw;->bKx:I

    int-to-long v0, v0

    iget-wide v2, p0, Lo/akw;->bKC:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lo/akw;->bKD:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 209
    iget v0, p0, Lo/akw;->bKx:I

    int-to-long v0, v0

    iput-wide v0, p0, Lo/akw;->bKC:J

    .line 210
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 211
    iget-wide v0, p0, Lo/akw;->bKC:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lo/akw;->ͺ(J[BI)V

    .line 212
    new-instance v5, Lo/alc;

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v5, v0, v1, v2}, Lo/alc;-><init>(III)V

    .line 213
    invoke-virtual {v5, v4}, Lo/alc;->ᓫ([B)V

    .line 214
    invoke-virtual {p0, v5}, Lo/akw;->ˏ(Lo/alc;)V

    .line 220
    :cond_0
    :goto_0
    iget v0, p0, Lo/akw;->bKz:I

    invoke-direct {p0, v0}, Lo/akw;->ᓸ(I)Lo/akz;

    move-result-object v4

    .line 221
    if-nez v4, :cond_1

    .line 223
    goto/16 :goto_4

    .line 226
    :cond_1
    sget-object v0, Lo/akw$1;->bKI:[I

    iget-object v1, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    invoke-virtual {v1}, Lo/akw$ˊ;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 230
    :pswitch_0
    iget-object v0, v4, Lo/akz;->buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 231
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lo/akz;->buffer:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, v4, Lo/akz;->buffer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v1, 0x48

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo/akw;->bJI:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    .line 238
    const-string v0, "RTMP"

    const-string v1, "Proxy error? try SSL"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akw;->bKF:Z

    .line 240
    iget-object v0, p0, Lo/akw;->bKq:Lo/akw$if;

    invoke-interface {v0}, Lo/akw$if;->onClose()V

    .line 241
    sget-object v0, Lo/akw$ˊ;->bKP:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 242
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    invoke-virtual {v0}, Lo/ala;->shutdown()V

    .line 243
    return-void

    .line 246
    :cond_2
    sget-object v0, Lo/akw$ˊ;->bKL:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 247
    const/16 v0, 0x600

    iput v0, p0, Lo/akw;->bKz:I

    .line 248
    invoke-virtual {p0, v4}, Lo/akw;->ˊ(Lo/akz;)V

    .line 249
    goto/16 :goto_3

    .line 253
    :pswitch_1
    iget-object v0, v4, Lo/akz;->buffer:[B

    iget v1, v4, Lo/akz;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 254
    invoke-virtual {p0, v4}, Lo/akw;->ˊ(Lo/akz;)V

    .line 255
    invoke-virtual {p0}, Lo/akw;->timestamp()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-static {v0, v1, v5, v2}, Lo/akw;->ͺ(J[BI)V

    .line 256
    iget-object v0, p0, Lo/akw;->bKr:Lo/ala;

    array-length v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Lo/ala;->יִ([BII)V

    .line 257
    sget-object v0, Lo/akw$ˊ;->bKM:Lo/akw$ˊ;

    iput-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    .line 258
    const/16 v0, 0x600

    iput v0, p0, Lo/akw;->bKz:I

    .line 260
    goto :goto_3

    .line 264
    :pswitch_2
    iget-object v0, v4, Lo/akz;->buffer:[B

    iget v1, v4, Lo/akz;->length:I

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 265
    iget-object v0, p0, Lo/akw;->bKu:[B

    iget v1, v4, Lo/akz;->length:I

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 266
    invoke-virtual {p0, v4}, Lo/akw;->ˊ(Lo/akz;)V

    .line 267
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    const-string v0, "RTMP"

    const-string v1, "C2 ok"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_3
    const-string v0, "RTMP"

    const-string v1, "C2 mismatch"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_1
    invoke-direct {p0}, Lo/akw;->Bj()V

    .line 276
    goto :goto_3

    .line 280
    :goto_2
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    iget-object v1, v4, Lo/akz;->buffer:[B

    iget v2, v4, Lo/akz;->length:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lo/ald;->יּ([BII)Lo/alc;

    move-result-object v5

    .line 281
    invoke-virtual {p0, v4}, Lo/akw;->ˊ(Lo/akz;)V

    .line 282
    if-eqz v5, :cond_4

    .line 284
    invoke-direct {p0, v5}, Lo/akw;->ˊ(Lo/alc;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 286
    invoke-virtual {p0, v5}, Lo/akw;->ˎ(Lo/alc;)V

    .line 289
    :cond_4
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    invoke-virtual {v0}, Lo/ald;->Bf()I

    move-result v0

    iput v0, p0, Lo/akw;->bKz:I

    .line 293
    :goto_3
    goto/16 :goto_0

    .line 294
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ˊ([BJ)V
    .locals 4

    .line 402
    new-instance v3, Lo/alc;

    iget v0, p0, Lo/akw;->bKB:I

    const/16 v1, 0x9

    const/4 v2, 0x7

    invoke-direct {v3, v1, v2, v0}, Lo/alc;-><init>(III)V

    .line 403
    invoke-virtual {v3, p2, p3}, Lo/alc;->setTime(J)V

    .line 404
    invoke-virtual {v3, p1}, Lo/alc;->ᓫ([B)V

    .line 405
    invoke-virtual {p0, v3}, Lo/akw;->ˏ(Lo/alc;)V

    .line 406
    return-void
.end method

.method public ˊ([Ljava/lang/Object;J)V
    .locals 4

    .line 418
    new-instance v3, Lo/alc;

    iget v0, p0, Lo/akw;->bKB:I

    const/16 v1, 0x12

    const/4 v2, 0x5

    invoke-direct {v3, v1, v2, v0}, Lo/alc;-><init>(III)V

    .line 419
    invoke-virtual {v3, p1}, Lo/alc;->ˎ([Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v3, p2, p3}, Lo/alc;->setTime(J)V

    .line 422
    invoke-virtual {p0, v3}, Lo/akw;->ˏ(Lo/alc;)V

    .line 424
    return-void
.end method

.method public ˋ(Lo/ala;)V
    .locals 2

    .line 158
    const-string v0, "RTMP"

    const-string v1, "Close stream"

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lo/akw;->bKH:Lo/akw$ˊ;

    sget-object v1, Lo/akw$ˊ;->bKP:Lo/akw$ˊ;

    if-eq v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lo/akw;->bKq:Lo/akw$if;

    invoke-interface {v0}, Lo/akw$if;->onClose()V

    .line 163
    :cond_0
    return-void
.end method

.method public ˋ([BJ)V
    .locals 4

    .line 410
    new-instance v3, Lo/alc;

    iget v0, p0, Lo/akw;->bKB:I

    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-direct {v3, v1, v2, v0}, Lo/alc;-><init>(III)V

    .line 411
    invoke-virtual {v3, p2, p3}, Lo/alc;->setTime(J)V

    .line 412
    invoke-virtual {v3, p1}, Lo/alc;->ᓫ([B)V

    .line 413
    invoke-virtual {p0, v3}, Lo/akw;->ˏ(Lo/alc;)V

    .line 414
    return-void
.end method

.method public ˎ(Lo/alc;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lo/alc;->Br()Lo/akz;

    move-result-object v0

    invoke-virtual {v0}, Lo/akz;->Bo()Lo/aky;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    invoke-virtual {v0, p1}, Lo/ald;->ˎ(Lo/alc;)V

    .line 85
    :cond_0
    return-void
.end method

.method public ˏ(Lo/alc;)V
    .locals 3

    .line 383
    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lo/alc;->getType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    .line 385
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    invoke-virtual {v0, p1}, Lo/ald;->ᐝ(Lo/alc;)Z

    .line 388
    return-void
.end method

.method public ৲(J)V
    .locals 0

    .line 177
    iput-wide p1, p0, Lo/akw;->bKE:J

    .line 178
    return-void
.end method

.method public ᓹ(I)V
    .locals 5

    .line 392
    new-instance v3, Lo/alc;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v3, v0, v1, v2}, Lo/alc;-><init>(III)V

    .line 393
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 394
    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Lo/akw;->ͺ(J[BI)V

    .line 395
    invoke-virtual {v3, v4}, Lo/alc;->ᓫ([B)V

    .line 396
    invoke-virtual {p0, v3}, Lo/akw;->ˏ(Lo/alc;)V

    .line 397
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    invoke-virtual {v0, p1}, Lo/ald;->ᓷ(I)V

    .line 398
    return-void
.end method

.method public ᵔ(IIII)Lo/alc;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lo/alc;

    invoke-direct {v0, p1, p2, p3}, Lo/alc;-><init>(III)V

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lo/akw;->bKm:Lo/ald;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/ald;->ᵔ(IIII)Lo/alc;

    move-result-object v0

    return-object v0
.end method
