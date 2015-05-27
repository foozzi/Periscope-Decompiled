.class Lo/Ỳ$ˊ;
.super Lo/Ỳ$ˎ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ỳ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02ca"
.end annotation


# instance fields
.field private sJ:J

.field private state:I

.field private wO:I

.field final synthetic xB:Lo/Ỳ;

.field private final xC:Lo/ন;

.field private final xD:Lo/ᚁ;

.field private xE:Z

.field private xF:Z

.field private xG:I

.field private xH:I


# direct methods
.method public constructor <init>(Lo/Ỳ;Lo/ᚁ;)V
    .locals 2

    .line 393
    iput-object p1, p0, Lo/Ỳ$ˊ;->xB:Lo/Ỳ;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Ỳ$ˎ;-><init>(Lo/Ỳ$1;)V

    .line 394
    iput-object p2, p0, Lo/Ỳ$ˊ;->xD:Lo/ᚁ;

    .line 395
    new-instance v0, Lo/ন;

    const/16 v1, 0x9

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/ন;-><init>([B)V

    iput-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    .line 396
    const/4 v0, 0x0

    iput v0, p0, Lo/Ỳ$ˊ;->state:I

    .line 397
    return-void
.end method

.method private setState(I)V
    .locals 1

    .line 478
    iput p1, p0, Lo/Ỳ$ˊ;->state:I

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lo/Ỳ$ˊ;->wO:I

    .line 480
    return-void
.end method

.method private ˊ(Lo/প;[BI)Z
    .locals 3

    .line 492
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    iget v1, p0, Lo/Ỳ$ˊ;->wO:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 493
    if-gtz v2, :cond_0

    .line 494
    const/4 v0, 0x1

    return v0

    .line 495
    :cond_0
    if-nez p2, :cond_1

    .line 496
    invoke-virtual {p1, v2}, Lo/প;->ʰ(I)V

    goto :goto_0

    .line 498
    :cond_1
    iget v0, p0, Lo/Ỳ$ˊ;->wO:I

    invoke-virtual {p1, p2, v0, v2}, Lo/প;->ι([BII)V

    .line 500
    :goto_0
    iget v0, p0, Lo/Ỳ$ˊ;->wO:I

    add-int/2addr v0, v2

    iput v0, p0, Lo/Ỳ$ˊ;->wO:I

    .line 501
    iget v0, p0, Lo/Ỳ$ˊ;->wO:I

    if-ne v0, p3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private Ṫ()Z
    .locals 5

    .line 505
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ন;->setPosition(I)V

    .line 506
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v3

    .line 507
    const/4 v0, 0x1

    if-eq v3, v0, :cond_0

    .line 508
    const-string v0, "TsExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start code prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lo/Ỳ$ˊ;->xH:I

    .line 510
    const/4 v0, 0x0

    return v0

    .line 513
    :cond_0
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 514
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v4

    .line 517
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 518
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    invoke-virtual {v0}, Lo/ন;->ʎ()Z

    move-result v0

    iput-boolean v0, p0, Lo/Ỳ$ˊ;->xF:Z

    .line 521
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 522
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    iput v0, p0, Lo/Ỳ$ˊ;->xG:I

    .line 524
    if-nez v4, :cond_1

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lo/Ỳ$ˊ;->xH:I

    goto :goto_0

    .line 527
    :cond_1
    add-int/lit8 v0, v4, 0x6

    add-int/lit8 v0, v0, -0x9

    iget v1, p0, Lo/Ỳ$ˊ;->xG:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/Ỳ$ˊ;->xH:I

    .line 530
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private Ỳ()V
    .locals 5

    .line 534
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ন;->setPosition(I)V

    .line 535
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/Ỳ$ˊ;->sJ:J

    .line 536
    iget-boolean v0, p0, Lo/Ỳ$ˊ;->xF:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 538
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1e

    shl-long v3, v0, v2

    .line 539
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 540
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0xf

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 541
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 542
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v3, v0

    .line 543
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 544
    iget-object v0, p0, Lo/Ỳ$ˊ;->xB:Lo/Ỳ;

    invoke-virtual {v0, v3, v4}, Lo/Ỳ;->ˆ(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/Ỳ$ˊ;->sJ:J

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;ZLo/ᒬ;)V
    .locals 6

    .line 410
    if-eqz p2, :cond_2

    .line 411
    iget v0, p0, Lo/Ỳ$ˊ;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    goto :goto_0

    .line 417
    :pswitch_1
    const-string v0, "TsExtractor"

    const-string v1, "Unexpected start indicator reading extended header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    goto :goto_0

    .line 424
    :pswitch_2
    iget v0, p0, Lo/Ỳ$ˊ;->xH:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 425
    const-string v0, "TsExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected start indicator: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/Ỳ$ˊ;->xH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-boolean v0, p0, Lo/Ỳ$ˊ;->xE:Z

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lo/Ỳ$ˊ;->xD:Lo/ᚁ;

    invoke-virtual {v0}, Lo/ᚁ;->ᴫ()V

    .line 433
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/Ỳ$ˊ;->setState(I)V

    .line 436
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    if-lez v0, :cond_8

    .line 437
    iget v0, p0, Lo/Ỳ$ˊ;->state:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 439
    :pswitch_3
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v0

    invoke-virtual {p1, v0}, Lo/প;->ʰ(I)V

    .line 440
    goto/16 :goto_5

    .line 442
    :pswitch_4
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    iget-object v0, v0, Lo/ন;->fw:[B

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lo/Ỳ$ˊ;->ˊ(Lo/প;[BI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 443
    invoke-direct {p0}, Lo/Ỳ$ˊ;->Ṫ()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-direct {p0, v0}, Lo/Ỳ$ˊ;->setState(I)V

    goto/16 :goto_5

    .line 447
    :pswitch_5
    iget v0, p0, Lo/Ỳ$ˊ;->xG:I

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 449
    iget-object v0, p0, Lo/Ỳ$ˊ;->xC:Lo/ন;

    iget-object v0, v0, Lo/ন;->fw:[B

    invoke-direct {p0, p1, v0, v4}, Lo/Ỳ$ˊ;->ˊ(Lo/প;[BI)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lo/Ỳ$ˊ;->xG:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lo/Ỳ$ˊ;->ˊ(Lo/প;[BI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 451
    invoke-direct {p0}, Lo/Ỳ$ˊ;->Ỳ()V

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Ỳ$ˊ;->xE:Z

    .line 453
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lo/Ỳ$ˊ;->setState(I)V

    goto :goto_5

    .line 457
    :pswitch_6
    invoke-virtual {p1}, Lo/প;->ϋ()I

    move-result v4

    .line 458
    iget v0, p0, Lo/Ỳ$ˊ;->xH:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    iget v0, p0, Lo/Ỳ$ˊ;->xH:I

    sub-int v5, v4, v0

    .line 459
    :goto_3
    if-lez v5, :cond_5

    .line 460
    sub-int/2addr v4, v5

    .line 461
    invoke-virtual {p1}, Lo/প;->getPosition()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lo/প;->ʟ(I)V

    .line 463
    :cond_5
    iget-object v0, p0, Lo/Ỳ$ˊ;->xD:Lo/ᚁ;

    iget-wide v1, p0, Lo/Ỳ$ˊ;->sJ:J

    iget-boolean v3, p0, Lo/Ỳ$ˊ;->xE:Z

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, p1, v1, v2, v3}, Lo/ᚁ;->ˊ(Lo/প;JZ)V

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Ỳ$ˊ;->xE:Z

    .line 465
    iget v0, p0, Lo/Ỳ$ˊ;->xH:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 466
    iget v0, p0, Lo/Ỳ$ˊ;->xH:I

    sub-int/2addr v0, v4

    iput v0, p0, Lo/Ỳ$ˊ;->xH:I

    .line 467
    iget v0, p0, Lo/Ỳ$ˊ;->xH:I

    if-nez v0, :cond_7

    .line 468
    iget-object v0, p0, Lo/Ỳ$ˊ;->xD:Lo/ᚁ;

    invoke-virtual {v0}, Lo/ᚁ;->ᴫ()V

    .line 469
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/Ỳ$ˊ;->setState(I)V

    .line 472
    :cond_7
    :goto_5
    goto/16 :goto_1

    .line 475
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public ᒮ()V
    .locals 1

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lo/Ỳ$ˊ;->state:I

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lo/Ỳ$ˊ;->wO:I

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Ỳ$ˊ;->xE:Z

    .line 404
    iget-object v0, p0, Lo/Ỳ$ˊ;->xD:Lo/ᚁ;

    invoke-virtual {v0}, Lo/ᚁ;->ᒮ()V

    .line 405
    return-void
.end method
