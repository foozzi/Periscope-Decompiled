.class final Lo/ᒯ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒯ$1;,
        Lo/ᒯ$ˊ;,
        Lo/ᒯ$if;
    }
.end annotation


# instance fields
.field private final uK:Lo/ʎ;

.field private final uL:I

.field private final uM:Lo/ᒯ$if;

.field private final uN:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<Lo/\u0262;>;"
        }
    .end annotation
.end field

.field private final uO:Lo/ᒯ$ˊ;

.field private final uP:Lo/প;

.field private uQ:J

.field private uR:J

.field private uS:Lo/ɢ;

.field private uT:I


# direct methods
.method public constructor <init>(Lo/ʎ;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lo/ᒯ;->uK:Lo/ʎ;

    .line 58
    invoke-interface {p1}, Lo/ʎ;->ﾏ()I

    move-result v0

    iput v0, p0, Lo/ᒯ;->uL:I

    .line 59
    new-instance v0, Lo/ᒯ$if;

    invoke-direct {v0}, Lo/ᒯ$if;-><init>()V

    iput-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lo/ᒯ;->uN:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 61
    new-instance v0, Lo/ᒯ$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ᒯ$ˊ;-><init>(Lo/ᒯ$1;)V

    iput-object v0, p0, Lo/ᒯ;->uO:Lo/ᒯ$ˊ;

    .line 62
    new-instance v0, Lo/প;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lo/প;-><init>(I)V

    iput-object v0, p0, Lo/ᒯ;->uP:Lo/প;

    .line 63
    iget v0, p0, Lo/ᒯ;->uL:I

    iput v0, p0, Lo/ᒯ;->uT:I

    .line 64
    return-void
.end method

.method private ˊ(JLjava/nio/ByteBuffer;I)V
    .locals 6

    .line 280
    move v2, p4

    .line 281
    :goto_0
    if-lez v2, :cond_0

    .line 282
    invoke-direct {p0, p1, p2}, Lo/ᒯ;->ﹶ(J)V

    .line 283
    iget-wide v0, p0, Lo/ᒯ;->uQ:J

    sub-long v0, p1, v0

    long-to-int v3, v0

    .line 284
    iget v0, p0, Lo/ᒯ;->uL:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 285
    iget-object v0, p0, Lo/ᒯ;->uN:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ɢ;

    move-object v5, v0

    .line 286
    iget-object v0, v5, Lo/ɢ;->fw:[B

    invoke-virtual {v5, v3}, Lo/ɢ;->ｨ(I)I

    move-result v1

    invoke-virtual {p3, v0, v1, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 287
    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 288
    sub-int/2addr v2, v4

    .line 289
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method private ˊ(J[BI)V
    .locals 6

    .line 301
    const/4 v2, 0x0

    .line 302
    :goto_0
    if-ge v2, p4, :cond_0

    .line 303
    invoke-direct {p0, p1, p2}, Lo/ᒯ;->ﹶ(J)V

    .line 304
    iget-wide v0, p0, Lo/ᒯ;->uQ:J

    sub-long v0, p1, v0

    long-to-int v3, v0

    .line 305
    sub-int v0, p4, v2

    iget v1, p0, Lo/ᒯ;->uL:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 306
    iget-object v0, p0, Lo/ᒯ;->uN:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ɢ;

    move-object v5, v0

    .line 307
    iget-object v0, v5, Lo/ɢ;->fw:[B

    invoke-virtual {v5, v3}, Lo/ɢ;->ｨ(I)I

    move-result v1

    invoke-static {v0, v1, p3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    int-to-long v0, v4

    add-long/2addr p1, v0

    .line 310
    add-int/2addr v2, v4

    .line 311
    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ڋ;Lo/ᒯ$ˊ;)V
    .locals 17

    .line 211
    move-object/from16 v0, p2

    iget-wide v7, v0, Lo/ᒯ$ˊ;->oR:J

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-direct {v1, v7, v8, v0, v2}, Lo/ᒯ;->ˊ(J[BI)V

    .line 215
    const-wide/16 v0, 0x1

    add-long/2addr v7, v0

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/4 v1, 0x0

    aget-byte v9, v0, v1

    .line 217
    and-int/lit16 v0, v9, 0x80

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 218
    :goto_0
    and-int/lit8 v11, v9, 0x7f

    .line 221
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ڋ;->sI:Lo/ɜ;

    iget-object v0, v0, Lo/ɜ;->iv:[B

    if-nez v0, :cond_1

    .line 222
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ڋ;->sI:Lo/ɜ;

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, v0, Lo/ɜ;->iv:[B

    .line 224
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ڋ;->sI:Lo/ɜ;

    iget-object v0, v0, Lo/ɜ;->iv:[B

    move-object/from16 v1, p0

    invoke-direct {v1, v7, v8, v0, v11}, Lo/ᒯ;->ˊ(J[BI)V

    .line 225
    int-to-long v0, v11

    add-long/2addr v7, v0

    .line 229
    if-eqz v10, :cond_2

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    move-object/from16 v1, p0

    const/4 v2, 0x2

    invoke-direct {v1, v7, v8, v0, v2}, Lo/ᒯ;->ˊ(J[BI)V

    .line 231
    const-wide/16 v0, 0x2

    add-long/2addr v7, v0

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    invoke-virtual {v0}, Lo/প;->readUnsignedShort()I

    move-result v12

    goto :goto_1

    .line 235
    :cond_2
    const/4 v12, 0x1

    .line 239
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ڋ;->sI:Lo/ɜ;

    iget-object v13, v0, Lo/ɜ;->numBytesOfClearData:[I

    .line 240
    if-eqz v13, :cond_3

    array-length v0, v13

    if-ge v0, v12, :cond_4

    .line 241
    :cond_3
    new-array v13, v12, [I

    .line 243
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ڋ;->sI:Lo/ɜ;

    iget-object v14, v0, Lo/ɜ;->numBytesOfEncryptedData:[I

    .line 244
    if-eqz v14, :cond_5

    array-length v0, v14

    if-ge v0, v12, :cond_6

    .line 245
    :cond_5
    new-array v14, v12, [I

    .line 247
    :cond_6
    if-eqz v10, :cond_8

    .line 248
    mul-int/lit8 v15, v12, 0x6

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    invoke-static {v0, v15}, Lo/ᒯ;->ˋ(Lo/প;I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    move-object/from16 v1, p0

    invoke-direct {v1, v7, v8, v0, v15}, Lo/ᒯ;->ˊ(J[BI)V

    .line 251
    int-to-long v0, v15

    add-long/2addr v7, v0

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 253
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v12, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    invoke-virtual {v0}, Lo/প;->readUnsignedShort()I

    move-result v0

    aput v0, v13, v16

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᒯ;->uP:Lo/প;

    invoke-virtual {v0}, Lo/প;->ѕ()I

    move-result v0

    aput v0, v14, v16

    .line 253
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 257
    :cond_7
    goto :goto_3

    .line 258
    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v13, v1

    .line 259
    move-object/from16 v0, p1

    iget v0, v0, Lo/ڋ;->size:I

    move-object/from16 v1, p2

    iget-wide v1, v1, Lo/ᒯ$ˊ;->oR:J

    sub-long v1, v7, v1

    long-to-int v1, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v14, v1

    .line 263
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ڋ;->sI:Lo/ɜ;

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, p2

    iget-object v4, v4, Lo/ᒯ$ˊ;->ve:[B

    move-object/from16 v5, p1

    iget-object v5, v5, Lo/ڋ;->sI:Lo/ɜ;

    iget-object v5, v5, Lo/ɜ;->iv:[B

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lo/ɜ;->set(I[I[I[B[BI)V

    .line 267
    move-object/from16 v0, p2

    iget-wide v0, v0, Lo/ᒯ$ˊ;->oR:J

    sub-long v0, v7, v0

    long-to-int v15, v0

    .line 268
    move-object/from16 v0, p2

    iget-wide v0, v0, Lo/ᒯ$ˊ;->oR:J

    int-to-long v2, v15

    add-long/2addr v0, v2

    move-object/from16 v2, p2

    iput-wide v0, v2, Lo/ᒯ$ˊ;->oR:J

    .line 269
    move-object/from16 v0, p1

    iget v0, v0, Lo/ڋ;->size:I

    sub-int/2addr v0, v15

    move-object/from16 v1, p1

    iput v0, v1, Lo/ڋ;->size:I

    .line 270
    return-void
.end method

.method private static ˋ(Lo/প;I)V
    .locals 1

    .line 333
    invoke-virtual {p0}, Lo/প;->limit()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 334
    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lo/প;->ʻ([BI)V

    .line 336
    :cond_0
    return-void
.end method

.method private ᘢ()V
    .locals 2

    .line 430
    iget v0, p0, Lo/ᒯ;->uT:I

    iget v1, p0, Lo/ᒯ;->uL:I

    if-ne v0, v1, :cond_0

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lo/ᒯ;->uT:I

    .line 432
    iget-object v0, p0, Lo/ᒯ;->uK:Lo/ʎ;

    invoke-interface {v0}, Lo/ʎ;->ｮ()Lo/ɢ;

    move-result-object v0

    iput-object v0, p0, Lo/ᒯ;->uS:Lo/ɢ;

    .line 433
    iget-object v0, p0, Lo/ᒯ;->uN:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lo/ᒯ;->uS:Lo/ɢ;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    return-void
.end method

.method private ﹶ(J)V
    .locals 7

    .line 321
    iget-wide v0, p0, Lo/ᒯ;->uQ:J

    sub-long v0, p1, v0

    long-to-int v4, v0

    .line 322
    iget v0, p0, Lo/ᒯ;->uL:I

    div-int v5, v4, v0

    .line 323
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 324
    iget-object v0, p0, Lo/ᒯ;->uK:Lo/ʎ;

    iget-object v1, p0, Lo/ᒯ;->uN:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ɢ;

    invoke-interface {v0, v1}, Lo/ʎ;->ˊ(Lo/ɢ;)V

    .line 325
    iget-wide v0, p0, Lo/ᒯ;->uQ:J

    iget v2, p0, Lo/ᒯ;->uL:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᒯ;->uQ:J

    .line 323
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 72
    iget-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    invoke-virtual {v0}, Lo/ᒯ$if;->clear()V

    .line 73
    :goto_0
    iget-object v0, p0, Lo/ᒯ;->uN:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lo/ᒯ;->uK:Lo/ʎ;

    iget-object v1, p0, Lo/ᒯ;->uN:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ɢ;

    invoke-interface {v0, v1}, Lo/ʎ;->ˊ(Lo/ɢ;)V

    goto :goto_0

    .line 76
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᒯ;->uQ:J

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᒯ;->uR:J

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᒯ;->uS:Lo/ɢ;

    .line 79
    iget v0, p0, Lo/ᒯ;->uL:I

    iput v0, p0, Lo/ᒯ;->uT:I

    .line 80
    return-void
.end method

.method public ˊ(JIJI[B)V
    .locals 8

    .line 423
    iget-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lo/ᒯ$if;->ˊ(JIJI[B)V

    .line 424
    return-void
.end method

.method public ˋ(Lo/ᒑ;I)I
    .locals 5

    .line 384
    invoke-direct {p0}, Lo/ᒯ;->ᘢ()V

    .line 385
    iget v0, p0, Lo/ᒯ;->uL:I

    iget v1, p0, Lo/ᒯ;->uT:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 386
    iget-object v0, p0, Lo/ᒯ;->uS:Lo/ɢ;

    iget-object v0, v0, Lo/ɢ;->fw:[B

    iget-object v1, p0, Lo/ᒯ;->uS:Lo/ɢ;

    iget v2, p0, Lo/ᒯ;->uT:I

    invoke-virtual {v1, v2}, Lo/ɢ;->ｨ(I)I

    move-result v1

    invoke-interface {p1, v0, v1, v4}, Lo/ᒑ;->readFully([BII)V

    .line 388
    iget v0, p0, Lo/ᒯ;->uT:I

    add-int/2addr v0, v4

    iput v0, p0, Lo/ᒯ;->uT:I

    .line 389
    iget-wide v0, p0, Lo/ᒯ;->uR:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᒯ;->uR:J

    .line 390
    return v4
.end method

.method public ˋ(Lo/ڋ;)Z
    .locals 2

    .line 144
    iget-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    iget-object v1, p0, Lo/ᒯ;->uO:Lo/ᒯ$ˊ;

    invoke-virtual {v0, p1, v1}, Lo/ᒯ$if;->ˋ(Lo/ڋ;Lo/ᒯ$ˊ;)Z

    move-result v0

    return v0
.end method

.method public ˎ(Lo/প;I)V
    .locals 6

    .line 400
    move v4, p2

    .line 401
    :goto_0
    if-lez v4, :cond_0

    .line 402
    invoke-direct {p0}, Lo/ᒯ;->ᘢ()V

    .line 403
    iget v0, p0, Lo/ᒯ;->uL:I

    iget v1, p0, Lo/ᒯ;->uT:I

    sub-int/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 404
    iget-object v0, p0, Lo/ᒯ;->uS:Lo/ɢ;

    iget-object v0, v0, Lo/ɢ;->fw:[B

    iget-object v1, p0, Lo/ᒯ;->uS:Lo/ɢ;

    iget v2, p0, Lo/ᒯ;->uT:I

    invoke-virtual {v1, v2}, Lo/ɢ;->ｨ(I)I

    move-result v1

    invoke-virtual {p1, v0, v1, v5}, Lo/প;->ι([BII)V

    .line 406
    iget v0, p0, Lo/ᒯ;->uT:I

    add-int/2addr v0, v5

    iput v0, p0, Lo/ᒯ;->uT:I

    .line 407
    sub-int/2addr v4, v5

    .line 408
    goto :goto_0

    .line 409
    :cond_0
    iget-wide v0, p0, Lo/ᒯ;->uR:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ᒯ;->uR:J

    .line 410
    return-void
.end method

.method public ˎ(Lo/ڋ;)Z
    .locals 7

    .line 178
    iget-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    iget-object v1, p0, Lo/ᒯ;->uO:Lo/ᒯ$ˊ;

    invoke-virtual {v0, p1, v1}, Lo/ᒯ$if;->ˋ(Lo/ڋ;Lo/ᒯ$ˊ;)Z

    move-result v4

    .line 179
    if-nez v4, :cond_0

    .line 180
    const/4 v0, 0x0

    return v0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lo/ڋ;->ւ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lo/ᒯ;->uO:Lo/ᒯ$ˊ;

    invoke-direct {p0, p1, v0}, Lo/ᒯ;->ˊ(Lo/ڋ;Lo/ᒯ$ˊ;)V

    .line 188
    :cond_1
    iget-object v0, p1, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p1, Lo/ڋ;->size:I

    if-ge v0, v1, :cond_3

    .line 189
    :cond_2
    iget v0, p1, Lo/ڋ;->size:I

    invoke-virtual {p1, v0}, Lo/ڋ;->ʶ(I)Z

    .line 191
    :cond_3
    iget-object v0, p1, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lo/ᒯ;->uO:Lo/ᒯ$ˊ;

    iget-wide v0, v0, Lo/ᒯ$ˊ;->oR:J

    iget-object v2, p1, Lo/ڋ;->ko:Ljava/nio/ByteBuffer;

    iget v3, p1, Lo/ڋ;->size:I

    invoke-direct {p0, v0, v1, v2, v3}, Lo/ᒯ;->ˊ(JLjava/nio/ByteBuffer;I)V

    .line 195
    :cond_4
    iget-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    invoke-virtual {v0}, Lo/ᒯ$if;->ᚁ()J

    move-result-wide v5

    .line 196
    invoke-direct {p0, v5, v6}, Lo/ᒯ;->ﹶ(J)V

    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public ᔫ()V
    .locals 3

    .line 151
    iget-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    invoke-virtual {v0}, Lo/ᒯ$if;->ᚁ()J

    move-result-wide v1

    .line 152
    invoke-direct {p0, v1, v2}, Lo/ᒯ;->ﹶ(J)V

    .line 153
    return-void
.end method

.method public ᘂ()J
    .locals 2

    .line 346
    iget-wide v0, p0, Lo/ᒯ;->uR:J

    return-wide v0
.end method

.method public ᴵ(J)Z
    .locals 4

    .line 162
    iget-object v0, p0, Lo/ᒯ;->uM:Lo/ᒯ$if;

    invoke-virtual {v0, p1, p2}, Lo/ᒯ$if;->ﹺ(J)J

    move-result-wide v2

    .line 163
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_0
    invoke-direct {p0, v2, v3}, Lo/ᒯ;->ﹶ(J)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method
