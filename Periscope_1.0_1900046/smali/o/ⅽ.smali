.class public Lo/ⅽ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private fU:I

.field private fo:Ljava/nio/ByteBuffer;

.field private final fp:[B

.field private fx:Lo/ⅹ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lo/ⅽ;->fp:[B

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lo/ⅽ;->fU:I

    return-void
.end method

.method private read()I
    .locals 4

    .line 354
    const/4 v2, 0x0

    .line 356
    :try_start_0
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v3

    .line 358
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    const/4 v1, 0x1

    iput v1, v0, Lo/ⅹ;->status:I

    .line 360
    :goto_0
    return v2
.end method

.method private readHeader()V
    .locals 5

    .line 232
    const-string v3, ""

    .line 233
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v4, v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const-string v0, "GIF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    const/4 v1, 0x1

    iput v1, v0, Lo/ⅹ;->status:I

    .line 238
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lo/ⅽ;->ﺌ()V

    .line 241
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-boolean v0, v0, Lo/ⅹ;->fP:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo/ⅽ;->Ｊ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v1, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget v1, v1, Lo/ⅹ;->fQ:I

    invoke-direct {p0, v1}, Lo/ⅽ;->І(I)[I

    move-result-object v1

    iput-object v1, v0, Lo/ⅹ;->fL:[I

    .line 243
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v1, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v1, v1, Lo/ⅹ;->fL:[I

    iget-object v2, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget v2, v2, Lo/ⅹ;->fR:I

    aget v1, v1, v2

    iput v1, v0, Lo/ⅹ;->bgColor:I

    .line 245
    :cond_2
    return-void
.end method

.method private reset()V
    .locals 2

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    .line 52
    iget-object v0, p0, Lo/ⅽ;->fp:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 53
    new-instance v0, Lo/ⅹ;

    invoke-direct {v0}, Lo/ⅹ;-><init>()V

    iput-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lo/ⅽ;->fU:I

    .line 55
    return-void
.end method

.method private І(I)[I
    .locals 11

    .line 274
    mul-int/lit8 v3, p1, 0x3

    .line 275
    const/4 v4, 0x0

    .line 276
    new-array v5, v3, [B

    .line 279
    :try_start_0
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 283
    const/16 v0, 0x100

    new-array v0, v0, [I

    move-object v4, v0

    .line 284
    const/4 v6, 0x0

    .line 285
    const/4 v7, 0x0

    .line 286
    :goto_0
    if-ge v6, p1, :cond_0

    .line 287
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v8, v0, 0xff

    .line 288
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v9, v0, 0xff

    .line 289
    move v0, v7

    add-int/lit8 v7, v7, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v10, v0, 0xff

    .line 290
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v1, v8, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    shl-int/lit8 v2, v9, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v10

    aput v1, v4, v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 297
    :cond_0
    goto :goto_1

    .line 292
    :catch_0
    move-exception v6

    .line 293
    const-string v0, "GifHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "GifHeaderParser"

    const-string v1, "Format Error Reading Color Table"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    :cond_1
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    const/4 v1, 0x1

    iput v1, v0, Lo/ⅹ;->status:I

    .line 299
    :goto_1
    return-object v4
.end method

.method private ΐ()I
    .locals 6

    .line 329
    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v0

    iput v0, p0, Lo/ⅽ;->fU:I

    .line 330
    const/4 v3, 0x0

    .line 331
    iget v0, p0, Lo/ⅽ;->fU:I

    if-lez v0, :cond_2

    .line 332
    const/4 v4, 0x0

    .line 334
    :goto_0
    :try_start_0
    iget v0, p0, Lo/ⅽ;->fU:I

    if-ge v3, v0, :cond_0

    .line 335
    iget v0, p0, Lo/ⅽ;->fU:I

    sub-int/2addr v0, v3

    move v4, v0

    .line 336
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lo/ⅽ;->fp:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    add-int v0, v3, v4

    move v3, v0

    goto :goto_0

    .line 345
    :cond_0
    goto :goto_1

    .line 340
    :catch_0
    move-exception v5

    .line 341
    const-string v0, "GifHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "GifHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Reading Block n: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blockSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lo/ⅽ;->fU:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    :cond_1
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    const/4 v1, 0x1

    iput v1, v0, Lo/ⅹ;->status:I

    .line 347
    :cond_2
    :goto_1
    return v3
.end method

.method private ךּ()V
    .locals 6

    .line 81
    const/4 v2, 0x0

    .line 82
    :goto_0
    if-nez v2, :cond_3

    invoke-direct {p0}, Lo/ⅽ;->Ｊ()Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v3

    .line 84
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_4

    .line 90
    :sswitch_0
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    new-instance v1, Lo/ℴ;

    invoke-direct {v1}, Lo/ℴ;-><init>()V

    iput-object v1, v0, Lo/ⅹ;->fN:Lo/ℴ;

    .line 93
    :cond_0
    invoke-direct {p0}, Lo/ⅽ;->ﭨ()V

    .line 94
    goto/16 :goto_5

    .line 97
    :sswitch_1
    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v3

    .line 98
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_2

    .line 102
    :sswitch_2
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    new-instance v1, Lo/ℴ;

    invoke-direct {v1}, Lo/ℴ;-><init>()V

    iput-object v1, v0, Lo/ⅹ;->fN:Lo/ℴ;

    .line 103
    invoke-direct {p0}, Lo/ⅽ;->כּ()V

    .line 104
    goto :goto_3

    .line 107
    :sswitch_3
    invoke-direct {p0}, Lo/ⅽ;->ΐ()I

    .line 108
    const-string v4, ""

    .line 109
    const/4 v5, 0x0

    :goto_1
    const/16 v0, 0xb

    if-ge v5, v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/ⅽ;->fp:[B

    aget-byte v1, v1, v5

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 112
    :cond_1
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-direct {p0}, Lo/ⅽ;->ﮢ()V

    goto :goto_3

    .line 116
    :cond_2
    invoke-direct {p0}, Lo/ⅽ;->ﺯ()V

    .line 118
    goto :goto_3

    .line 121
    :sswitch_4
    invoke-direct {p0}, Lo/ⅽ;->ﺯ()V

    .line 122
    goto :goto_3

    .line 125
    :sswitch_5
    invoke-direct {p0}, Lo/ⅽ;->ﺯ()V

    .line 126
    goto :goto_3

    .line 129
    :goto_2
    invoke-direct {p0}, Lo/ⅽ;->ﺯ()V

    .line 131
    :goto_3
    goto :goto_5

    .line 134
    :sswitch_6
    const/4 v2, 0x1

    .line 135
    goto :goto_5

    .line 139
    :goto_4
    :sswitch_7
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    const/4 v1, 0x1

    iput v1, v0, Lo/ⅹ;->status:I

    .line 141
    :goto_5
    goto/16 :goto_0

    .line 142
    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private כּ()V
    .locals 5

    .line 149
    invoke-direct {p0}, Lo/ⅽ;->read()I

    .line 151
    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v3

    .line 153
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    and-int/lit8 v1, v3, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, v0, Lo/ℴ;->fH:I

    .line 154
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    iget v0, v0, Lo/ℴ;->fH:I

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    const/4 v1, 0x1

    iput v1, v0, Lo/ℴ;->fH:I

    .line 158
    :cond_0
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lo/ℴ;->fG:Z

    .line 160
    invoke-direct {p0}, Lo/ⅽ;->ﻣ()I

    move-result v4

    .line 162
    const/4 v0, 0x3

    if-ge v4, v0, :cond_2

    .line 163
    const/16 v4, 0xa

    .line 165
    :cond_2
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    mul-int/lit8 v1, v4, 0xa

    iput v1, v0, Lo/ℴ;->delay:I

    .line 167
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v1

    iput v1, v0, Lo/ℴ;->fI:I

    .line 169
    invoke-direct {p0}, Lo/ⅽ;->read()I

    .line 170
    return-void
.end method

.method private ﭨ()V
    .locals 7

    .line 177
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    invoke-direct {p0}, Lo/ⅽ;->ﻣ()I

    move-result v1

    iput v1, v0, Lo/ℴ;->fB:I

    .line 178
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    invoke-direct {p0}, Lo/ⅽ;->ﻣ()I

    move-result v1

    iput v1, v0, Lo/ℴ;->fC:I

    .line 179
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    invoke-direct {p0}, Lo/ⅽ;->ﻣ()I

    move-result v1

    iput v1, v0, Lo/ℴ;->fD:I

    .line 180
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    invoke-direct {p0}, Lo/ⅽ;->ﻣ()I

    move-result v1

    iput v1, v0, Lo/ℴ;->fE:I

    .line 182
    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v4

    .line 184
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 185
    :goto_0
    and-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v6, v0

    .line 189
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lo/ℴ;->fF:Z

    .line 190
    if-eqz v5, :cond_2

    .line 192
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    invoke-direct {p0, v6}, Lo/ⅽ;->І(I)[I

    move-result-object v1

    iput-object v1, v0, Lo/ℴ;->fK:[I

    goto :goto_2

    .line 195
    :cond_2
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/ℴ;->fK:[I

    .line 199
    :goto_2
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fN:Lo/ℴ;

    iget-object v1, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lo/ℴ;->fJ:I

    .line 202
    invoke-direct {p0}, Lo/ⅽ;->ﺬ()V

    .line 204
    invoke-direct {p0}, Lo/ⅽ;->Ｊ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    return-void

    .line 208
    :cond_3
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget v1, v0, Lo/ⅹ;->fM:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lo/ⅹ;->fM:I

    .line 210
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v0, v0, Lo/ⅹ;->fO:Ljava/util/List;

    iget-object v1, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget-object v1, v1, Lo/ⅹ;->fN:Lo/ℴ;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method private ﮢ()V
    .locals 4

    .line 217
    :cond_0
    invoke-direct {p0}, Lo/ⅽ;->ΐ()I

    .line 218
    iget-object v0, p0, Lo/ⅽ;->fp:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 220
    iget-object v0, p0, Lo/ⅽ;->fp:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v2, v0, 0xff

    .line 221
    iget-object v0, p0, Lo/ⅽ;->fp:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v3, v0, 0xff

    .line 222
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Lo/ⅹ;->fT:I

    .line 224
    :cond_1
    iget v0, p0, Lo/ⅽ;->fU:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lo/ⅽ;->Ｊ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :cond_2
    return-void
.end method

.method private ﺌ()V
    .locals 4

    .line 251
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    invoke-direct {p0}, Lo/ⅽ;->ﻣ()I

    move-result v1

    iput v1, v0, Lo/ⅹ;->width:I

    .line 252
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    invoke-direct {p0}, Lo/ⅽ;->ﻣ()I

    move-result v1

    iput v1, v0, Lo/ⅹ;->height:I

    .line 254
    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v3

    .line 256
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    and-int/lit16 v1, v3, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lo/ⅹ;->fP:Z

    .line 260
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    and-int/lit8 v1, v3, 0x7

    const/4 v2, 0x2

    shl-int v1, v2, v1

    iput v1, v0, Lo/ⅹ;->fQ:I

    .line 262
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v1

    iput v1, v0, Lo/ⅹ;->fR:I

    .line 264
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v1

    iput v1, v0, Lo/ⅹ;->fS:I

    .line 265
    return-void
.end method

.method private ﺬ()V
    .locals 1

    .line 307
    invoke-direct {p0}, Lo/ⅽ;->read()I

    .line 309
    invoke-direct {p0}, Lo/ⅽ;->ﺯ()V

    .line 310
    return-void
.end method

.method private ﺯ()V
    .locals 3

    .line 318
    :cond_0
    invoke-direct {p0}, Lo/ⅽ;->read()I

    move-result v2

    .line 319
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 320
    if-gtz v2, :cond_0

    .line 321
    return-void
.end method

.method private ﻣ()I
    .locals 1

    .line 368
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private Ｊ()Z
    .locals 1

    .line 372
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    .line 48
    return-void
.end method

.method public ˊ([B)Lo/ⅽ;
    .locals 2

    .line 33
    invoke-direct {p0}, Lo/ⅽ;->reset()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    .line 36
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 37
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    .line 40
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    const/4 v1, 0x2

    iput v1, v0, Lo/ⅹ;->status:I

    .line 42
    :goto_0
    return-object p0
.end method

.method public ィ()Lo/ⅹ;
    .locals 2

    .line 58
    iget-object v0, p0, Lo/ⅽ;->fo:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-direct {p0}, Lo/ⅽ;->Ｊ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    return-object v0

    .line 65
    :cond_1
    invoke-direct {p0}, Lo/ⅽ;->readHeader()V

    .line 66
    invoke-direct {p0}, Lo/ⅽ;->Ｊ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-direct {p0}, Lo/ⅽ;->ךּ()V

    .line 68
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    iget v0, v0, Lo/ⅹ;->fM:I

    if-gez v0, :cond_2

    .line 69
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    const/4 v1, 0x1

    iput v1, v0, Lo/ⅹ;->status:I

    .line 73
    :cond_2
    iget-object v0, p0, Lo/ⅽ;->fx:Lo/ⅹ;

    return-object v0
.end method
