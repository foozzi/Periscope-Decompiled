.class Lo/דּ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected gG:I

.field protected gH:[B

.field protected gI:I

.field protected gJ:I

.field protected gK:[[I

.field protected gL:[I

.field protected gM:[I

.field protected gN:[I

.field protected gO:[I


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lo/דּ;->gL:[I

    .line 127
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lo/דּ;->gM:[I

    .line 130
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lo/דּ;->gN:[I

    .line 132
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lo/דּ;->gO:[I

    .line 145
    iput-object p1, p0, Lo/דּ;->gH:[B

    .line 146
    iput p2, p0, Lo/דּ;->gI:I

    .line 147
    iput p3, p0, Lo/דּ;->gJ:I

    .line 149
    const/16 v0, 0x100

    new-array v0, v0, [[I

    iput-object v0, p0, Lo/דּ;->gK:[[I

    .line 150
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v2, v0, :cond_0

    .line 151
    iget-object v0, p0, Lo/דּ;->gK:[[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    aput-object v1, v0, v2

    .line 152
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v3, v0, v2

    .line 153
    shl-int/lit8 v0, v2, 0xc

    div-int/lit16 v0, v0, 0x100

    const/4 v1, 0x2

    aput v0, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 154
    iget-object v0, p0, Lo/דּ;->gN:[I

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 155
    iget-object v0, p0, Lo/דּ;->gM:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method protected ˏ(IIIII)V
    .locals 11

    .line 411
    sub-int v5, p2, p1

    .line 412
    const/4 v0, -0x1

    if-ge v5, v0, :cond_0

    .line 413
    const/4 v5, -0x1

    .line 414
    :cond_0
    add-int v6, p2, p1

    .line 415
    const/16 v0, 0x100

    if-le v6, v0, :cond_1

    .line 416
    const/16 v6, 0x100

    .line 418
    :cond_1
    add-int/lit8 v3, p2, 0x1

    .line 419
    add-int/lit8 v4, p2, -0x1

    .line 420
    const/4 v8, 0x1

    .line 421
    :cond_2
    :goto_0
    if-lt v3, v6, :cond_3

    if-le v4, v5, :cond_5

    .line 422
    :cond_3
    iget-object v0, p0, Lo/דּ;->gO:[I

    move v1, v8

    add-int/lit8 v8, v8, 0x1

    aget v7, v0, v1

    .line 423
    if-ge v3, v6, :cond_4

    .line 424
    iget-object v0, p0, Lo/דּ;->gK:[[I

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    aget-object v9, v0, v1

    .line 426
    const/4 v0, 0x0

    :try_start_0
    aget v0, v9, v0

    const/4 v1, 0x0

    aget v1, v9, v1

    sub-int/2addr v1, p3

    mul-int/2addr v1, v7

    const/high16 v2, 0x40000

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v9, v1

    .line 427
    const/4 v0, 0x1

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    sub-int/2addr v1, p4

    mul-int/2addr v1, v7

    const/high16 v2, 0x40000

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, v9, v1

    .line 428
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x2

    aget v1, v9, v1

    sub-int v1, v1, p5

    mul-int/2addr v1, v7

    const/high16 v2, 0x40000

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, v9, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    goto :goto_1

    .line 429
    :catch_0
    move-exception v10

    .line 432
    :cond_4
    :goto_1
    if-le v4, v5, :cond_2

    .line 433
    iget-object v0, p0, Lo/דּ;->gK:[[I

    move v1, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v9, v0, v1

    .line 435
    const/4 v0, 0x0

    :try_start_1
    aget v0, v9, v0

    const/4 v1, 0x0

    aget v1, v9, v1

    sub-int/2addr v1, p3

    mul-int/2addr v1, v7

    const/high16 v2, 0x40000

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v9, v1

    .line 436
    const/4 v0, 0x1

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    sub-int/2addr v1, p4

    mul-int/2addr v1, v7

    const/high16 v2, 0x40000

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, v9, v1

    .line 437
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x2

    aget v1, v9, v1

    sub-int v1, v1, p5

    mul-int/2addr v1, v7

    const/high16 v2, 0x40000

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, v9, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    goto/16 :goto_0

    .line 438
    :catch_1
    move-exception v10

    .line 439
    goto/16 :goto_0

    .line 442
    :cond_5
    return-void
.end method

.method public ͺ(III)I
    .locals 8

    .line 317
    const/16 v5, 0x3e8

    .line 318
    const/4 v7, -0x1

    .line 319
    iget-object v0, p0, Lo/דּ;->gL:[I

    aget v1, v0, p2

    .line 320
    add-int/lit8 v2, v1, -0x1

    .line 322
    :cond_0
    :goto_0
    const/16 v0, 0x100

    if-lt v1, v0, :cond_1

    if-ltz v2, :cond_b

    .line 323
    :cond_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_6

    .line 324
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v6, v0, v1

    .line 325
    const/4 v0, 0x1

    aget v0, v6, v0

    sub-int v3, v0, p2

    .line 326
    if-lt v3, v5, :cond_2

    .line 327
    const/16 v1, 0x100

    goto :goto_1

    .line 329
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 330
    if-gez v3, :cond_3

    .line 331
    neg-int v3, v3

    .line 332
    :cond_3
    const/4 v0, 0x0

    aget v0, v6, v0

    sub-int v4, v0, p1

    .line 333
    if-gez v4, :cond_4

    .line 334
    neg-int v4, v4

    .line 335
    :cond_4
    add-int/2addr v3, v4

    .line 336
    if-ge v3, v5, :cond_6

    .line 337
    const/4 v0, 0x2

    aget v0, v6, v0

    sub-int v4, v0, p3

    .line 338
    if-gez v4, :cond_5

    .line 339
    neg-int v4, v4

    .line 340
    :cond_5
    add-int/2addr v3, v4

    .line 341
    if-ge v3, v5, :cond_6

    .line 342
    move v5, v3

    .line 343
    const/4 v0, 0x3

    aget v7, v6, v0

    .line 348
    :cond_6
    :goto_1
    if-ltz v2, :cond_0

    .line 349
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v6, v0, v2

    .line 350
    const/4 v0, 0x1

    aget v0, v6, v0

    sub-int v3, p2, v0

    .line 351
    if-lt v3, v5, :cond_7

    .line 352
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 354
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 355
    if-gez v3, :cond_8

    .line 356
    neg-int v3, v3

    .line 357
    :cond_8
    const/4 v0, 0x0

    aget v0, v6, v0

    sub-int v4, v0, p1

    .line 358
    if-gez v4, :cond_9

    .line 359
    neg-int v4, v4

    .line 360
    :cond_9
    add-int/2addr v3, v4

    .line 361
    if-ge v3, v5, :cond_0

    .line 362
    const/4 v0, 0x2

    aget v0, v6, v0

    sub-int v4, v0, p3

    .line 363
    if-gez v4, :cond_a

    .line 364
    neg-int v4, v4

    .line 365
    :cond_a
    add-int/2addr v3, v4

    .line 366
    if-ge v3, v5, :cond_0

    .line 367
    move v5, v3

    .line 368
    const/4 v0, 0x3

    aget v7, v6, v0

    goto/16 :goto_0

    .line 374
    :cond_b
    return v7
.end method

.method public Ξ()[B
    .locals 8

    .line 160
    const/16 v0, 0x300

    new-array v3, v0, [B

    .line 161
    const/16 v0, 0x100

    new-array v4, v0, [I

    .line 162
    const/4 v5, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v5, v0, :cond_0

    .line 163
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v0, v0, v5

    const/4 v1, 0x3

    aget v0, v0, v1

    aput v5, v4, v0

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const/4 v5, 0x0

    .line 165
    const/4 v6, 0x0

    :goto_1
    const/16 v0, 0x100

    if-ge v6, v0, :cond_1

    .line 166
    aget v7, v4, v6

    .line 167
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v1, p0, Lo/דּ;->gK:[[I

    aget-object v1, v1, v7

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 168
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v1, p0, Lo/דּ;->gK:[[I

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 169
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    iget-object v1, p0, Lo/דּ;->gK:[[I

    aget-object v1, v1, v7

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 165
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 171
    :cond_1
    return-object v3
.end method

.method public ς()V
    .locals 11

    .line 186
    const/4 v9, 0x0

    .line 187
    const/4 v10, 0x0

    .line 188
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v3, v0, :cond_5

    .line 189
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v7, v0, v3

    .line 190
    move v5, v3

    .line 191
    const/4 v0, 0x1

    aget v6, v7, v0

    .line 193
    add-int/lit8 v4, v3, 0x1

    :goto_1
    const/16 v0, 0x100

    if-ge v4, v0, :cond_1

    .line 194
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v8, v0, v4

    .line 195
    const/4 v0, 0x1

    aget v0, v8, v0

    if-ge v0, v6, :cond_0

    .line 196
    move v5, v4

    .line 197
    const/4 v0, 0x1

    aget v6, v8, v0

    .line 193
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v8, v0, v5

    .line 202
    if-eq v3, v5, :cond_2

    .line 203
    const/4 v0, 0x0

    aget v4, v8, v0

    .line 204
    const/4 v0, 0x0

    aget v0, v7, v0

    const/4 v1, 0x0

    aput v0, v8, v1

    .line 205
    const/4 v0, 0x0

    aput v4, v7, v0

    .line 206
    const/4 v0, 0x1

    aget v4, v8, v0

    .line 207
    const/4 v0, 0x1

    aget v0, v7, v0

    const/4 v1, 0x1

    aput v0, v8, v1

    .line 208
    const/4 v0, 0x1

    aput v4, v7, v0

    .line 209
    const/4 v0, 0x2

    aget v4, v8, v0

    .line 210
    const/4 v0, 0x2

    aget v0, v7, v0

    const/4 v1, 0x2

    aput v0, v8, v1

    .line 211
    const/4 v0, 0x2

    aput v4, v7, v0

    .line 212
    const/4 v0, 0x3

    aget v4, v8, v0

    .line 213
    const/4 v0, 0x3

    aget v0, v7, v0

    const/4 v1, 0x3

    aput v0, v8, v1

    .line 214
    const/4 v0, 0x3

    aput v4, v7, v0

    .line 217
    :cond_2
    if-eq v6, v9, :cond_4

    .line 218
    iget-object v0, p0, Lo/דּ;->gL:[I

    add-int v1, v10, v3

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v9

    .line 219
    add-int/lit8 v4, v9, 0x1

    :goto_2
    if-ge v4, v6, :cond_3

    .line 220
    iget-object v0, p0, Lo/דּ;->gL:[I

    aput v3, v0, v4

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 221
    :cond_3
    move v9, v6

    .line 222
    move v10, v3

    .line 188
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 225
    :cond_5
    iget-object v0, p0, Lo/דּ;->gL:[I

    add-int/lit16 v1, v10, 0xff

    shr-int/lit8 v1, v1, 0x1

    aput v1, v0, v9

    .line 226
    add-int/lit8 v4, v9, 0x1

    :goto_3
    const/16 v0, 0x100

    if-ge v4, v0, :cond_6

    .line 227
    iget-object v0, p0, Lo/דּ;->gL:[I

    const/16 v1, 0xff

    aput v1, v0, v4

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 228
    :cond_6
    return-void
.end method

.method public ϛ()V
    .locals 20

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    const/16 v1, 0x5e5

    if-ge v0, v1, :cond_0

    .line 241
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput v0, v1, Lo/דּ;->gJ:I

    .line 242
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gJ:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1e

    move-object/from16 v1, p0

    iput v0, v1, Lo/דּ;->gG:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/דּ;->gH:[B

    move-object/from16 v17, v0

    .line 244
    const/16 v18, 0x0

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    move/from16 v19, v0

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    move-object/from16 v1, p0

    iget v1, v1, Lo/דּ;->gJ:I

    mul-int/lit8 v1, v1, 0x3

    div-int v16, v0, v1

    .line 247
    div-int/lit8 v15, v16, 0x64

    .line 248
    const/16 v13, 0x400

    .line 249
    const/16 v11, 0x800

    .line 251
    const/16 v12, 0x20

    .line 252
    nop

    .line 253
    .line 254
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v12, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/דּ;->gO:[I

    mul-int v1, v6, v6

    rsub-int v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x100

    div-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    aput v1, v0, v6

    .line 254
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 259
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    const/16 v1, 0x5e5

    if-ge v0, v1, :cond_2

    .line 260
    const/4 v14, 0x3

    goto :goto_1

    .line 261
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    rem-int/lit16 v0, v0, 0x1f3

    if-eqz v0, :cond_3

    .line 262
    const/16 v14, 0x5d9

    goto :goto_1

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    rem-int/lit16 v0, v0, 0x1eb

    if-eqz v0, :cond_4

    .line 265
    const/16 v14, 0x5c1

    goto :goto_1

    .line 267
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    rem-int/lit16 v0, v0, 0x1e7

    if-eqz v0, :cond_5

    .line 268
    const/16 v14, 0x5b5

    goto :goto_1

    .line 270
    :cond_5
    const/16 v14, 0x5e5

    .line 274
    :goto_1
    const/4 v6, 0x0

    .line 275
    :cond_6
    move/from16 v0, v16

    if-ge v6, v0, :cond_b

    .line 276
    add-int/lit8 v0, v18, 0x0

    aget-byte v0, v17, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v8, v0, 0x4

    .line 277
    add-int/lit8 v0, v18, 0x1

    aget-byte v0, v17, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v9, v0, 0x4

    .line 278
    add-int/lit8 v0, v18, 0x2

    aget-byte v0, v17, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v10, v0, 0x4

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v10}, Lo/דּ;->ι(III)I

    move-result v7

    .line 281
    move-object/from16 v0, p0

    move v1, v13

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lo/דּ;->ᐝ(IIIII)V

    .line 282
    if-eqz v12, :cond_7

    .line 283
    move-object/from16 v0, p0

    move v1, v12

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lo/דּ;->ˏ(IIIII)V

    .line 285
    :cond_7
    add-int v18, v18, v14

    .line 286
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gI:I

    sub-int v18, v18, v0

    .line 289
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 290
    if-nez v15, :cond_9

    .line 291
    const/4 v15, 0x1

    .line 292
    :cond_9
    rem-int v0, v6, v15

    if-nez v0, :cond_6

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lo/דּ;->gG:I

    div-int v0, v13, v0

    sub-int/2addr v13, v0

    .line 294
    div-int/lit8 v0, v11, 0x1e

    sub-int/2addr v11, v0

    .line 295
    shr-int/lit8 v12, v11, 0x6

    .line 296
    const/4 v0, 0x1

    if-gt v12, v0, :cond_a

    .line 297
    const/4 v12, 0x0

    .line 298
    :cond_a
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/דּ;->gO:[I

    mul-int v1, v12, v12

    mul-int v2, v7, v7

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x100

    mul-int v2, v12, v12

    div-int/2addr v1, v2

    mul-int/2addr v1, v13

    aput v1, v0, v7

    .line 298
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 304
    :cond_b
    return-void
.end method

.method public ч()[B
    .locals 1

    .line 378
    invoke-virtual {p0}, Lo/דּ;->ϛ()V

    .line 379
    invoke-virtual {p0}, Lo/דּ;->ѓ()V

    .line 380
    invoke-virtual {p0}, Lo/דּ;->ς()V

    .line 381
    invoke-virtual {p0}, Lo/דּ;->Ξ()[B

    move-result-object v0

    return-object v0
.end method

.method public ѓ()V
    .locals 4

    .line 393
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v3, v0, :cond_0

    .line 394
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v0, v0, v3

    const/4 v1, 0x0

    aget v1, v0, v1

    shr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 395
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v0, v0, v3

    const/4 v1, 0x1

    aget v1, v0, v1

    shr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 396
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v0, v0, v3

    const/4 v1, 0x2

    aget v1, v0, v1

    shr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 397
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v0, v0, v3

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method protected ᐝ(IIIII)V
    .locals 4

    .line 451
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v3, v0, p2

    .line 452
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v1, 0x0

    aget v1, v3, v1

    sub-int/2addr v1, p3

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x400

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 453
    const/4 v0, 0x1

    aget v0, v3, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    sub-int/2addr v1, p4

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x400

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    .line 454
    const/4 v0, 0x2

    aget v0, v3, v0

    const/4 v1, 0x2

    aget v1, v3, v1

    sub-int/2addr v1, p5

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x400

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    .line 455
    return-void
.end method

.method protected ι(III)I
    .locals 13

    .line 471
    const v10, 0x7fffffff

    .line 472
    const v11, 0x7fffffff

    .line 473
    const/4 v8, -0x1

    .line 474
    const/4 v9, -0x1

    .line 476
    const/4 v3, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v3, v0, :cond_5

    .line 477
    iget-object v0, p0, Lo/דּ;->gK:[[I

    aget-object v12, v0, v3

    .line 478
    const/4 v0, 0x0

    aget v0, v12, v0

    sub-int v4, v0, p1

    .line 479
    if-gez v4, :cond_0

    .line 480
    neg-int v4, v4

    .line 481
    :cond_0
    const/4 v0, 0x1

    aget v0, v12, v0

    sub-int v5, v0, p2

    .line 482
    if-gez v5, :cond_1

    .line 483
    neg-int v5, v5

    .line 484
    :cond_1
    add-int/2addr v4, v5

    .line 485
    const/4 v0, 0x2

    aget v0, v12, v0

    sub-int v5, v0, p3

    .line 486
    if-gez v5, :cond_2

    .line 487
    neg-int v5, v5

    .line 488
    :cond_2
    add-int/2addr v4, v5

    .line 489
    if-ge v4, v10, :cond_3

    .line 490
    move v10, v4

    .line 491
    move v8, v3

    .line 493
    :cond_3
    iget-object v0, p0, Lo/דּ;->gM:[I

    aget v0, v0, v3

    shr-int/lit8 v0, v0, 0xc

    sub-int v6, v4, v0

    .line 494
    if-ge v6, v11, :cond_4

    .line 495
    move v11, v6

    .line 496
    move v9, v3

    .line 498
    :cond_4
    iget-object v0, p0, Lo/דּ;->gN:[I

    aget v0, v0, v3

    shr-int/lit8 v7, v0, 0xa

    .line 499
    iget-object v0, p0, Lo/דּ;->gN:[I

    aget v1, v0, v3

    sub-int/2addr v1, v7

    aput v1, v0, v3

    .line 500
    iget-object v0, p0, Lo/דּ;->gM:[I

    aget v1, v0, v3

    shl-int/lit8 v2, v7, 0xa

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 476
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 502
    :cond_5
    iget-object v0, p0, Lo/דּ;->gN:[I

    aget v1, v0, v8

    add-int/lit8 v1, v1, 0x40

    aput v1, v0, v8

    .line 503
    iget-object v0, p0, Lo/דּ;->gM:[I

    aget v1, v0, v8

    const/high16 v2, 0x10000

    sub-int/2addr v1, v2

    aput v1, v0, v8

    .line 504
    return v9
.end method
