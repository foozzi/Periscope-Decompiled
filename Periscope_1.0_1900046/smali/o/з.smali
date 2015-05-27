.class public Lo/з;
.super Lo/ҫ;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/з$if;
    }
.end annotation


# instance fields
.field private final ri:Lo/з$if;

.field private final rj:Lo/ۊ;

.field private rk:I

.field private rl:J


# direct methods
.method public constructor <init>(Lo/ڒ;)V
    .locals 2

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lo/з;-><init>(Lo/ڒ;Lo/ᐴ;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lo/ڒ;Lo/ᐴ;Z)V
    .locals 6

    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/з;-><init>(Lo/ڒ;Lo/ᐴ;ZLandroid/os/Handler;Lo/з$if;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lo/ڒ;Lo/ᐴ;ZLandroid/os/Handler;Lo/з$if;)V
    .locals 1

    .line 124
    invoke-direct/range {p0 .. p5}, Lo/ҫ;-><init>(Lo/ڒ;Lo/ᐴ;ZLandroid/os/Handler;Lo/ҫ$ˊ;)V

    .line 125
    iput-object p5, p0, Lo/з;->ri:Lo/з$if;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lo/з;->rk:I

    .line 127
    new-instance v0, Lo/ۊ;

    invoke-direct {v0}, Lo/ۊ;-><init>()V

    iput-object v0, p0, Lo/з;->rj:Lo/ۊ;

    .line 128
    return-void
.end method

.method static synthetic ˊ(Lo/з;)Lo/з$if;
    .locals 1

    .line 34
    iget-object v0, p0, Lo/з;->ri:Lo/з$if;

    return-object v0
.end method

.method private ˊ(Lo/ۊ$ˋ;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lo/з;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/з;->ri:Lo/з$if;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lo/з;->qK:Landroid/os/Handler;

    new-instance v1, Lo/л;

    invoke-direct {v1, p0, p1}, Lo/л;-><init>(Lo/з;Lo/ۊ$ˋ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ۊ$ˎ;)V
    .locals 2

    .line 327
    iget-object v0, p0, Lo/з;->qK:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/з;->ri:Lo/з$if;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lo/з;->qK:Landroid/os/Handler;

    new-instance v1, Lo/ь;

    invoke-direct {v1, p0, p1}, Lo/ь;-><init>(Lo/з;Lo/ۊ$ˎ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_0
    return-void
.end method


# virtual methods
.method protected onStopped()V
    .locals 1

    .line 203
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->pause()V

    .line 204
    invoke-super {p0}, Lo/ҫ;->onStopped()V

    .line 205
    return-void
.end method

.method protected seekTo(J)V
    .locals 2

    .line 246
    invoke-super {p0, p1, p2}, Lo/ҫ;->seekTo(J)V

    .line 248
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->reset()V

    .line 249
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/з;->rl:J

    .line 250
    return-void
.end method

.method protected İ(I)V
    .locals 0

    .line 193
    return-void
.end method

.method protected ƭ()Z
    .locals 1

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method protected ɛ()V
    .locals 1

    .line 197
    invoke-super {p0}, Lo/ҫ;->ɛ()V

    .line 198
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->play()V

    .line 199
    return-void
.end method

.method protected ɜ()V
    .locals 2

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lo/з;->rk:I

    .line 238
    :try_start_0
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-super {p0}, Lo/ҫ;->ɜ()V

    .line 241
    goto :goto_0

    .line 240
    :catchall_0
    move-exception v1

    invoke-super {p0}, Lo/ҫ;->ɜ()V

    throw v1

    .line 242
    :goto_0
    return-void
.end method

.method protected ˊ(JZ)V
    .locals 2

    .line 165
    invoke-super {p0, p1, p2, p3}, Lo/ҫ;->ˊ(JZ)V

    .line 166
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/з;->rl:J

    .line 167
    return-void
.end method

.method protected ˊ(Landroid/media/MediaCodec;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 3

    .line 142
    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "mime"

    invoke-virtual {p3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v0, "mime"

    const-string v1, "audio/raw"

    invoke-virtual {p3, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 147
    const-string v0, "mime"

    invoke-virtual {p3, v0, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    goto :goto_0

    .line 149
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 151
    :goto_0
    return-void
.end method

.method protected ˊ(Lo/ب;Landroid/media/MediaFormat;)V
    .locals 2

    .line 172
    iget-object v0, p1, Lo/ب;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lo/দ;->ˮ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {p1}, Lo/ب;->ԅ()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ۊ;->ˋ(Landroid/media/MediaFormat;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0, p2}, Lo/ۊ;->ˋ(Landroid/media/MediaFormat;)V

    .line 177
    :goto_0
    return-void
.end method

.method protected ˊ(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 8

    .line 256
    if-eqz p9, :cond_0

    .line 257
    move/from16 v0, p8

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 258
    iget-object v0, p0, Lo/з;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qF:I

    .line 259
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->ٵ()V

    .line 260
    const/4 v0, 0x1

    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    :try_start_0
    iget v0, p0, Lo/з;->rk:I

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    iget v1, p0, Lo/з;->rk:I

    invoke-virtual {v0, v1}, Lo/ۊ;->ן(I)I

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->م()I

    move-result v0

    iput v0, p0, Lo/з;->rk:I

    .line 270
    iget v0, p0, Lo/з;->rk:I

    invoke-virtual {p0, v0}, Lo/з;->İ(I)V
    :try_end_0
    .catch Lo/ۊ$ˋ; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    goto :goto_1

    .line 272
    :catch_0
    move-exception v6

    .line 273
    invoke-direct {p0, v6}, Lo/з;->ˊ(Lo/ۊ$ˋ;)V

    .line 274
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v6}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 277
    :goto_1
    invoke-virtual {p0}, Lo/з;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 278
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->play()V

    .line 284
    :cond_2
    :try_start_1
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    move-object v1, p6

    iget v2, p7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {v0 .. v5}, Lo/ۊ;->ˊ(Ljava/nio/ByteBuffer;IIJ)I
    :try_end_1
    .catch Lo/ۊ$ˎ; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 289
    goto :goto_2

    .line 286
    :catch_1
    move-exception v7

    .line 287
    invoke-direct {p0, v7}, Lo/з;->ˊ(Lo/ۊ$ˎ;)V

    .line 288
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v7}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 292
    :goto_2
    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_3

    .line 293
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/з;->rl:J

    .line 297
    :cond_3
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_4

    .line 298
    move/from16 v0, p8

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 299
    iget-object v0, p0, Lo/з;->rp:Lo/ɛ;

    iget v1, v0, Lo/ɛ;->qE:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ɛ;->qE:I

    .line 300
    const/4 v0, 0x1

    return v0

    .line 303
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method protected ˋ(Ljava/lang/String;Z)Lo/ʄ;
    .locals 3

    .line 133
    invoke-static {p1}, Lo/দ;->ˮ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lo/ʄ;

    const-string v1, "OMX.google.raw.decoder"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ʄ;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ҫ;->ˋ(Ljava/lang/String;Z)Lo/ʄ;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(ILjava/lang/Object;)V
    .locals 2

    .line 308
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 309
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lo/ۊ;->ᐨ(F)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ҫ;->ˋ(ILjava/lang/Object;)V

    .line 313
    :goto_0
    return-void
.end method

.method protected ᴵ(Ljava/lang/String;)Z
    .locals 1

    .line 160
    invoke-static {p1}, Lo/দ;->ˆ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lo/ҫ;->ᴵ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ﮈ()Z
    .locals 1

    .line 211
    invoke-super {p0}, Lo/ҫ;->ﮈ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->ڋ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->ڒ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ﺓ()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {v0}, Lo/ۊ;->ڋ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/ҫ;->ﺓ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/з;->ν()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ｆ()J
    .locals 6

    .line 223
    iget-object v0, p0, Lo/з;->rj:Lo/ۊ;

    invoke-virtual {p0}, Lo/з;->ﮈ()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/ۊ;->יִ(Z)J

    move-result-wide v4

    .line 224
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 226
    iget-wide v0, p0, Lo/з;->rl:J

    invoke-super {p0}, Lo/ҫ;->ｆ()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/з;->rl:J

    goto :goto_0

    .line 229
    :cond_0
    iget-wide v0, p0, Lo/з;->rl:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/з;->rl:J

    .line 231
    :goto_0
    iget-wide v0, p0, Lo/з;->rl:J

    return-wide v0
.end method
