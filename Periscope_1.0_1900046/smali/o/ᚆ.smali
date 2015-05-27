.class Lo/ᚆ;
.super Lo/ᚁ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᚆ$if;
    }
.end annotation


# static fields
.field private static final xa:[F


# instance fields
.field private uR:J

.field private wY:Z

.field private final xb:Lo/ᴫ;

.field private final xc:[Z

.field private final xd:Lo/ᚆ$if;

.field private final xe:Lo/ᚆ$if;

.field private final xf:Lo/ᚆ$if;

.field private xg:Z

.field private xh:Z

.field private xi:J

.field private xj:J

.field private final xk:Lo/প;

.field private xl:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lo/ᚆ;->xa:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Lo/ᒳ;Lo/ᴫ;)V
    .locals 3

    .line 88
    invoke-direct {p0, p1}, Lo/ᚁ;-><init>(Lo/ᒳ;)V

    .line 89
    iput-object p2, p0, Lo/ᚆ;->xb:Lo/ᴫ;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lo/ᚆ;->xc:[Z

    .line 91
    new-instance v0, Lo/ᚆ$if;

    const/4 v1, 0x7

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lo/ᚆ$if;-><init>(II)V

    iput-object v0, p0, Lo/ᚆ;->xd:Lo/ᚆ$if;

    .line 92
    new-instance v0, Lo/ᚆ$if;

    const/16 v1, 0x8

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lo/ᚆ$if;-><init>(II)V

    iput-object v0, p0, Lo/ᚆ;->xe:Lo/ᚆ$if;

    .line 93
    new-instance v0, Lo/ᚆ$if;

    const/4 v1, 0x6

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lo/ᚆ$if;-><init>(II)V

    iput-object v0, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    .line 94
    new-instance v0, Lo/প;

    invoke-direct {v0}, Lo/প;-><init>()V

    iput-object v0, p0, Lo/ᚆ;->xk:Lo/প;

    .line 95
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lo/ᚆ;->xl:[I

    .line 96
    return-void
.end method

.method private ˊ(JI)V
    .locals 4

    .line 190
    iget-object v0, p0, Lo/ᚆ;->xd:Lo/ᚆ$if;

    invoke-virtual {v0, p3}, Lo/ᚆ$if;->ᙆ(I)Z

    .line 191
    iget-object v0, p0, Lo/ᚆ;->xe:Lo/ᚆ$if;

    invoke-virtual {v0, p3}, Lo/ᚆ$if;->ᙆ(I)Z

    .line 192
    iget-object v0, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    invoke-virtual {v0, p3}, Lo/ᚆ$if;->ᙆ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    iget-object v0, v0, Lo/ᚆ$if;->xp:[B

    iget-object v1, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    iget v1, v1, Lo/ᚆ$if;->xq:I

    invoke-direct {p0, v0, v1}, Lo/ᚆ;->ˋ([BI)I

    move-result v3

    .line 194
    iget-object v0, p0, Lo/ᚆ;->xk:Lo/প;

    iget-object v1, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    iget-object v1, v1, Lo/ᚆ$if;->xp:[B

    invoke-virtual {v0, v1, v3}, Lo/প;->ʻ([BI)V

    .line 195
    iget-object v0, p0, Lo/ᚆ;->xb:Lo/ᴫ;

    iget-object v1, p0, Lo/ᚆ;->xk:Lo/প;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lo/ᴫ;->ˊ(Lo/প;JZ)V

    .line 197
    :cond_0
    return-void
.end method

.method private ˊ(Lo/ন;I)V
    .locals 6

    .line 312
    const/16 v2, 0x8

    .line 313
    const/16 v3, 0x8

    .line 314
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_2

    .line 315
    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {p1}, Lo/ন;->ʭ()I

    move-result v5

    .line 317
    add-int v0, v2, v5

    add-int/lit16 v0, v0, 0x100

    rem-int/lit16 v3, v0, 0x100

    .line 319
    :cond_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 314
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    :cond_2
    return-void
.end method

.method private ˊ(Lo/ᚆ$if;Lo/ᚆ$if;)V
    .locals 32

    .line 200
    move-object/from16 v0, p1

    iget v0, v0, Lo/ᚆ$if;->xq:I

    new-array v9, v0, [B

    .line 201
    move-object/from16 v0, p2

    iget v0, v0, Lo/ᚆ$if;->xq:I

    new-array v10, v0, [B

    .line 202
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ᚆ$if;->xp:[B

    move-object/from16 v1, p1

    iget v1, v1, Lo/ᚆ$if;->xq:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v9, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object/from16 v0, p2

    iget-object v0, v0, Lo/ᚆ$if;->xp:[B

    move-object/from16 v1, p2

    iget v1, v1, Lo/ᚆ$if;->xq:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v10, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ᚆ$if;->xp:[B

    move-object/from16 v1, p1

    iget v1, v1, Lo/ᚆ$if;->xq:I

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Lo/ᚆ;->ˋ([BI)I

    .line 210
    new-instance v12, Lo/ন;

    move-object/from16 v0, p1

    iget-object v0, v0, Lo/ᚆ$if;->xp:[B

    invoke-direct {v12, v0}, Lo/ন;-><init>([B)V

    .line 211
    const/16 v0, 0x20

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 212
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Lo/ন;->ɾ(I)I

    move-result v13

    .line 213
    const/16 v0, 0x10

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 214
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    .line 216
    const/4 v14, 0x1

    .line 217
    const/16 v0, 0x64

    if-eq v13, v0, :cond_0

    const/16 v0, 0x6e

    if-eq v13, v0, :cond_0

    const/16 v0, 0x7a

    if-eq v13, v0, :cond_0

    const/16 v0, 0xf4

    if-eq v13, v0, :cond_0

    const/16 v0, 0x2c

    if-eq v13, v0, :cond_0

    const/16 v0, 0x53

    if-eq v13, v0, :cond_0

    const/16 v0, 0x56

    if-eq v13, v0, :cond_0

    const/16 v0, 0x76

    if-eq v13, v0, :cond_0

    const/16 v0, 0x80

    if-eq v13, v0, :cond_0

    const/16 v0, 0x8a

    if-ne v13, v0, :cond_5

    .line 220
    :cond_0
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v14

    .line 221
    const/4 v0, 0x3

    if-ne v14, v0, :cond_1

    .line 222
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 224
    :cond_1
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    .line 225
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    .line 226
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 227
    invoke-virtual {v12}, Lo/ন;->ʎ()Z

    move-result v15

    .line 228
    if-eqz v15, :cond_5

    .line 229
    const/4 v0, 0x3

    if-eq v14, v0, :cond_2

    const/16 v16, 0x8

    goto :goto_0

    :cond_2
    const/16 v16, 0xc

    .line 230
    :goto_0
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 231
    invoke-virtual {v12}, Lo/ন;->ʎ()Z

    move-result v18

    .line 232
    if-eqz v18, :cond_4

    .line 233
    move/from16 v0, v17

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    const/16 v0, 0x10

    goto :goto_2

    :cond_3
    const/16 v0, 0x40

    :goto_2
    move-object/from16 v1, p0

    invoke-direct {v1, v12, v0}, Lo/ᚆ;->ˊ(Lo/ন;I)V

    .line 230
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 239
    :cond_5
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    .line 240
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v0

    int-to-long v15, v0

    .line 241
    const-wide/16 v0, 0x0

    cmp-long v0, v15, v0

    if-nez v0, :cond_6

    .line 242
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    goto :goto_4

    .line 243
    :cond_6
    const-wide/16 v0, 0x1

    cmp-long v0, v15, v0

    if-nez v0, :cond_7

    .line 244
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 245
    invoke-virtual {v12}, Lo/ন;->ʭ()I

    .line 246
    invoke-virtual {v12}, Lo/ন;->ʭ()I

    .line 247
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v0

    int-to-long v1, v0

    move-wide/from16 v17, v1

    .line 248
    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    int-to-long v0, v0

    cmp-long v0, v0, v17

    if-gez v0, :cond_7

    .line 249
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    .line 248
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 252
    :cond_7
    :goto_4
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    .line 253
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 255
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v0

    add-int/lit8 v17, v0, 0x1

    .line 256
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v0

    add-int/lit8 v18, v0, 0x1

    .line 257
    invoke-virtual {v12}, Lo/ন;->ʎ()Z

    move-result v19

    .line 258
    if-eqz v19, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    rsub-int/lit8 v0, v0, 0x2

    mul-int v20, v0, v18

    .line 259
    if-nez v19, :cond_9

    .line 260
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 263
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lo/ন;->ɪ(I)V

    .line 264
    mul-int/lit8 v21, v17, 0x10

    .line 265
    mul-int/lit8 v22, v20, 0x10

    .line 266
    invoke-virtual {v12}, Lo/ন;->ʎ()Z

    move-result v23

    .line 267
    if-eqz v23, :cond_f

    .line 268
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v24

    .line 269
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v25

    .line 270
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v26

    .line 271
    invoke-virtual {v12}, Lo/ন;->ʝ()I

    move-result v27

    .line 273
    if-nez v14, :cond_b

    .line 274
    const/16 v28, 0x1

    .line 275
    if-eqz v19, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    rsub-int/lit8 v29, v0, 0x2

    goto :goto_a

    .line 277
    :cond_b
    const/4 v0, 0x3

    if-ne v14, v0, :cond_c

    const/16 v30, 0x1

    goto :goto_7

    :cond_c
    const/16 v30, 0x2

    .line 278
    :goto_7
    const/4 v0, 0x1

    if-ne v14, v0, :cond_d

    const/16 v31, 0x2

    goto :goto_8

    :cond_d
    const/16 v31, 0x1

    .line 279
    :goto_8
    move/from16 v28, v30

    .line 280
    if-eqz v19, :cond_e

    const/4 v0, 0x1

    goto :goto_9

    :cond_e
    const/4 v0, 0x0

    :goto_9
    rsub-int/lit8 v0, v0, 0x2

    mul-int v29, v31, v0

    .line 282
    :goto_a
    add-int v0, v24, v25

    mul-int v0, v0, v28

    sub-int v21, v21, v0

    .line 283
    add-int v0, v26, v27

    mul-int v0, v0, v29

    sub-int v22, v22, v0

    .line 286
    :cond_f
    const/high16 v24, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v12}, Lo/ন;->ʎ()Z

    move-result v25

    .line 288
    if-eqz v25, :cond_13

    .line 289
    invoke-virtual {v12}, Lo/ন;->ʎ()Z

    move-result v26

    .line 290
    if-eqz v26, :cond_13

    .line 291
    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Lo/ন;->ɾ(I)I

    move-result v27

    .line 292
    move/from16 v0, v27

    const/16 v1, 0xff

    if-ne v0, v1, :cond_11

    .line 293
    const/16 v0, 0x10

    invoke-virtual {v12, v0}, Lo/ন;->ɾ(I)I

    move-result v28

    .line 294
    const/16 v0, 0x10

    invoke-virtual {v12, v0}, Lo/ন;->ɾ(I)I

    move-result v29

    .line 295
    if-eqz v28, :cond_10

    if-eqz v29, :cond_10

    .line 296
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v1, v29

    int-to-float v1, v1

    div-float v24, v0, v1

    .line 298
    :cond_10
    goto :goto_b

    :cond_11
    sget-object v0, Lo/ᚆ;->xa:[F

    array-length v0, v0

    move/from16 v1, v27

    if-ge v1, v0, :cond_12

    .line 299
    sget-object v0, Lo/ᚆ;->xa:[F

    aget v24, v0, v27

    goto :goto_b

    .line 301
    :cond_12
    const-string v0, "H264Reader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᚆ;->wZ:Lo/ᒳ;

    const-string v1, "video/avc"

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v24

    move-object v8, v11

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-static/range {v1 .. v8}, Lo/ب;->ˊ(Ljava/lang/String;IJIIFLjava/util/List;)Lo/ب;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ᒳ;->ˊ(Lo/ب;)V

    .line 308
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ᚆ;->wY:Z

    .line 309
    return-void
.end method

.method private ˋ([BI)I
    .locals 11

    .line 334
    const/4 v3, 0x0

    .line 335
    const/4 v4, 0x0

    .line 336
    :cond_0
    :goto_0
    if-ge v3, p2, :cond_2

    .line 337
    invoke-direct {p0, p1, v3, p2}, Lo/ᚆ;->ᐝ([BII)I

    move-result v3

    .line 338
    if-ge v3, p2, :cond_0

    .line 339
    iget-object v0, p0, Lo/ᚆ;->xl:[I

    array-length v0, v0

    if-gt v0, v4, :cond_1

    .line 341
    iget-object v0, p0, Lo/ᚆ;->xl:[I

    iget-object v1, p0, Lo/ᚆ;->xl:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lo/ᚆ;->xl:[I

    .line 344
    :cond_1
    iget-object v0, p0, Lo/ᚆ;->xl:[I

    move v1, v4

    add-int/lit8 v4, v4, 0x1

    aput v3, v0, v1

    .line 345
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 349
    :cond_2
    sub-int v5, p2, v4

    .line 350
    const/4 v6, 0x0

    .line 351
    const/4 v7, 0x0

    .line 352
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_3

    .line 353
    iget-object v0, p0, Lo/ᚆ;->xl:[I

    aget v9, v0, v8

    .line 354
    sub-int v10, v9, v6

    .line 355
    invoke-static {p1, v6, p1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    add-int/lit8 v0, v10, 0x3

    add-int/2addr v6, v0

    .line 357
    add-int/lit8 v0, v10, 0x2

    add-int/2addr v7, v0

    .line 352
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 360
    :cond_3
    sub-int v8, v5, v7

    .line 361
    invoke-static {p1, v6, p1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    return v5
.end method

.method private ˏ([BII)V
    .locals 1

    .line 182
    iget-boolean v0, p0, Lo/ᚆ;->wY:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lo/ᚆ;->xd:Lo/ᚆ$if;

    invoke-virtual {v0, p1, p2, p3}, Lo/ᚆ$if;->ʻ([BII)V

    .line 184
    iget-object v0, p0, Lo/ᚆ;->xe:Lo/ᚆ$if;

    invoke-virtual {v0, p1, p2, p3}, Lo/ᚆ$if;->ʻ([BII)V

    .line 186
    :cond_0
    iget-object v0, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    invoke-virtual {v0, p1, p2, p3}, Lo/ᚆ$if;->ʻ([BII)V

    .line 187
    return-void
.end method

.method private ᐝ([BII)I
    .locals 3

    .line 366
    move v2, p2

    :goto_0
    add-int/lit8 v0, p3, -0x2

    if-ge v2, v0, :cond_1

    .line 367
    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x2

    aget-byte v0, p1, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 368
    return v2

    .line 366
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return p3
.end method

.method private ᓒ(I)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lo/ᚆ;->wY:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lo/ᚆ;->xd:Lo/ᚆ$if;

    invoke-virtual {v0, p1}, Lo/ᚆ$if;->ᕪ(I)V

    .line 176
    iget-object v0, p0, Lo/ᚆ;->xe:Lo/ᚆ$if;

    invoke-virtual {v0, p1}, Lo/ᚆ$if;->ᕪ(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    invoke-virtual {v0, p1}, Lo/ᚆ$if;->ᕪ(I)V

    .line 179
    return-void
.end method


# virtual methods
.method public ˊ(Lo/প;JZ)V
    .locals 16

    .line 111
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lo/প;->ϋ()I

    move-result v0

    if-lez v0, :cond_9

    .line 112
    invoke-virtual/range {p1 .. p1}, Lo/প;->getPosition()I

    move-result v7

    .line 113
    invoke-virtual/range {p1 .. p1}, Lo/প;->limit()I

    move-result v8

    .line 114
    move-object/from16 v0, p1

    iget-object v9, v0, Lo/প;->fw:[B

    .line 117
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/ᚆ;->uR:J

    invoke-virtual/range {p1 .. p1}, Lo/প;->ϋ()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lo/ᚆ;->uR:J

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᚆ;->wZ:Lo/ᒳ;

    invoke-virtual/range {p1 .. p1}, Lo/প;->ϋ()I

    move-result v1

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v1}, Lo/ᒳ;->ˊ(Lo/প;I)V

    .line 121
    :goto_1
    if-ge v7, v8, :cond_8

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᚆ;->xc:[Z

    invoke-static {v9, v7, v8, v0}, Lo/ܫ;->ˊ([BII[Z)I

    move-result v10

    .line 123
    if-ge v10, v8, :cond_7

    .line 128
    sub-int v11, v10, v7

    .line 129
    if-lez v11, :cond_0

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v10}, Lo/ᚆ;->ˏ([BII)V

    .line 133
    :cond_0
    invoke-static {v9, v10}, Lo/ܫ;->ᐝ([BI)I

    move-result v12

    .line 134
    sub-int v13, v8, v10

    .line 135
    const/16 v0, 0x9

    if-ne v12, v0, :cond_4

    .line 136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ᚆ;->xg:Z

    if-eqz v0, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ᚆ;->xh:Z

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ᚆ;->wY:Z

    if-nez v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᚆ;->xd:Lo/ᚆ$if;

    invoke-virtual {v0}, Lo/ᚆ$if;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᚆ;->xe:Lo/ᚆ$if;

    invoke-virtual {v0}, Lo/ᚆ$if;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᚆ;->xd:Lo/ᚆ$if;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ᚆ;->xe:Lo/ᚆ$if;

    move-object/from16 v2, p0

    invoke-direct {v2, v0, v1}, Lo/ᚆ;->ˊ(Lo/ᚆ$if;Lo/ᚆ$if;)V

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ᚆ;->xh:Z

    if-eqz v0, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 141
    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/ᚆ;->uR:J

    move-object/from16 v2, p0

    iget-wide v2, v2, Lo/ᚆ;->xi:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int v15, v0, v13

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᚆ;->wZ:Lo/ᒳ;

    move-object/from16 v1, p0

    iget-wide v1, v1, Lo/ᚆ;->xj:J

    move v3, v14

    move v4, v15

    move v5, v13

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lo/ᒳ;->ˊ(JIII[B)V

    .line 143
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ᚆ;->xg:Z

    .line 145
    :cond_3
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ᚆ;->xg:Z

    .line 146
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ᚆ;->xh:Z

    .line 147
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lo/ᚆ;->xj:J

    .line 148
    move-object/from16 v0, p0

    iget-wide v0, v0, Lo/ᚆ;->uR:J

    int-to-long v2, v13

    sub-long/2addr v0, v2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lo/ᚆ;->xi:J

    goto :goto_3

    .line 149
    :cond_4
    const/4 v0, 0x5

    if-ne v12, v0, :cond_5

    .line 150
    const/4 v0, 0x1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ᚆ;->xh:Z

    .line 155
    :cond_5
    :goto_3
    if-gez v11, :cond_6

    neg-int v0, v11

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    invoke-direct {v1, v2, v3, v0}, Lo/ᚆ;->ˊ(JI)V

    .line 157
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lo/ᚆ;->ᓒ(I)V

    .line 159
    add-int/lit8 v7, v10, 0x4

    .line 160
    goto :goto_5

    .line 161
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v8}, Lo/ᚆ;->ˏ([BII)V

    .line 162
    move v7, v8

    .line 164
    :goto_5
    goto/16 :goto_1

    .line 165
    :cond_8
    goto/16 :goto_0

    .line 166
    :cond_9
    return-void
.end method

.method public ᒮ()V
    .locals 2

    .line 100
    iget-object v0, p0, Lo/ᚆ;->xb:Lo/ᴫ;

    invoke-virtual {v0}, Lo/ᴫ;->ᒮ()V

    .line 101
    iget-object v0, p0, Lo/ᚆ;->xc:[Z

    invoke-static {v0}, Lo/ܫ;->ˊ([Z)V

    .line 102
    iget-object v0, p0, Lo/ᚆ;->xd:Lo/ᚆ$if;

    invoke-virtual {v0}, Lo/ᚆ$if;->reset()V

    .line 103
    iget-object v0, p0, Lo/ᚆ;->xe:Lo/ᚆ$if;

    invoke-virtual {v0}, Lo/ᚆ$if;->reset()V

    .line 104
    iget-object v0, p0, Lo/ᚆ;->xf:Lo/ᚆ$if;

    invoke-virtual {v0}, Lo/ᚆ$if;->reset()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᚆ;->xg:Z

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/ᚆ;->uR:J

    .line 107
    return-void
.end method

.method public ᴫ()V
    .locals 0

    .line 171
    return-void
.end method
