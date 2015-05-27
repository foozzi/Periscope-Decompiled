.class public Lo/akp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/akp$1;,
        Lo/akp$if;,
        Lo/akp$ˋ;,
        Lo/akp$ˊ;,
        Lo/akp$ˎ;
    }
.end annotation


# instance fields
.field private final bIE:I

.field private final bIF:I

.field private final bIG:I

.field private final bIH:D

.field private final bII:I

.field private final bIJ:D

.field private final bIK:J

.field private bIL:Lo/akp$ˊ;

.field private bIM:Lo/akp$ˊ;

.field private bIN:Lo/akp$ˋ;

.field private bIO:Lo/akp$ˋ;

.field private bIP:Lo/akp$if;

.field private bIQ:I

.field private bIR:I

.field private bIS:Z

.field private bIT:Z

.field private bIU:Z

.field private bIV:I

.field private bIW:I

.field private bIX:D

.field private bIY:D

.field private bIZ:Ljava/util/Date;

.field private bJa:Z

.field private bJb:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const v0, 0xc800

    iput v0, p0, Lo/akp;->bIE:I

    .line 19
    const v0, 0xa000

    iput v0, p0, Lo/akp;->bIF:I

    .line 20
    const/16 v0, 0x2800

    iput v0, p0, Lo/akp;->bIG:I

    .line 21
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, Lo/akp;->bIH:D

    .line 22
    const/16 v0, 0x280

    iput v0, p0, Lo/akp;->bII:I

    .line 23
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    iput-wide v0, p0, Lo/akp;->bIJ:D

    .line 24
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lo/akp;->bIK:J

    .line 27
    new-instance v0, Lo/akp$ˊ;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-direct {v0, p0, v1, v2}, Lo/akp$ˊ;-><init>(Lo/akp;D)V

    iput-object v0, p0, Lo/akp;->bIL:Lo/akp$ˊ;

    .line 28
    new-instance v0, Lo/akp$ˊ;

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-direct {v0, p0, v1, v2}, Lo/akp$ˊ;-><init>(Lo/akp;D)V

    iput-object v0, p0, Lo/akp;->bIM:Lo/akp$ˊ;

    .line 29
    new-instance v0, Lo/akp$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/akp$ˋ;-><init>(Lo/akp;Lo/akp$1;)V

    iput-object v0, p0, Lo/akp;->bIN:Lo/akp$ˋ;

    .line 30
    new-instance v0, Lo/akp$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/akp$ˋ;-><init>(Lo/akp;Lo/akp$1;)V

    iput-object v0, p0, Lo/akp;->bIO:Lo/akp$ˋ;

    .line 31
    new-instance v0, Lo/akp$if;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lo/akp$if;-><init>(Lo/akp;I)V

    iput-object v0, p0, Lo/akp;->bIP:Lo/akp$if;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lo/akp;->bIQ:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lo/akp;->bIR:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akp;->bIS:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bIT:Z

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bIU:Z

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lo/akp;->bIV:I

    .line 38
    const/16 v0, 0x6400

    iput v0, p0, Lo/akp;->bIW:I

    .line 39
    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    iput-wide v0, p0, Lo/akp;->bIX:D

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/akp;->bIY:D

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lo/akp;->bIZ:Ljava/util/Date;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bJa:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bJb:Z

    .line 174
    return-void
.end method

.method private AE()V
    .locals 10

    .line 254
    iget-boolean v0, p0, Lo/akp;->bIS:Z

    if-nez v0, :cond_3

    .line 256
    iget v4, p0, Lo/akp;->bIQ:I

    .line 257
    iget-boolean v0, p0, Lo/akp;->bIT:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lo/akp;->bIR:I

    if-lez v0, :cond_1

    iget v0, p0, Lo/akp;->bIR:I

    iget v1, p0, Lo/akp;->bIQ:I

    if-ge v0, v1, :cond_1

    .line 259
    iget-boolean v0, p0, Lo/akp;->bIU:Z

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akp;->bIS:Z

    .line 262
    iget v4, p0, Lo/akp;->bIR:I

    goto :goto_0

    .line 266
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akp;->bIU:Z

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lo/akp;->bIV:I

    goto :goto_0

    .line 272
    :cond_1
    iget-boolean v0, p0, Lo/akp;->bIU:Z

    if-eqz v0, :cond_2

    .line 275
    iget v0, p0, Lo/akp;->bIV:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/akp;->bIV:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bIU:Z

    .line 282
    :cond_2
    :goto_0
    mul-int/lit8 v0, v4, 0x8

    div-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lo/akp;->bIM:Lo/akp$ˊ;

    invoke-virtual {v1}, Lo/akp$ˊ;->AM()I

    move-result v1

    sub-int v5, v0, v1

    .line 283
    mul-int/lit8 v0, v5, 0x41

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lo/akp;->bIW:I

    .line 284
    invoke-direct {p0}, Lo/akp;->AF()V

    .line 285
    invoke-direct {p0}, Lo/akp;->AG()V

    .line 286
    goto/16 :goto_2

    .line 289
    :cond_3
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 290
    iget-object v0, p0, Lo/akp;->bIZ:Ljava/util/Date;

    if-nez v0, :cond_4

    .line 292
    iput-object v4, p0, Lo/akp;->bIZ:Ljava/util/Date;

    goto/16 :goto_2

    .line 294
    :cond_4
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lo/akp;->bIZ:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    .line 296
    iget v5, p0, Lo/akp;->bIR:I

    .line 297
    iget v0, p0, Lo/akp;->bIQ:I

    if-lez v0, :cond_5

    iget v0, p0, Lo/akp;->bIQ:I

    iget v1, p0, Lo/akp;->bIR:I

    if-ge v0, v1, :cond_5

    .line 300
    iget v5, p0, Lo/akp;->bIQ:I

    .line 304
    :cond_5
    iget-object v0, p0, Lo/akp;->bIM:Lo/akp$ˊ;

    invoke-virtual {v0}, Lo/akp$ˊ;->AM()I

    move-result v0

    sub-int/2addr v5, v0

    .line 307
    mul-int/lit8 v0, v5, 0x5

    div-int/lit8 v5, v0, 0xa

    .line 310
    if-gtz v5, :cond_6

    .line 312
    iget v5, p0, Lo/akp;->bIW:I

    .line 318
    :cond_6
    iget v6, p0, Lo/akp;->bIW:I

    .line 319
    iget-object v0, p0, Lo/akp;->bIL:Lo/akp$ˊ;

    invoke-virtual {v0}, Lo/akp$ˊ;->AM()I

    move-result v7

    .line 320
    mul-int/lit8 v0, v6, 0x7

    div-int/lit8 v0, v0, 0xa

    if-ge v7, v0, :cond_7

    iget-wide v0, p0, Lo/akp;->bIX:D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_7

    .line 322
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target/Actual kbits/s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v6, 0x8

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v7, 0x8

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 326
    :cond_7
    iget-boolean v0, p0, Lo/akp;->bJa:Z

    if-nez v0, :cond_9

    iget v0, p0, Lo/akp;->bIW:I

    if-gt v5, v0, :cond_9

    .line 329
    add-int/lit16 v5, v5, 0x2800

    .line 332
    iget v0, p0, Lo/akp;->bIQ:I

    if-lez v0, :cond_8

    .line 334
    iget v0, p0, Lo/akp;->bIQ:I

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lo/akp;->bIM:Lo/akp$ˊ;

    invoke-virtual {v1}, Lo/akp$ˊ;->AM()I

    move-result v1

    sub-int v8, v0, v1

    .line 335
    mul-int/lit8 v0, v8, 0x41

    div-int/lit8 v9, v0, 0x64

    .line 336
    if-le v5, v9, :cond_8

    .line 338
    move v5, v9

    .line 342
    :cond_8
    iput v5, p0, Lo/akp;->bIW:I

    .line 343
    invoke-direct {p0}, Lo/akp;->AF()V

    .line 344
    invoke-direct {p0}, Lo/akp;->AG()V

    .line 347
    :cond_9
    :goto_1
    iput-object v4, p0, Lo/akp;->bIZ:Ljava/util/Date;

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bJa:Z

    .line 351
    :cond_a
    :goto_2
    return-void
.end method

.method private AF()V
    .locals 3

    .line 355
    iget-boolean v0, p0, Lo/akp;->bIS:Z

    if-eqz v0, :cond_0

    const v2, 0xa000

    goto :goto_0

    :cond_0
    const v2, 0xc800

    .line 356
    :goto_0
    iget v0, p0, Lo/akp;->bIW:I

    if-le v0, v2, :cond_1

    .line 358
    iput v2, p0, Lo/akp;->bIW:I

    .line 360
    :cond_1
    iget v0, p0, Lo/akp;->bIW:I

    const/16 v1, 0x2800

    if-ge v0, v1, :cond_2

    .line 362
    const/16 v0, 0x2800

    iput v0, p0, Lo/akp;->bIW:I

    .line 364
    :cond_2
    return-void
.end method

.method private AG()V
    .locals 4

    .line 368
    iget-boolean v0, p0, Lo/akp;->bIS:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo/akp;->bIR:I

    if-lez v0, :cond_1

    .line 370
    :cond_0
    iget v0, p0, Lo/akp;->bIW:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x40ce000000000000L    # 15360.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 372
    iget v0, p0, Lo/akp;->bIW:I

    div-int/lit16 v0, v0, 0x280

    int-to-double v0, v0

    iput-wide v0, p0, Lo/akp;->bIX:D

    .line 373
    iget-wide v0, p0, Lo/akp;->bIX:D

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 375
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    iput-wide v0, p0, Lo/akp;->bIX:D

    .line 379
    :cond_1
    return-void
.end method


# virtual methods
.method public AC()I
    .locals 1

    .line 215
    iget v0, p0, Lo/akp;->bIQ:I

    return v0
.end method

.method public AD()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lo/akp;->bJb:Z

    return v0
.end method

.method public AH()I
    .locals 1

    .line 383
    iget v0, p0, Lo/akp;->bIW:I

    return v0
.end method

.method public AI()D
    .locals 2

    .line 388
    iget-wide v0, p0, Lo/akp;->bIX:D

    return-wide v0
.end method

.method public AJ()D
    .locals 6

    .line 393
    iget-object v0, p0, Lo/akp;->bIL:Lo/akp$ˊ;

    invoke-virtual {v0}, Lo/akp$ˊ;->AN()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v2, v0

    .line 394
    return-wide v4
.end method

.method public AK()V
    .locals 4

    .line 428
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload rate: Mean "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/akp;->bIN:Lo/akp$ˋ;

    invoke-virtual {v2}, Lo/akp$ˋ;->AQ()D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StdDev "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/akp;->bIN:Lo/akp$ˋ;

    invoke-virtual {v2}, Lo/akp$ˋ;->AR()D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Min "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/akp;->bIN:Lo/akp$ˋ;

    invoke-virtual {v2}, Lo/akp$ˋ;->AO()D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/akp;->bIN:Lo/akp$ˋ;

    invoke-virtual {v2}, Lo/akp$ˋ;->AP()D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x8

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "RTMP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lo/akp;->bIO:Lo/akp$ˋ;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public ʺ(II)Z
    .locals 7

    .line 220
    iget v3, p0, Lo/akp;->bIW:I

    .line 221
    iget-wide v4, p0, Lo/akp;->bIX:D

    .line 223
    iget-object v0, p0, Lo/akp;->bIP:Lo/akp$if;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lo/akp$if;->ᐝ(D)V

    .line 224
    iget-object v0, p0, Lo/akp;->bIN:Lo/akp$ˋ;

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lo/akp$ˋ;->ᐝ(D)V

    .line 225
    iget-object v0, p0, Lo/akp;->bIO:Lo/akp$ˋ;

    invoke-virtual {p0}, Lo/akp;->AJ()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/akp$ˋ;->ᐝ(D)V

    .line 227
    iget-object v0, p0, Lo/akp;->bIP:Lo/akp$if;

    invoke-virtual {v0}, Lo/akp$if;->AL()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lo/akp;->bIR:I

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akp;->bIT:Z

    .line 229
    if-lez p2, :cond_0

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bIT:Z

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akp;->bJa:Z

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/akp;->bJb:Z

    .line 235
    :cond_0
    invoke-direct {p0}, Lo/akp;->AE()V

    .line 239
    iget v0, p0, Lo/akp;->bIW:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 240
    const/16 v0, 0x400

    if-gt v6, v0, :cond_1

    iget-wide v0, p0, Lo/akp;->bIX:D

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_2

    .line 242
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 244
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(ID)V
    .locals 3

    .line 418
    iget-object v0, p0, Lo/akp;->bIL:Lo/akp$ˊ;

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double v1, p2, v1

    invoke-virtual {v0, v1, v2, p1}, Lo/akp$ˊ;->ˊ(DI)V

    .line 419
    return-void
.end method

.method public ˋ(ID)V
    .locals 3

    .line 423
    iget-object v0, p0, Lo/akp;->bIM:Lo/akp$ˊ;

    const-wide v1, 0x408f400000000000L    # 1000.0

    div-double v1, p2, v1

    invoke-virtual {v0, v1, v2, p1}, Lo/akp$ˊ;->ˊ(DI)V

    .line 424
    return-void
.end method

.method public ˏ(D)Z
    .locals 8

    .line 399
    iget-wide v0, p0, Lo/akp;->bIX:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lo/akp;->bIX:D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 401
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 403
    :cond_1
    iget-wide v0, p0, Lo/akp;->bIY:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 405
    iget-wide v0, p0, Lo/akp;->bIX:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v2, v0

    .line 406
    iget-wide v0, p0, Lo/akp;->bIY:D

    sub-double v6, p1, v0

    .line 407
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-lez v0, :cond_2

    cmpg-double v0, v6, v4

    if-gez v0, :cond_2

    .line 409
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_2
    iput-wide p1, p0, Lo/akp;->bIY:D

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public ᐜ(I)V
    .locals 1

    .line 208
    iput p1, p0, Lo/akp;->bIQ:I

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/akp;->bIS:Z

    .line 210
    invoke-direct {p0}, Lo/akp;->AE()V

    .line 211
    return-void
.end method
