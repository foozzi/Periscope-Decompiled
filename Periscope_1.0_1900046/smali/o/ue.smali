.class public final Lo/ue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lo/uh;
.implements Lo/ui;


# static fields
.field private static final ZF:[B


# instance fields
.field ZG:Lo/ux;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lo/ue;->ZF:[B

    return-void

    :array_0
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 686
    :try_start_0
    iget-wide v0, p0, Lo/ue;->size:J

    invoke-virtual {p0, v0, v1}, Lo/ue;->ᵋ(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    goto :goto_0

    .line 687
    :catch_0
    move-exception v2

    .line 688
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 690
    :goto_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lo/ue;->eg()Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 1154
    return-void
.end method

.method public dS()Lo/ue;
    .locals 0

    .line 63
    return-object p0
.end method

.method public dT()Ljava/io/OutputStream;
    .locals 1

    .line 67
    new-instance v0, Lo/uf;

    invoke-direct {v0, p0}, Lo/uf;-><init>(Lo/ue;)V

    return-object v0
.end method

.method public dU()Lo/ue;
    .locals 0

    .line 89
    return-object p0
.end method

.method public dV()Lo/uh;
    .locals 0

    .line 93
    return-object p0
.end method

.method public dW()Z
    .locals 4

    .line 97
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dX()Ljava/io/InputStream;
    .locals 1

    .line 109
    new-instance v0, Lo/ug;

    invoke-direct {v0, p0}, Lo/ug;-><init>(Lo/ue;)V

    return-object v0
.end method

.method public dY()J
    .locals 5

    .line 259
    iget-wide v2, p0, Lo/ue;->size:J

    .line 260
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 263
    :cond_0
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v4, v0, Lo/ux;->aab:Lo/ux;

    .line 264
    iget v0, v4, Lo/ux;->limit:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_1

    iget-boolean v0, v4, Lo/ux;->ZZ:Z

    if-eqz v0, :cond_1

    .line 265
    iget v0, v4, Lo/ux;->limit:I

    iget v1, v4, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 268
    :cond_1
    return-wide v2
.end method

.method public dZ()S
    .locals 1

    .line 398
    invoke-virtual {p0}, Lo/ue;->readShort()S

    move-result v0

    invoke-static {v0}, Lo/vd;->ˊ(S)S

    move-result v0

    return v0
.end method

.method public ea()I
    .locals 1

    .line 402
    invoke-virtual {p0}, Lo/ue;->readInt()I

    move-result v0

    invoke-static {v0}, Lo/vd;->ɼ(I)I

    move-result v0

    return v0
.end method

.method public eb()J
    .locals 20

    .line 410
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    const-wide/16 v4, 0x0

    .line 414
    const/4 v6, 0x0

    .line 415
    const/4 v7, 0x0

    .line 416
    const/4 v8, 0x0

    .line 418
    const-wide v9, -0xcccccccccccccccL

    .line 419
    const-wide/16 v11, -0x7

    .line 422
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lo/ue;->ZG:Lo/ux;

    .line 424
    iget-object v14, v13, Lo/ux;->fw:[B

    .line 425
    iget v15, v13, Lo/ux;->pos:I

    .line 426
    iget v0, v13, Lo/ux;->limit:I

    move/from16 v16, v0

    .line 428
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 429
    aget-byte v17, v14, v15

    .line 430
    move/from16 v0, v17

    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    move/from16 v0, v17

    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    .line 431
    rsub-int/lit8 v18, v17, 0x30

    .line 434
    cmp-long v0, v4, v9

    if-ltz v0, :cond_2

    cmp-long v0, v4, v9

    if-nez v0, :cond_4

    move/from16 v0, v18

    int-to-long v0, v0

    cmp-long v0, v0, v11

    if-gez v0, :cond_4

    .line 435
    :cond_2
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    invoke-virtual {v0, v4, v5}, Lo/ue;->ﾟ(J)Lo/ue;

    move-result-object v0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lo/ue;->ﺜ(I)Lo/ue;

    move-result-object v19

    .line 436
    if-nez v7, :cond_3

    invoke-virtual/range {v19 .. v19}, Lo/ue;->readByte()B

    .line 437
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Lo/ue;->ed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_4
    const-wide/16 v0, 0xa

    mul-long/2addr v4, v0

    .line 440
    move/from16 v0, v18

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 441
    goto :goto_1

    :cond_5
    move/from16 v0, v17

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_6

    if-nez v6, :cond_6

    .line 442
    const/4 v7, 0x1

    .line 443
    const-wide/16 v0, 0x1

    sub-long/2addr v11, v0

    goto :goto_1

    .line 445
    :cond_6
    if-nez v6, :cond_7

    .line 446
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_7
    const/4 v8, 0x1

    .line 451
    goto :goto_2

    .line 428
    :goto_1
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 455
    :cond_8
    :goto_2
    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 456
    invoke-virtual {v13}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ue;->ZG:Lo/ux;

    .line 457
    invoke-static {v13}, Lo/uy;->ˋ(Lo/ux;)V

    goto :goto_3

    .line 459
    :cond_9
    iput v15, v13, Lo/ux;->pos:I

    .line 461
    :goto_3
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ue;->ZG:Lo/ux;

    if-nez v0, :cond_1

    .line 463
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/ue;->size:J

    int-to-long v2, v6

    sub-long/2addr v0, v2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lo/ue;->size:J

    .line 464
    if-eqz v7, :cond_b

    move-wide v0, v4

    goto :goto_4

    :cond_b
    neg-long v0, v4

    :goto_4
    return-wide v0
.end method

.method public ec()J
    .locals 15

    .line 468
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 470
    :cond_0
    const-wide/16 v4, 0x0

    .line 471
    const/4 v6, 0x0

    .line 472
    const/4 v7, 0x0

    .line 475
    :cond_1
    iget-object v8, p0, Lo/ue;->ZG:Lo/ux;

    .line 477
    iget-object v9, v8, Lo/ux;->fw:[B

    .line 478
    iget v10, v8, Lo/ux;->pos:I

    .line 479
    iget v11, v8, Lo/ux;->limit:I

    .line 481
    :goto_0
    if-ge v10, v11, :cond_7

    .line 484
    aget-byte v13, v9, v10

    .line 485
    const/16 v0, 0x30

    if-lt v13, v0, :cond_2

    const/16 v0, 0x39

    if-gt v13, v0, :cond_2

    .line 486
    add-int/lit8 v12, v13, -0x30

    goto :goto_1

    .line 487
    :cond_2
    const/16 v0, 0x61

    if-lt v13, v0, :cond_3

    const/16 v0, 0x66

    if-gt v13, v0, :cond_3

    .line 488
    add-int/lit8 v0, v13, -0x61

    add-int/lit8 v12, v0, 0xa

    goto :goto_1

    .line 489
    :cond_3
    const/16 v0, 0x41

    if-lt v13, v0, :cond_4

    const/16 v0, 0x46

    if-gt v13, v0, :cond_4

    .line 490
    add-int/lit8 v0, v13, -0x41

    add-int/lit8 v12, v0, 0xa

    goto :goto_1

    .line 492
    :cond_4
    if-nez v6, :cond_5

    .line 493
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_5
    const/4 v7, 0x1

    .line 498
    goto :goto_2

    .line 502
    :goto_1
    const-wide/high16 v0, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 503
    new-instance v0, Lo/ue;

    invoke-direct {v0}, Lo/ue;-><init>()V

    invoke-virtual {v0, v4, v5}, Lo/ue;->ı(J)Lo/ue;

    move-result-object v0

    invoke-virtual {v0, v13}, Lo/ue;->ﺜ(I)Lo/ue;

    move-result-object v14

    .line 504
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lo/ue;->ed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_6
    const/4 v0, 0x4

    shl-long/2addr v4, v0

    .line 508
    int-to-long v0, v12

    or-long/2addr v4, v0

    .line 481
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 511
    :cond_7
    :goto_2
    if-ne v10, v11, :cond_8

    .line 512
    invoke-virtual {v8}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 513
    invoke-static {v8}, Lo/uy;->ˋ(Lo/ux;)V

    goto :goto_3

    .line 515
    :cond_8
    iput v10, v8, Lo/ux;->pos:I

    .line 517
    :goto_3
    if-nez v7, :cond_9

    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-nez v0, :cond_1

    .line 519
    :cond_9
    iget-wide v0, p0, Lo/ue;->size:J

    int-to-long v2, v6

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 520
    return-wide v4
.end method

.method public ed()Ljava/lang/String;
    .locals 4

    .line 549
    :try_start_0
    iget-wide v0, p0, Lo/ue;->size:J

    sget-object v2, Lo/vd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lo/ue;->ˊ(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 550
    :catch_0
    move-exception v3

    .line 551
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public ee()Ljava/lang/String;
    .locals 9

    .line 604
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lo/ue;->ʼ(B)J

    move-result-wide v6

    .line 605
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    .line 606
    new-instance v8, Lo/ue;

    invoke-direct {v8}, Lo/ue;-><init>()V

    .line 607
    move-object v0, p0

    move-object v1, v8

    iget-wide v2, p0, Lo/ue;->size:J

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/ue;->ˊ(Lo/ue;JJ)Lo/ue;

    .line 608
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lo/ue;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lo/ue;->readByteString()Lo/uj;

    move-result-object v2

    invoke-virtual {v2}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    invoke-virtual {p0, v6, v7}, Lo/ue;->ᴸ(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ef()[B
    .locals 3

    .line 631
    :try_start_0
    iget-wide v0, p0, Lo/ue;->size:J

    invoke-virtual {p0, v0, v1}, Lo/ue;->ᵀ(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 632
    :catch_0
    move-exception v2

    .line 633
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public eg()Lo/ue;
    .locals 6

    .line 1242
    new-instance v4, Lo/ue;

    invoke-direct {v4}, Lo/ue;-><init>()V

    .line 1243
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-object v4

    .line 1245
    :cond_0
    new-instance v0, Lo/ux;

    iget-object v1, p0, Lo/ue;->ZG:Lo/ux;

    invoke-direct {v0, v1}, Lo/ux;-><init>(Lo/ux;)V

    iput-object v0, v4, Lo/ue;->ZG:Lo/ux;

    .line 1246
    iget-object v0, v4, Lo/ue;->ZG:Lo/ux;

    iget-object v2, v4, Lo/ue;->ZG:Lo/ux;

    iget-object v1, v4, Lo/ue;->ZG:Lo/ux;

    iput-object v1, v2, Lo/ux;->aab:Lo/ux;

    iput-object v1, v0, Lo/ux;->aaa:Lo/ux;

    .line 1247
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v5, v0, Lo/ux;->aaa:Lo/ux;

    :goto_0
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-eq v5, v0, :cond_1

    .line 1248
    iget-object v0, v4, Lo/ue;->ZG:Lo/ux;

    iget-object v0, v0, Lo/ux;->aab:Lo/ux;

    new-instance v1, Lo/ux;

    invoke-direct {v1, v5}, Lo/ux;-><init>(Lo/ux;)V

    invoke-virtual {v0, v1}, Lo/ux;->ˊ(Lo/ux;)Lo/ux;

    .line 1247
    iget-object v5, v5, Lo/ux;->aaa:Lo/ux;

    goto :goto_0

    .line 1250
    :cond_1
    iget-wide v0, p0, Lo/ue;->size:J

    iput-wide v0, v4, Lo/ue;->size:J

    .line 1251
    return-object v4
.end method

.method public synthetic eh()Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lo/ue;->dU()Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    .line 1172
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1173
    :cond_0
    instance-of v0, p1, Lo/ue;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1174
    :cond_1
    move-object v0, p1

    check-cast v0, Lo/ue;

    move-object v4, v0

    .line 1175
    iget-wide v0, p0, Lo/ue;->size:J

    iget-wide v2, v4, Lo/ue;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 1176
    :cond_2
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 1178
    :cond_3
    iget-object v5, p0, Lo/ue;->ZG:Lo/ux;

    .line 1179
    iget-object v6, v4, Lo/ue;->ZG:Lo/ux;

    .line 1180
    iget v7, v5, Lo/ux;->pos:I

    .line 1181
    iget v8, v6, Lo/ux;->pos:I

    .line 1183
    const-wide/16 v9, 0x0

    :goto_0
    iget-wide v0, p0, Lo/ue;->size:J

    cmp-long v0, v9, v0

    if-gez v0, :cond_8

    .line 1184
    iget v0, v5, Lo/ux;->limit:I

    sub-int/2addr v0, v7

    iget v1, v6, Lo/ux;->limit:I

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v11, v0

    .line 1186
    const/4 v13, 0x0

    :goto_1
    int-to-long v0, v13

    cmp-long v0, v0, v11

    if-gez v0, :cond_5

    .line 1187
    iget-object v0, v5, Lo/ux;->fw:[B

    move v1, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v0, v0, v1

    iget-object v1, v6, Lo/ux;->fw:[B

    move v2, v8

    add-int/lit8 v8, v8, 0x1

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 1186
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1190
    :cond_5
    iget v0, v5, Lo/ux;->limit:I

    if-ne v7, v0, :cond_6

    .line 1191
    iget-object v5, v5, Lo/ux;->aaa:Lo/ux;

    .line 1192
    iget v7, v5, Lo/ux;->pos:I

    .line 1195
    :cond_6
    iget v0, v6, Lo/ux;->limit:I

    if-ne v8, v0, :cond_7

    .line 1196
    iget-object v6, v6, Lo/ux;->aaa:Lo/ux;

    .line 1197
    iget v8, v6, Lo/ux;->pos:I

    .line 1183
    :cond_7
    add-long/2addr v9, v11

    goto :goto_0

    .line 1201
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public flush()V
    .locals 0

    .line 1151
    return-void
.end method

.method public hashCode()I
    .locals 6

    .line 1205
    iget-object v2, p0, Lo/ue;->ZG:Lo/ux;

    .line 1206
    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1207
    :cond_0
    const/4 v3, 0x1

    .line 1209
    :cond_1
    iget v4, v2, Lo/ux;->pos:I

    iget v5, v2, Lo/ux;->limit:I

    :goto_0
    if-ge v4, v5, :cond_2

    .line 1210
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, v2, Lo/ux;->fw:[B

    aget-byte v1, v1, v4

    add-int v3, v0, v1

    .line 1209
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v2, v2, Lo/ux;->aaa:Lo/ux;

    .line 1213
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-ne v2, v0, :cond_1

    .line 1214
    return v3
.end method

.method public read([BII)I
    .locals 8

    .line 662
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 664
    iget-object v6, p0, Lo/ue;->ZG:Lo/ux;

    .line 665
    if-nez v6, :cond_0

    const/4 v0, -0x1

    return v0

    .line 666
    :cond_0
    iget v0, v6, Lo/ux;->limit:I

    iget v1, v6, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 667
    iget-object v0, v6, Lo/ux;->fw:[B

    iget v1, v6, Lo/ux;->pos:I

    invoke-static {v0, v1, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 669
    iget v0, v6, Lo/ux;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lo/ux;->pos:I

    .line 670
    iget-wide v0, p0, Lo/ue;->size:J

    int-to-long v2, v7

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 672
    iget v0, v6, Lo/ux;->pos:I

    iget v1, v6, Lo/ux;->limit:I

    if-ne v0, v1, :cond_1

    .line 673
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 674
    invoke-static {v6}, Lo/uy;->ˋ(Lo/ux;)V

    .line 677
    :cond_1
    return v7
.end method

.method public read(Lo/ue;J)J
    .locals 4

    .line 1080
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_1
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1083
    :cond_2
    iget-wide v0, p0, Lo/ue;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, Lo/ue;->size:J

    .line 1084
    :cond_3
    invoke-virtual {p1, p0, p2, p3}, Lo/ue;->write(Lo/ue;J)V

    .line 1085
    return-wide p2
.end method

.method public readByte()B
    .locals 9

    .line 272
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    iget-object v4, p0, Lo/ue;->ZG:Lo/ux;

    .line 275
    iget v5, v4, Lo/ux;->pos:I

    .line 276
    iget v6, v4, Lo/ux;->limit:I

    .line 278
    iget-object v7, v4, Lo/ux;->fw:[B

    .line 279
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v8, v7, v0

    .line 280
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 282
    if-ne v5, v6, :cond_1

    .line 283
    invoke-virtual {v4}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 284
    invoke-static {v4}, Lo/uy;->ˋ(Lo/ux;)V

    goto :goto_0

    .line 286
    :cond_1
    iput v5, v4, Lo/ux;->pos:I

    .line 289
    :goto_0
    return v8
.end method

.method public readByteString()Lo/uj;
    .locals 2

    .line 524
    new-instance v0, Lo/uj;

    invoke-virtual {p0}, Lo/ue;->ef()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/uj;-><init>([B)V

    return-object v0
.end method

.method public readFully([B)V
    .locals 3

    .line 653
    const/4 v1, 0x0

    .line 654
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 655
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v1, v0}, Lo/ue;->read([BII)I

    move-result v2

    .line 656
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 657
    :cond_0
    add-int/2addr v1, v2

    .line 658
    goto :goto_0

    .line 659
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 9

    .line 332
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/ue;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iget-object v4, p0, Lo/ue;->ZG:Lo/ux;

    .line 335
    iget v5, v4, Lo/ux;->pos:I

    .line 336
    iget v6, v4, Lo/ux;->limit:I

    .line 339
    sub-int v0, v6, v5

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 340
    invoke-virtual {p0}, Lo/ue;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lo/ue;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lo/ue;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lo/ue;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0

    .line 346
    :cond_1
    iget-object v7, v4, Lo/ux;->fw:[B

    .line 347
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    or-int v8, v0, v1

    .line 351
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 353
    if-ne v5, v6, :cond_2

    .line 354
    invoke-virtual {v4}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 355
    invoke-static {v4}, Lo/uy;->ˋ(Lo/ux;)V

    goto :goto_0

    .line 357
    :cond_2
    iput v5, v4, Lo/ux;->pos:I

    .line 360
    :goto_0
    return v8
.end method

.method public readLong()J
    .locals 12

    .line 364
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/ue;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    iget-object v6, p0, Lo/ue;->ZG:Lo/ux;

    .line 367
    iget v7, v6, Lo/ux;->pos:I

    .line 368
    iget v8, v6, Lo/ux;->limit:I

    .line 371
    sub-int v0, v8, v7

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 372
    invoke-virtual {p0}, Lo/ue;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lo/ue;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 376
    :cond_1
    iget-object v9, v6, Lo/ux;->fw:[B

    .line 377
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v0, v9, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v9, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v9, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v9, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v9, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v9, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v9, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    move v2, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v2, v9, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    or-long v10, v0, v2

    .line 385
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 387
    if-ne v7, v8, :cond_2

    .line 388
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 389
    invoke-static {v6}, Lo/uy;->ˋ(Lo/ux;)V

    goto :goto_0

    .line 391
    :cond_2
    iput v7, v6, Lo/ux;->pos:I

    .line 394
    :goto_0
    return-wide v10
.end method

.method public readShort()S
    .locals 9

    .line 303
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lo/ue;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v4, p0, Lo/ue;->ZG:Lo/ux;

    .line 306
    iget v5, v4, Lo/ux;->pos:I

    .line 307
    iget v6, v4, Lo/ux;->limit:I

    .line 310
    sub-int v0, v6, v5

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lo/ue;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lo/ue;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int v7, v0, v1

    .line 313
    int-to-short v0, v7

    return v0

    .line 316
    :cond_1
    iget-object v7, v4, Lo/ux;->fw:[B

    .line 317
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v0, v7, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    move v1, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    or-int v8, v0, v1

    .line 319
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 321
    if-ne v5, v6, :cond_2

    .line 322
    invoke-virtual {v4}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 323
    invoke-static {v4}, Lo/uy;->ˋ(Lo/ux;)V

    goto :goto_0

    .line 325
    :cond_2
    iput v5, v4, Lo/ux;->pos:I

    .line 328
    :goto_0
    int-to-short v0, v8

    return v0
.end method

.method public size()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lo/ue;->size:J

    return-wide v0
.end method

.method public timeout()Lo/vb;
    .locals 1

    .line 1157
    sget-object v0, Lo/vb;->NONE:Lo/vb;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1218
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1219
    const-string v0, "Buffer[size=0]"

    return-object v0

    .line 1222
    :cond_0
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 1223
    invoke-virtual {p0}, Lo/ue;->eg()Lo/ue;

    move-result-object v0

    invoke-virtual {v0}, Lo/ue;->readByteString()Lo/uj;

    move-result-object v4

    .line 1224
    const-string v0, "Buffer[size=%s data=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lo/ue;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v4}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1228
    :cond_1
    const-string v0, "MD5"

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 1229
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v0, v0, Lo/ux;->fw:[B

    iget-object v1, p0, Lo/ue;->ZG:Lo/ux;

    iget v1, v1, Lo/ux;->pos:I

    iget-object v2, p0, Lo/ue;->ZG:Lo/ux;

    iget v2, v2, Lo/ux;->limit:I

    iget-object v3, p0, Lo/ue;->ZG:Lo/ux;

    iget v3, v3, Lo/ux;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {v4, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1230
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v5, v0, Lo/ux;->aaa:Lo/ux;

    :goto_0
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-eq v5, v0, :cond_2

    .line 1231
    iget-object v0, v5, Lo/ux;->fw:[B

    iget v1, v5, Lo/ux;->pos:I

    iget v2, v5, Lo/ux;->limit:I

    iget v3, v5, Lo/ux;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {v4, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1230
    iget-object v5, v5, Lo/ux;->aaa:Lo/ux;

    goto :goto_0

    .line 1233
    :cond_2
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lo/ue;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lo/uj;->ᐨ([B)Lo/uj;

    move-result-object v2

    invoke-virtual {v2}, Lo/uj;->el()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1235
    :catch_0
    move-exception v4

    .line 1236
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public write(Lo/ue;J)V
    .locals 10

    .line 1039
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_1
    iget-wide v0, p1, Lo/ue;->size:J

    move-wide v4, p2

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 1043
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_7

    .line 1045
    iget-object v0, p1, Lo/ue;->ZG:Lo/ux;

    iget v0, v0, Lo/ux;->limit:I

    iget-object v1, p1, Lo/ue;->ZG:Lo/ux;

    iget v1, v1, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_5

    .line 1046
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v6, v0, Lo/ux;->aab:Lo/ux;

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 1047
    :goto_1
    if-eqz v6, :cond_4

    iget-boolean v0, v6, Lo/ux;->ZZ:Z

    if-eqz v0, :cond_4

    iget v0, v6, Lo/ux;->limit:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    iget-boolean v2, v6, Lo/ux;->ZY:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    iget v2, v6, Lo/ux;->pos:I

    :goto_2
    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x800

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 1050
    iget-object v0, p1, Lo/ue;->ZG:Lo/ux;

    long-to-int v1, p2

    invoke-virtual {v0, v6, v1}, Lo/ux;->ˊ(Lo/ux;I)V

    .line 1051
    iget-wide v0, p1, Lo/ue;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lo/ue;->size:J

    .line 1052
    iget-wide v0, p0, Lo/ue;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 1053
    return-void

    .line 1057
    :cond_4
    iget-object v0, p1, Lo/ue;->ZG:Lo/ux;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lo/ux;->ɺ(I)Lo/ux;

    move-result-object v0

    iput-object v0, p1, Lo/ue;->ZG:Lo/ux;

    .line 1062
    :cond_5
    iget-object v6, p1, Lo/ue;->ZG:Lo/ux;

    .line 1063
    iget v0, v6, Lo/ux;->limit:I

    iget v1, v6, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v7, v0

    .line 1064
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p1, Lo/ue;->ZG:Lo/ux;

    .line 1065
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-nez v0, :cond_6

    .line 1066
    iput-object v6, p0, Lo/ue;->ZG:Lo/ux;

    .line 1067
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v2, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v1, p0, Lo/ue;->ZG:Lo/ux;

    iput-object v1, v2, Lo/ux;->aab:Lo/ux;

    iput-object v1, v0, Lo/ux;->aaa:Lo/ux;

    goto :goto_3

    .line 1069
    :cond_6
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v9, v0, Lo/ux;->aab:Lo/ux;

    .line 1070
    invoke-virtual {v9, v6}, Lo/ux;->ˊ(Lo/ux;)Lo/ux;

    move-result-object v9

    .line 1071
    invoke-virtual {v9}, Lo/ux;->eu()V

    .line 1073
    :goto_3
    iget-wide v0, p1, Lo/ue;->size:J

    sub-long/2addr v0, v7

    iput-wide v0, p1, Lo/ue;->size:J

    .line 1074
    iget-wide v0, p0, Lo/ue;->size:J

    add-long/2addr v0, v7

    iput-wide v0, p0, Lo/ue;->size:J

    .line 1075
    sub-long/2addr p2, v7

    .line 1076
    goto/16 :goto_0

    .line 1077
    :cond_7
    return-void
.end method

.method public ı(J)Lo/ue;
    .locals 9

    .line 951
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 953
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    move-result-object v0

    return-object v0

    .line 956
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v0, 0x1

    .line 958
    invoke-virtual {p0, v4}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v5

    .line 959
    iget-object v6, v5, Lo/ux;->fw:[B

    .line 960
    iget v0, v5, Lo/ux;->limit:I

    add-int/2addr v0, v4

    add-int/lit8 v7, v0, -0x1

    iget v8, v5, Lo/ux;->limit:I

    :goto_0
    if-lt v7, v8, :cond_1

    .line 961
    sget-object v0, Lo/ue;->ZF:[B

    const-wide/16 v1, 0xf

    and-long/2addr v1, p1

    long-to-int v1, v1

    aget-byte v0, v0, v1

    aput-byte v0, v6, v7

    .line 962
    const/4 v0, 0x4

    ushr-long/2addr p1, v0

    .line 960
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 964
    :cond_1
    iget v0, v5, Lo/ux;->limit:I

    add-int/2addr v0, v4

    iput v0, v5, Lo/ux;->limit:I

    .line 965
    iget-wide v0, p0, Lo/ue;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 966
    return-object p0
.end method

.method ľ(I)Lo/ux;
    .locals 4

    .line 974
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x800

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 976
    :cond_1
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-nez v0, :cond_2

    .line 977
    invoke-static {}, Lo/uy;->ev()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 978
    iget-object v1, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v2, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iput-object v0, v2, Lo/ux;->aab:Lo/ux;

    iput-object v0, v1, Lo/ux;->aaa:Lo/ux;

    return-object v0

    .line 981
    :cond_2
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget-object v3, v0, Lo/ux;->aab:Lo/ux;

    .line 982
    iget v0, v3, Lo/ux;->limit:I

    add-int/2addr v0, p1

    const/16 v1, 0x800

    if-gt v0, v1, :cond_3

    iget-boolean v0, v3, Lo/ux;->ZZ:Z

    if-nez v0, :cond_4

    .line 983
    :cond_3
    invoke-static {}, Lo/uy;->ev()Lo/ux;

    move-result-object v0

    invoke-virtual {v3, v0}, Lo/ux;->ˊ(Lo/ux;)Lo/ux;

    move-result-object v3

    .line 985
    :cond_4
    return-object v3
.end method

.method public synthetic ǀ(I)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/ue;->ﾉ(I)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ǃ(J)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1, p2}, Lo/ue;->ı(J)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ɔ(I)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/ue;->ﻟ(I)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ɟ(I)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/ue;->ﺜ(I)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ʲ(J)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1, p2}, Lo/ue;->ﾟ(J)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public ʼ(B)J
    .locals 2

    .line 1089
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo/ue;->ˊ(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public ˉ([BII)Lo/ue;
    .locals 9

    .line 798
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 801
    add-int v6, p2, p3

    .line 802
    :goto_0
    if-ge p2, v6, :cond_1

    .line 803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v7

    .line 805
    sub-int v0, v6, p2

    iget v1, v7, Lo/ux;->limit:I

    rsub-int v1, v1, 0x800

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 806
    iget-object v0, v7, Lo/ux;->fw:[B

    iget v1, v7, Lo/ux;->limit:I

    invoke-static {p1, p2, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    add-int/2addr p2, v8

    .line 809
    iget v0, v7, Lo/ux;->limit:I

    add-int/2addr v0, v8

    iput v0, v7, Lo/ux;->limit:I

    .line 810
    goto :goto_0

    .line 812
    :cond_1
    iget-wide v0, p0, Lo/ue;->size:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 813
    return-object p0
.end method

.method public ˊ(BJ)J
    .locals 13

    .line 1097
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_0
    iget-object v4, p0, Lo/ue;->ZG:Lo/ux;

    .line 1100
    if-nez v4, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1101
    :cond_1
    const-wide/16 v5, 0x0

    .line 1103
    :cond_2
    iget v0, v4, Lo/ux;->limit:I

    iget v1, v4, Lo/ux;->pos:I

    sub-int v7, v0, v1

    .line 1104
    int-to-long v0, v7

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    .line 1105
    int-to-long v0, v7

    sub-long/2addr p2, v0

    goto :goto_1

    .line 1107
    :cond_3
    iget-object v8, v4, Lo/ux;->fw:[B

    .line 1108
    iget v0, v4, Lo/ux;->pos:I

    int-to-long v0, v0

    add-long v9, v0, p2

    iget v0, v4, Lo/ux;->limit:I

    int-to-long v11, v0

    :goto_0
    cmp-long v0, v9, v11

    if-gez v0, :cond_5

    .line 1109
    long-to-int v0, v9

    aget-byte v0, v8, v0

    if-ne v0, p1, :cond_4

    add-long v0, v5, v9

    iget v2, v4, Lo/ux;->pos:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 1108
    :cond_4
    const-wide/16 v0, 0x1

    add-long/2addr v9, v0

    goto :goto_0

    .line 1111
    :cond_5
    const-wide/16 p2, 0x0

    .line 1113
    :goto_1
    int-to-long v0, v7

    add-long/2addr v5, v0

    .line 1114
    iget-object v4, v4, Lo/ux;->aaa:Lo/ux;

    .line 1115
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-ne v4, v0, :cond_2

    .line 1116
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public ˊ(Lo/va;)J
    .locals 8

    .line 817
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    const-wide/16 v4, 0x0

    .line 819
    :goto_0
    const-wide/16 v0, 0x800

    invoke-interface {p1, p0, v0, v1}, Lo/va;->read(Lo/ue;J)J

    move-result-wide v0

    move-wide v6, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 820
    add-long/2addr v4, v6

    goto :goto_0

    .line 822
    :cond_1
    return-wide v4
.end method

.method public ˊ(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8

    .line 568
    iget-wide v0, p0, Lo/ue;->size:J

    move-wide v4, p1

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 569
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const-string v0, ""

    return-object v0

    .line 575
    :cond_2
    iget-object v6, p0, Lo/ue;->ZG:Lo/ux;

    .line 576
    iget v0, v6, Lo/ux;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, v6, Lo/ux;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 578
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lo/ue;->ᵀ(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 581
    :cond_3
    new-instance v7, Ljava/lang/String;

    iget-object v0, v6, Lo/ux;->fw:[B

    iget v1, v6, Lo/ux;->pos:I

    long-to-int v2, p1

    invoke-direct {v7, v0, v1, v2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 582
    iget v0, v6, Lo/ux;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, v6, Lo/ux;->pos:I

    .line 583
    iget-wide v0, p0, Lo/ue;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lo/ue;->size:J

    .line 585
    iget v0, v6, Lo/ux;->pos:I

    iget v1, v6, Lo/ux;->limit:I

    if-ne v0, v1, :cond_4

    .line 586
    invoke-virtual {v6}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 587
    invoke-static {v6}, Lo/uy;->ˋ(Lo/ux;)V

    .line 590
    :cond_4
    return-object v7
.end method

.method public ˊ(Ljava/lang/String;Ljava/nio/charset/Charset;)Lo/ue;
    .locals 3

    .line 785
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_1
    sget-object v0, Lo/vd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lo/ue;->ﯾ(Ljava/lang/String;)Lo/ue;

    move-result-object v0

    return-object v0

    .line 788
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 789
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lo/ue;->ˉ([BII)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ue;JJ)Lo/ue;
    .locals 8

    .line 166
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-wide v0, p0, Lo/ue;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 168
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    return-object p0

    .line 170
    :cond_1
    iget-wide v0, p1, Lo/ue;->size:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lo/ue;->size:J

    .line 173
    iget-object v6, p0, Lo/ue;->ZG:Lo/ux;

    .line 174
    :goto_0
    iget v0, v6, Lo/ux;->limit:I

    iget v1, v6, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    .line 175
    iget v0, v6, Lo/ux;->limit:I

    iget v1, v6, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 174
    iget-object v6, v6, Lo/ux;->aaa:Lo/ux;

    goto :goto_0

    .line 179
    :cond_2
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_4

    .line 180
    new-instance v7, Lo/ux;

    invoke-direct {v7, v6}, Lo/ux;-><init>(Lo/ux;)V

    .line 181
    iget v0, v7, Lo/ux;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, v7, Lo/ux;->pos:I

    .line 182
    iget v0, v7, Lo/ux;->pos:I

    long-to-int v1, p4

    add-int/2addr v0, v1

    iget v1, v7, Lo/ux;->limit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v7, Lo/ux;->limit:I

    .line 183
    iget-object v0, p1, Lo/ue;->ZG:Lo/ux;

    if-nez v0, :cond_3

    .line 184
    iput-object v7, v7, Lo/ux;->aab:Lo/ux;

    iput-object v7, v7, Lo/ux;->aaa:Lo/ux;

    iput-object v7, p1, Lo/ue;->ZG:Lo/ux;

    goto :goto_2

    .line 186
    :cond_3
    iget-object v0, p1, Lo/ue;->ZG:Lo/ux;

    iget-object v0, v0, Lo/ux;->aab:Lo/ux;

    invoke-virtual {v0, v7}, Lo/ux;->ˊ(Lo/ux;)Lo/ux;

    .line 188
    :goto_2
    iget v0, v7, Lo/ux;->limit:I

    iget v1, v7, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p4, v0

    .line 189
    const-wide/16 p2, 0x0

    .line 179
    iget-object v6, v6, Lo/ux;->aaa:Lo/ux;

    goto :goto_1

    .line 192
    :cond_4
    return-object p0
.end method

.method public ˊ(Lo/uj;)Lo/ue;
    .locals 2

    .line 711
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    invoke-virtual {p1, p0}, Lo/uj;->ˊ(Lo/ue;)V

    .line 713
    return-object p0
.end method

.method public ˊ(Lo/ue;J)V
    .locals 2

    .line 532
    iget-wide v0, p0, Lo/ue;->size:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    .line 533
    iget-wide v0, p0, Lo/ue;->size:J

    invoke-virtual {p1, p0, v0, v1}, Lo/ue;->write(Lo/ue;J)V

    .line 534
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 536
    :cond_0
    invoke-virtual {p1, p0, p2, p3}, Lo/ue;->write(Lo/ue;J)V

    .line 537
    return-void
.end method

.method public synthetic ˋ(Lo/uj;)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/ue;->ˊ(Lo/uj;)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˌ([BII)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lo/ue;->ˉ([BII)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ː(J)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1, p2}, Lo/ue;->ᵗ(J)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public ـ([B)Lo/ue;
    .locals 2

    .line 793
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lo/ue;->ˉ([BII)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ᐧ([B)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/ue;->ـ([B)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public ᔇ(J)V
    .locals 2

    .line 101
    iget-wide v0, p0, Lo/ue;->size:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method public ᔈ(J)B
    .locals 8

    .line 294
    iget-wide v0, p0, Lo/ue;->size:J

    move-wide v2, p1

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 295
    iget-object v6, p0, Lo/ue;->ZG:Lo/ux;

    .line 296
    :goto_0
    iget v0, v6, Lo/ux;->limit:I

    iget v1, v6, Lo/ux;->pos:I

    sub-int v7, v0, v1

    .line 297
    int-to-long v0, v7

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, v6, Lo/ux;->fw:[B

    iget v1, v6, Lo/ux;->pos:I

    long-to-int v2, p1

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0

    .line 298
    :cond_0
    int-to-long v0, v7

    sub-long/2addr p1, v0

    .line 295
    iget-object v6, v6, Lo/ux;->aaa:Lo/ux;

    goto :goto_0
.end method

.method public ᗮ(J)Lo/uj;
    .locals 2

    .line 528
    new-instance v0, Lo/uj;

    invoke-virtual {p0, p1, p2}, Lo/ue;->ᵀ(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lo/uj;-><init>([B)V

    return-object v0
.end method

.method public ᴶ(J)Ljava/lang/String;
    .locals 1

    .line 556
    sget-object v0, Lo/vd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lo/ue;->ˊ(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ᴸ(J)Ljava/lang/String;
    .locals 3

    .line 615
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lo/ue;->ᔈ(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 617
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lo/ue;->ᴶ(J)Ljava/lang/String;

    move-result-object v2

    .line 618
    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lo/ue;->ᵋ(J)V

    .line 619
    return-object v2

    .line 623
    :cond_0
    invoke-virtual {p0, p1, p2}, Lo/ue;->ᴶ(J)Ljava/lang/String;

    move-result-object v2

    .line 624
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lo/ue;->ᵋ(J)V

    .line 625
    return-object v2
.end method

.method public ᵀ(J)[B
    .locals 7

    .line 638
    iget-wide v0, p0, Lo/ue;->size:J

    move-wide v4, p1

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lo/vd;->checkOffsetAndCount(JJJ)V

    .line 639
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    long-to-int v0, p1

    new-array v6, v0, [B

    .line 644
    invoke-virtual {p0, v6}, Lo/ue;->readFully([B)V

    .line 645
    return-object v6
.end method

.method public ᵋ(J)V
    .locals 6

    .line 694
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 695
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 697
    :cond_0
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget v0, v0, Lo/ux;->limit:I

    iget-object v1, p0, Lo/ue;->ZG:Lo/ux;

    iget v1, v1, Lo/ux;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v4, v0

    .line 698
    iget-wide v0, p0, Lo/ue;->size:J

    int-to-long v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 699
    int-to-long v0, v4

    sub-long/2addr p1, v0

    .line 700
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget v1, v0, Lo/ux;->pos:I

    add-int/2addr v1, v4

    iput v1, v0, Lo/ux;->pos:I

    .line 702
    iget-object v0, p0, Lo/ue;->ZG:Lo/ux;

    iget v0, v0, Lo/ux;->pos:I

    iget-object v1, p0, Lo/ue;->ZG:Lo/ux;

    iget v1, v1, Lo/ux;->limit:I

    if-ne v0, v1, :cond_1

    .line 703
    iget-object v5, p0, Lo/ue;->ZG:Lo/ux;

    .line 704
    invoke-virtual {v5}, Lo/ux;->et()Lo/ux;

    move-result-object v0

    iput-object v0, p0, Lo/ue;->ZG:Lo/ux;

    .line 705
    invoke-static {v5}, Lo/uy;->ˋ(Lo/ux;)V

    .line 707
    :cond_1
    goto :goto_0

    .line 708
    :cond_2
    return-void
.end method

.method public ᵗ(J)Lo/ue;
    .locals 8

    .line 874
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v5

    .line 875
    iget-object v6, v5, Lo/ux;->fw:[B

    .line 876
    iget v7, v5, Lo/ux;->limit:I

    .line 877
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x38

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 878
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 879
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x28

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 880
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 881
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 882
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 883
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 884
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v1, 0xff

    and-long/2addr v1, p1

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 885
    iput v7, v5, Lo/ux;->limit:I

    .line 886
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 887
    return-object p0
.end method

.method public ﯾ(Ljava/lang/String;)Lo/ue;
    .locals 12

    .line 717
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_a

    .line 721
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 723
    const/16 v0, 0x80

    if-ge v6, v0, :cond_3

    .line 724
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v7

    .line 725
    iget-object v8, v7, Lo/ux;->fw:[B

    .line 726
    iget v0, v7, Lo/ux;->limit:I

    sub-int v9, v0, v4

    .line 727
    rsub-int v0, v9, 0x800

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 730
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v9

    int-to-byte v1, v6

    aput-byte v1, v8, v0

    .line 734
    :goto_1
    if-ge v4, v10, :cond_2

    .line 735
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 736
    const/16 v0, 0x80

    if-lt v6, v0, :cond_1

    goto :goto_2

    .line 737
    :cond_1
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v9

    int-to-byte v1, v6

    aput-byte v1, v8, v0

    goto :goto_1

    .line 740
    :cond_2
    :goto_2
    add-int v0, v4, v9

    iget v1, v7, Lo/ux;->limit:I

    sub-int v11, v0, v1

    .line 741
    iget v0, v7, Lo/ux;->limit:I

    add-int/2addr v0, v11

    iput v0, v7, Lo/ux;->limit:I

    .line 742
    iget-wide v0, p0, Lo/ue;->size:J

    int-to-long v2, v11

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 744
    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x800

    if-ge v6, v0, :cond_4

    .line 746
    shr-int/lit8 v0, v6, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 747
    and-int/lit8 v0, v6, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 748
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 750
    :cond_4
    const v0, 0xd800

    if-lt v6, v0, :cond_5

    const v0, 0xdfff

    if-le v6, v0, :cond_6

    .line 752
    :cond_5
    shr-int/lit8 v0, v6, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 753
    shr-int/lit8 v0, v6, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 754
    and-int/lit8 v0, v6, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 755
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 760
    :cond_6
    add-int/lit8 v0, v4, 0x1

    if-ge v0, v5, :cond_7

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    .line 761
    :goto_3
    const v0, 0xdbff

    if-gt v6, v0, :cond_8

    const v0, 0xdc00

    if-lt v7, v0, :cond_8

    const v0, 0xdfff

    if-le v7, v0, :cond_9

    .line 762
    :cond_8
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 763
    add-int/lit8 v4, v4, 0x1

    .line 764
    goto/16 :goto_0

    .line 770
    :cond_9
    const v0, -0xd801

    and-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0xa

    const v1, -0xdc01

    and-int/2addr v1, v7

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int v8, v1, v0

    .line 773
    shr-int/lit8 v0, v8, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 774
    shr-int/lit8 v0, v8, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 775
    shr-int/lit8 v0, v8, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 776
    and-int/lit8 v0, v8, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 777
    add-int/lit8 v4, v4, 0x2

    .line 779
    :goto_4
    goto/16 :goto_0

    .line 781
    :cond_a
    return-object p0
.end method

.method public synthetic ﹰ(Ljava/lang/String;)Lo/uh;
    .locals 1

    .line 47
    invoke-virtual {p0, p1}, Lo/ue;->ﯾ(Ljava/lang/String;)Lo/ue;

    move-result-object v0

    return-object v0
.end method

.method public ﺜ(I)Lo/ue;
    .locals 5

    .line 835
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v4

    .line 836
    iget-object v0, v4, Lo/ux;->fw:[B

    iget v1, v4, Lo/ux;->limit:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v4, Lo/ux;->limit:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 837
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 838
    return-object p0
.end method

.method public ﻟ(I)Lo/ue;
    .locals 7

    .line 842
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v4

    .line 843
    iget-object v5, v4, Lo/ux;->fw:[B

    .line 844
    iget v6, v4, Lo/ux;->limit:I

    .line 845
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 846
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 847
    iput v6, v4, Lo/ux;->limit:I

    .line 848
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 849
    return-object p0
.end method

.method public ﾉ(I)Lo/ue;
    .locals 7

    .line 857
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v4

    .line 858
    iget-object v5, v4, Lo/ux;->fw:[B

    .line 859
    iget v6, v4, Lo/ux;->limit:I

    .line 860
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 861
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 862
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 863
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    .line 864
    iput v6, v4, Lo/ux;->limit:I

    .line 865
    iget-wide v0, p0, Lo/ue;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 866
    return-object p0
.end method

.method public ﾟ(J)Lo/ue;
    .locals 10

    .line 895
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 897
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lo/ue;->ﺜ(I)Lo/ue;

    move-result-object v0

    return-object v0

    .line 900
    :cond_0
    const/4 v4, 0x0

    .line 901
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 902
    neg-long p1, p1

    .line 903
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 904
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lo/ue;->ﯾ(Ljava/lang/String;)Lo/ue;

    move-result-object v0

    return-object v0

    .line 906
    :cond_1
    const/4 v4, 0x1

    .line 910
    :cond_2
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2710

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x64

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x4

    goto/16 :goto_0

    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    const/4 v5, 0x5

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x6

    goto/16 :goto_0

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, p1, v0

    if-gez v0, :cond_9

    const/4 v5, 0x7

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    const-wide v0, 0x2540be400L

    cmp-long v0, p1, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    const/16 v5, 0x9

    goto :goto_0

    :cond_b
    const/16 v5, 0xa

    goto :goto_0

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, p1, v0

    if-gez v0, :cond_d

    const/16 v5, 0xb

    goto :goto_0

    :cond_d
    const/16 v5, 0xc

    goto :goto_0

    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    const/16 v5, 0xd

    goto :goto_0

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_10

    const/16 v5, 0xe

    goto :goto_0

    :cond_10
    const/16 v5, 0xf

    goto :goto_0

    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    const/16 v5, 0x10

    goto :goto_0

    :cond_12
    const/16 v5, 0x11

    goto :goto_0

    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_14

    const/16 v5, 0x12

    goto :goto_0

    :cond_14
    const/16 v5, 0x13

    .line 929
    :goto_0
    if-eqz v4, :cond_15

    .line 930
    add-int/lit8 v5, v5, 0x1

    .line 933
    :cond_15
    invoke-virtual {p0, v5}, Lo/ue;->ľ(I)Lo/ux;

    move-result-object v6

    .line 934
    iget-object v7, v6, Lo/ux;->fw:[B

    .line 935
    iget v0, v6, Lo/ux;->limit:I

    add-int v8, v0, v5

    .line 936
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_16

    .line 937
    const-wide/16 v0, 0xa

    rem-long v0, p1, v0

    long-to-int v9, v0

    .line 938
    add-int/lit8 v8, v8, -0x1

    sget-object v0, Lo/ue;->ZF:[B

    aget-byte v0, v0, v9

    aput-byte v0, v7, v8

    .line 939
    const-wide/16 v0, 0xa

    div-long/2addr p1, v0

    .line 940
    goto :goto_1

    .line 941
    :cond_16
    if-eqz v4, :cond_17

    .line 942
    add-int/lit8 v8, v8, -0x1

    const/16 v0, 0x2d

    aput-byte v0, v7, v8

    .line 945
    :cond_17
    iget v0, v6, Lo/ux;->limit:I

    add-int/2addr v0, v5

    iput v0, v6, Lo/ux;->limit:I

    .line 946
    iget-wide v0, p0, Lo/ue;->size:J

    int-to-long v2, v5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ue;->size:J

    .line 947
    return-object p0
.end method
