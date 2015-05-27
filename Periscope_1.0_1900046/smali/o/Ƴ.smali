.class public Lo/Ƴ;
.super Lo/ڹ;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private rM:I

.field private rO:Z

.field private rl:J

.field private final rs:Lo/ڒ;

.field private final rt:Lo/ڋ;

.field private final ru:Lo/م;

.field private final zG:Lo/ƫ;

.field private final zH:Lo/ĉ;

.field private final zI:Landroid/os/Handler;

.field private final zJ:Ljava/lang/StringBuilder;

.field private final zK:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<Lo/\u017c;>;"
        }
    .end annotation
.end field

.field private zL:I

.field private zM:I

.field private zN:Ljava/lang/String;

.field private zO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/ڒ;Lo/ĉ;Landroid/os/Looper;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lo/ڹ;-><init>()V

    .line 82
    invoke-static {p1}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ڒ;

    iput-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    .line 83
    invoke-static {p2}, Lo/ړ;->יּ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ĉ;

    iput-object v0, p0, Lo/Ƴ;->zH:Lo/ĉ;

    .line 84
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object v0, p0, Lo/Ƴ;->zI:Landroid/os/Handler;

    .line 85
    new-instance v0, Lo/ƫ;

    invoke-direct {v0}, Lo/ƫ;-><init>()V

    iput-object v0, p0, Lo/Ƴ;->zG:Lo/ƫ;

    .line 86
    new-instance v0, Lo/م;

    invoke-direct {v0}, Lo/م;-><init>()V

    iput-object v0, p0, Lo/Ƴ;->ru:Lo/م;

    .line 87
    new-instance v0, Lo/ڋ;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo/ڋ;-><init>(I)V

    iput-object v0, p0, Lo/Ƴ;->rt:Lo/ڋ;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    .line 89
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lo/Ƴ;->zK:Ljava/util/TreeSet;

    .line 90
    return-void
.end method

.method private ˊ(Lo/Ŷ;)V
    .locals 3

    .line 278
    iget-byte v0, p1, Lo/Ŷ;->zv:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lo/Ƴ;->zM:I

    .line 281
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/Ƴ;->ﻨ(I)V

    .line 282
    return-void

    .line 284
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lo/Ƴ;->zM:I

    .line 285
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/Ƴ;->ﻨ(I)V

    .line 286
    return-void

    .line 288
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lo/Ƴ;->zM:I

    .line 289
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/Ƴ;->ﻨ(I)V

    .line 290
    return-void

    .line 292
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lo/Ƴ;->ﻨ(I)V

    .line 293
    return-void

    .line 295
    :pswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lo/Ƴ;->ﻨ(I)V

    .line 296
    return-void

    .line 299
    :goto_0
    :pswitch_5
    iget v0, p0, Lo/Ƴ;->zL:I

    if-nez v0, :cond_0

    .line 300
    return-void

    .line 303
    :cond_0
    iget-byte v0, p1, Lo/Ŷ;->zv:B

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 305
    :pswitch_6
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Ƴ;->zN:Ljava/lang/String;

    .line 306
    iget v0, p0, Lo/Ƴ;->zL:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lo/Ƴ;->zL:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 307
    :cond_1
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 309
    :cond_2
    return-void

    .line 311
    :pswitch_7
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 312
    return-void

    .line 314
    :pswitch_8
    invoke-direct {p0}, Lo/Ƴ;->ｕ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Ƴ;->zN:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 316
    return-void

    .line 318
    :pswitch_9
    invoke-direct {p0}, Lo/Ƴ;->ﻡ()V

    .line 319
    return-void

    .line 321
    :pswitch_a
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 322
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 324
    :cond_3
    return-void

    .line 326
    :goto_1
    :pswitch_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private ˊ(Lo/ƨ;)V
    .locals 2

    .line 272
    iget v0, p0, Lo/Ƴ;->zL:I

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lo/ƨ;->zy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    :cond_0
    return-void
.end method

.method private ˋ(Lo/ż;)V
    .locals 6

    .line 247
    iget-object v0, p1, Lo/ż;->zx:[Lo/č;

    array-length v2, v0

    .line 248
    if-nez v2, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 253
    iget-object v0, p1, Lo/ż;->zx:[Lo/č;

    aget-object v4, v0, v3

    .line 254
    iget v0, v4, Lo/č;->type:I

    if-nez v0, :cond_3

    .line 255
    move-object v0, v4

    check-cast v0, Lo/Ŷ;

    move-object v5, v0

    .line 256
    invoke-virtual {v5}, Lo/Ŷ;->忄()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0, v5}, Lo/Ƴ;->ˊ(Lo/Ŷ;)V

    goto :goto_1

    .line 258
    :cond_1
    invoke-virtual {v5}, Lo/Ŷ;->אּ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-direct {p0}, Lo/Ƴ;->ﺣ()V

    .line 261
    :cond_2
    :goto_1
    goto :goto_2

    .line 262
    :cond_3
    move-object v0, v4

    check-cast v0, Lo/ƨ;

    invoke-direct {p0, v0}, Lo/Ƴ;->ˊ(Lo/ƨ;)V

    .line 252
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_4
    iget v0, p0, Lo/Ƴ;->zL:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lo/Ƴ;->zL:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 267
    :cond_5
    invoke-direct {p0}, Lo/Ƴ;->ｕ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Ƴ;->zN:Ljava/lang/String;

    .line 269
    :cond_6
    return-void
.end method

.method private ˌ(J)V
    .locals 1

    .line 124
    iput-wide p1, p0, Lo/Ƴ;->rl:J

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Ƴ;->rO:Z

    .line 126
    iget-object v0, p0, Lo/Ƴ;->zK:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 127
    invoke-direct {p0}, Lo/Ƴ;->ｚ()V

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Lo/Ƴ;->zM:I

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Ƴ;->ﻨ(I)V

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Ƴ;->ﹶ(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private ﹶ(Ljava/lang/String;)V
    .locals 2

    .line 207
    iget-object v0, p0, Lo/Ƴ;->zO:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/ผ;->ʻ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    iput-object p1, p0, Lo/Ƴ;->zO:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lo/Ƴ;->zI:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lo/Ƴ;->zI:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lo/Ƴ;->ﹺ(Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void
.end method

.method private ﹺ(Ljava/lang/String;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lo/Ƴ;->zH:Lo/ĉ;

    invoke-interface {v0, p1}, Lo/ĉ;->ⁱ(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private ﺔ()V
    .locals 7

    .line 235
    iget-object v0, p0, Lo/Ƴ;->rt:Lo/ڋ;

    iget-wide v0, v0, Lo/ڋ;->sJ:J

    iget-wide v2, p0, Lo/Ƴ;->rl:J

    const-wide/32 v4, 0x4c4b40

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lo/Ƴ;->zG:Lo/ƫ;

    iget-object v1, p0, Lo/Ƴ;->rt:Lo/ڋ;

    invoke-virtual {v0, v1}, Lo/ƫ;->ˏ(Lo/ڋ;)Lo/ż;

    move-result-object v6

    .line 240
    invoke-direct {p0}, Lo/Ƴ;->ｚ()V

    .line 241
    if-eqz v6, :cond_1

    .line 242
    iget-object v0, p0, Lo/Ƴ;->zK:Ljava/util/TreeSet;

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    return-void
.end method

.method private ﺣ()V
    .locals 0

    .line 330
    invoke-direct {p0}, Lo/Ƴ;->ﻡ()V

    .line 331
    return-void
.end method

.method private ﻡ()V
    .locals 3

    .line 348
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 349
    if-lez v2, :cond_0

    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    return-void
.end method

.method private ﻨ(I)V
    .locals 2

    .line 334
    iget v0, p0, Lo/Ƴ;->zL:I

    if-ne v0, p1, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    iput p1, p0, Lo/Ƴ;->zL:I

    .line 340
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 341
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    .line 343
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lo/Ƴ;->zN:Ljava/lang/String;

    .line 345
    :cond_2
    return-void
.end method

.method private ｕ()Ljava/lang/String;
    .locals 9

    .line 355
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 356
    if-nez v3, :cond_0

    .line 357
    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 361
    :goto_0
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    if-eqz v4, :cond_2

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 365
    :cond_2
    if-eqz v4, :cond_3

    add-int/lit8 v5, v3, -0x1

    goto :goto_1

    :cond_3
    move v5, v3

    .line 366
    :goto_1
    iget v0, p0, Lo/Ƴ;->zL:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 367
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 370
    :cond_4
    const/4 v6, 0x0

    .line 371
    move v7, v5

    .line 372
    const/4 v8, 0x0

    :goto_2
    iget v0, p0, Lo/Ƴ;->zM:I

    if-ge v8, v0, :cond_5

    const/4 v0, -0x1

    if-eq v7, v0, :cond_5

    .line 373
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    add-int/lit8 v2, v7, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v7

    .line 372
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 375
    :cond_5
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    .line 376
    add-int/lit8 v6, v7, 0x1

    .line 378
    :cond_6
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 379
    iget-object v0, p0, Lo/Ƴ;->zJ:Ljava/lang/StringBuilder;

    sub-int v1, v5, v6

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ｚ()V
    .locals 3

    .line 383
    iget-object v0, p0, Lo/Ƴ;->rt:Lo/ڋ;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lo/ڋ;->sJ:J

    .line 384
    iget-object v0, p0, Lo/Ƴ;->rt:Lo/ڋ;

    invoke-virtual {v0}, Lo/ڋ;->ب()V

    .line 385
    return-void
.end method

.method private ｫ()Z
    .locals 4

    .line 388
    iget-object v0, p0, Lo/Ƴ;->rt:Lo/ڋ;

    iget-wide v0, v0, Lo/ڋ;->sJ:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 224
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/Ƴ;->ﹺ(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x1

    return v0

    .line 227
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected seekTo(J)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ﹳ(J)V

    .line 120
    invoke-direct {p0, p1, p2}, Lo/Ƴ;->ˌ(J)V

    .line 121
    return-void
.end method

.method protected ɜ()V
    .locals 2

    .line 178
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    iget v1, p0, Lo/Ƴ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ג(I)V

    .line 179
    return-void
.end method

.method protected ˉ(J)I
    .locals 3

    .line 95
    :try_start_0
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ᐧ(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 96
    if-nez v2, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_0
    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v2}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 102
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    invoke-interface {v0}, Lo/ڒ;->getTrackCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 103
    iget-object v0, p0, Lo/Ƴ;->zG:Lo/ƫ;

    iget-object v1, p0, Lo/Ƴ;->rs:Lo/ڒ;

    invoke-interface {v1, v2}, Lo/ڒ;->ϊ(I)Lo/ڕ;

    move-result-object v1

    iget-object v1, v1, Lo/ڕ;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ƫ;->ᵢ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iput v2, p0, Lo/Ƴ;->rM:I

    .line 105
    const/4 v0, 0x1

    return v0

    .line 102
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method protected ˊ(JJ)V
    .locals 9

    .line 136
    iput-wide p1, p0, Lo/Ƴ;->rl:J

    .line 138
    :try_start_0
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    invoke-interface {v0, p1, p2}, Lo/ڒ;->ᐨ(J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    .line 139
    :catch_0
    move-exception v7

    .line 140
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v7}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 143
    :goto_0
    invoke-direct {p0}, Lo/Ƴ;->ｫ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lo/Ƴ;->ﺔ()V

    .line 147
    :cond_0
    iget-boolean v0, p0, Lo/Ƴ;->rO:Z

    if-eqz v0, :cond_1

    const/4 v7, -0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x3

    .line 148
    :goto_1
    invoke-direct {p0}, Lo/Ƴ;->ｫ()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, -0x3

    if-ne v7, v0, :cond_4

    .line 150
    :try_start_1
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    iget v1, p0, Lo/Ƴ;->rM:I

    move-wide v2, p1

    iget-object v4, p0, Lo/Ƴ;->ru:Lo/م;

    iget-object v5, p0, Lo/Ƴ;->rt:Lo/ڋ;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ڒ;->ˊ(IJLo/م;Lo/ڋ;Z)I

    move-result v7

    .line 151
    const/4 v0, -0x3

    if-ne v7, v0, :cond_2

    .line 152
    invoke-direct {p0}, Lo/Ƴ;->ﺔ()V

    goto :goto_2

    .line 153
    :cond_2
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/Ƴ;->rO:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :cond_3
    :goto_2
    goto :goto_1

    .line 156
    :catch_1
    move-exception v8

    .line 157
    new-instance v0, Lo/ʡ;

    invoke-direct {v0, v8}, Lo/ʡ;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 161
    :cond_4
    :goto_3
    iget-object v0, p0, Lo/Ƴ;->zK:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 162
    iget-object v0, p0, Lo/Ƴ;->zK:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ż;

    iget-wide v0, v0, Lo/ż;->sJ:J

    iget-wide v2, p0, Lo/Ƴ;->rl:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 164
    return-void

    .line 167
    :cond_5
    iget-object v0, p0, Lo/Ƴ;->zK:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ż;

    move-object v8, v0

    .line 168
    invoke-direct {p0, v8}, Lo/Ƴ;->ˋ(Lo/ż;)V

    .line 170
    iget-boolean v0, v8, Lo/ż;->zw:Z

    if-nez v0, :cond_6

    .line 171
    iget-object v0, p0, Lo/Ƴ;->zN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/Ƴ;->ﹶ(Ljava/lang/String;)V

    .line 173
    :cond_6
    goto :goto_3

    .line 174
    :cond_7
    return-void
.end method

.method protected ˊ(JZ)V
    .locals 2

    .line 113
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    iget v1, p0, Lo/Ƴ;->rM:I

    invoke-interface {v0, v1, p1, p2}, Lo/ڒ;->ˏ(IJ)V

    .line 114
    invoke-direct {p0, p1, p2}, Lo/Ƴ;->ˌ(J)V

    .line 115
    return-void
.end method

.method protected ﮈ()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lo/Ƴ;->rO:Z

    return v0
.end method

.method protected ﺓ()Z
    .locals 1

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method protected ﻤ()J
    .locals 2

    .line 183
    iget-object v0, p0, Lo/Ƴ;->rs:Lo/ڒ;

    iget v1, p0, Lo/Ƴ;->rM:I

    invoke-interface {v0, v1}, Lo/ڒ;->ϊ(I)Lo/ڕ;

    move-result-object v0

    iget-wide v0, v0, Lo/ڕ;->re:J

    return-wide v0
.end method

.method protected ﻥ()J
    .locals 2

    .line 193
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method protected ｆ()J
    .locals 2

    .line 188
    iget-wide v0, p0, Lo/Ƴ;->rl:J

    return-wide v0
.end method
