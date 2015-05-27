.class public Lo/ᖦ;
.super Lo/ί;
.source ""

# interfaces
.implements Lo/ᵁ$ˊ;
.implements Lo/ᵊ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᖦ$ˊ;,
        Lo/ᖦ$if;,
        Lo/ᖦ$ˋ;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private Ť:I

.field private Ɔ:Lo/ᓴ;

.field private ƈ:Lo/ᵉ$if;

.field private ȝ:Lo/ᵁ$if;

.field private Ȳ:Z

.field private ʜ:I

.field private Ύ:I

.field private Κ:Lo/ᖦ$ˋ;

.field private Ἴ:Landroid/content/Context;

.field private ﺧ:Z

.field private ｓ:I

.field private ｼ:Lo/ᵁ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ᖦ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1, p2}, Lo/ί;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object p1, p0, Lo/ᖦ;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᖦ;->setBaselineAligned(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    const/high16 v0, 0x42600000    # 56.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ᖦ;->ｓ:I

    .line 82
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ᖦ;->Ύ:I

    .line 83
    iput-object p1, p0, Lo/ᖦ;->Ἴ:Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lo/ᖦ;->Ť:I

    .line 85
    return-void
.end method

.method static ˎ(Landroid/view/View;IIII)I
    .locals 11

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object v2, v0

    .line 405
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sub-int v3, v0, p4

    .line 407
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 408
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 410
    instance-of v0, p0, Lo/ᴬ;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lo/ᴬ;

    move-object v6, v0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 412
    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lo/ᴬ;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 414
    :goto_1
    const/4 v8, 0x0

    .line 415
    if-lez p2, :cond_4

    if-eqz v7, :cond_2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_4

    .line 416
    :cond_2
    mul-int v0, p1, p2

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 418
    invoke-virtual {p0, v9, v5}, Landroid/view/View;->measure(II)V

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 421
    div-int v8, v10, p1

    .line 422
    rem-int v0, v10, p1

    if-eqz v0, :cond_3

    add-int/lit8 v8, v8, 0x1

    .line 423
    :cond_3
    if-eqz v7, :cond_4

    const/4 v0, 0x2

    if-ge v8, v0, :cond_4

    const/4 v8, 0x2

    .line 426
    :cond_4
    iget-boolean v0, v2, Lo/ᖦ$ˊ;->Λ:Z

    if-nez v0, :cond_5

    if-eqz v7, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    .line 427
    :goto_2
    iput-boolean v9, v2, Lo/ᖦ$ˊ;->Ϯ:Z

    .line 429
    iput v8, v2, Lo/ᖦ$ˊ;->ϙ:I

    .line 430
    mul-int v10, v8, p1

    .line 431
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v0, v5}, Landroid/view/View;->measure(II)V

    .line 433
    return v8
.end method

.method private ᐨ(II)V
    .locals 32

    .line 177
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 178
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 179
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 181
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingRight()I

    move-result v1

    add-int v8, v0, v1

    .line 182
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingBottom()I

    move-result v1

    add-int v9, v0, v1

    .line 184
    move/from16 v0, p2

    const/4 v1, -0x2

    invoke-static {v0, v9, v1}, Lo/ᖦ;->getChildMeasureSpec(III)I

    move-result v10

    .line 187
    sub-int/2addr v6, v8

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᖦ;->ｓ:I

    div-int v11, v6, v0

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᖦ;->ｓ:I

    rem-int v12, v6, v0

    .line 193
    if-nez v11, :cond_0

    .line 195
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lo/ᖦ;->setMeasuredDimension(II)V

    .line 196
    return-void

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᖦ;->ｓ:I

    div-int v1, v12, v11

    add-int v13, v0, v1

    .line 201
    move v14, v11

    .line 202
    const/4 v15, 0x0

    .line 203
    const/16 v16, 0x0

    .line 204
    const/16 v17, 0x0

    .line 205
    const/16 v18, 0x0

    .line 206
    const/16 v19, 0x0

    .line 209
    const-wide/16 v20, 0x0

    .line 211
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getChildCount()I

    move-result v22

    .line 212
    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 214
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    .line 216
    :cond_1
    move-object/from16 v0, v24

    instance-of v0, v0, Lo/ᴬ;

    move/from16 v25, v0

    .line 217
    add-int/lit8 v18, v18, 0x1

    .line 219
    if-eqz v25, :cond_2

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᖦ;->Ύ:I

    move-object/from16 v1, p0

    iget v1, v1, Lo/ᖦ;->Ύ:I

    move-object/from16 v2, v24

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 225
    :cond_2
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v26, v0

    .line 226
    const/4 v0, 0x0

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lo/ᖦ$ˊ;->ϵ:Z

    .line 227
    const/4 v0, 0x0

    move-object/from16 v1, v26

    iput v0, v1, Lo/ᖦ$ˊ;->ϝ:I

    .line 228
    const/4 v0, 0x0

    move-object/from16 v1, v26

    iput v0, v1, Lo/ᖦ$ˊ;->ϙ:I

    .line 229
    const/4 v0, 0x0

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lo/ᖦ$ˊ;->Ϯ:Z

    .line 230
    const/4 v0, 0x0

    move-object/from16 v1, v26

    iput v0, v1, Lo/ᖦ$ˊ;->leftMargin:I

    .line 231
    const/4 v0, 0x0

    move-object/from16 v1, v26

    iput v0, v1, Lo/ᖦ$ˊ;->rightMargin:I

    .line 232
    if-eqz v25, :cond_3

    move-object/from16 v0, v24

    check-cast v0, Lo/ᴬ;

    invoke-virtual {v0}, Lo/ᴬ;->hasText()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    move-object/from16 v1, v26

    iput-boolean v0, v1, Lo/ᖦ$ˊ;->ϯ:Z

    .line 235
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Λ:Z

    if-eqz v0, :cond_4

    const/16 v27, 0x1

    goto :goto_2

    :cond_4
    move/from16 v27, v14

    .line 237
    :goto_2
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v13, v1, v10, v9}, Lo/ᖦ;->ˎ(Landroid/view/View;IIII)I

    move-result v28

    .line 240
    move/from16 v0, v16

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 241
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Ϯ:Z

    if-eqz v0, :cond_5

    add-int/lit8 v17, v17, 0x1

    .line 242
    :cond_5
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Λ:Z

    if-eqz v0, :cond_6

    const/16 v19, 0x1

    .line 244
    :cond_6
    sub-int v14, v14, v28

    .line 245
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 246
    move/from16 v0, v28

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    shl-int v0, v0, v23

    int-to-long v0, v0

    or-long v20, v20, v0

    .line 212
    :cond_7
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 251
    :cond_8
    if-eqz v19, :cond_9

    move/from16 v0, v18

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/16 v23, 0x1

    goto :goto_4

    :cond_9
    const/16 v23, 0x0

    .line 256
    :goto_4
    const/16 v24, 0x0

    .line 257
    :goto_5
    if-lez v17, :cond_13

    if-lez v14, :cond_13

    .line 258
    const v25, 0x7fffffff

    .line 259
    const-wide/16 v26, 0x0

    .line 260
    const/16 v28, 0x0

    .line 261
    const/16 v29, 0x0

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 262
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 263
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v31, v0

    .line 266
    move-object/from16 v0, v31

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Ϯ:Z

    if-nez v0, :cond_a

    goto :goto_7

    .line 269
    :cond_a
    move-object/from16 v0, v31

    iget v0, v0, Lo/ᖦ$ˊ;->ϙ:I

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 270
    move-object/from16 v0, v31

    iget v0, v0, Lo/ᖦ$ˊ;->ϙ:I

    move/from16 v25, v0

    .line 271
    const/4 v0, 0x1

    shl-int v0, v0, v29

    int-to-long v1, v0

    move-wide/from16 v26, v1

    .line 272
    const/16 v28, 0x1

    goto :goto_7

    .line 273
    :cond_b
    move-object/from16 v0, v31

    iget v0, v0, Lo/ᖦ$ˊ;->ϙ:I

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 274
    const/4 v0, 0x1

    shl-int v0, v0, v29

    int-to-long v0, v0

    or-long v26, v26, v0

    .line 275
    add-int/lit8 v28, v28, 0x1

    .line 261
    :cond_c
    :goto_7
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 280
    :cond_d
    or-long v20, v20, v26

    .line 282
    move/from16 v0, v28

    if-le v0, v14, :cond_e

    goto/16 :goto_a

    .line 285
    :cond_e
    add-int/lit8 v25, v25, 0x1

    .line 287
    const/16 v29, 0x0

    :goto_8
    move/from16 v0, v29

    move/from16 v1, v22

    if-ge v0, v1, :cond_12

    .line 288
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 289
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v31, v0

    .line 290
    const/4 v0, 0x1

    shl-int v0, v0, v29

    int-to-long v0, v0

    and-long v0, v0, v26

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 292
    move-object/from16 v0, v31

    iget v0, v0, Lo/ᖦ$ˊ;->ϙ:I

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    shl-int v0, v0, v29

    int-to-long v0, v0

    or-long v20, v20, v0

    goto :goto_9

    .line 296
    :cond_f
    if-eqz v23, :cond_10

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->ϯ:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    if-ne v14, v0, :cond_10

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᖦ;->Ύ:I

    add-int/2addr v0, v13

    move-object/from16 v1, p0

    iget v1, v1, Lo/ᖦ;->Ύ:I

    move-object/from16 v2, v30

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    :cond_10
    move-object/from16 v0, v31

    iget v0, v0, Lo/ᖦ$ˊ;->ϙ:I

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v31

    iput v0, v1, Lo/ᖦ$ˊ;->ϙ:I

    .line 301
    const/4 v0, 0x1

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lo/ᖦ$ˊ;->ϵ:Z

    .line 302
    add-int/lit8 v14, v14, -0x1

    .line 287
    :cond_11
    :goto_9
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 305
    :cond_12
    const/16 v24, 0x1

    .line 306
    goto/16 :goto_5

    .line 311
    :cond_13
    :goto_a
    if-nez v19, :cond_14

    move/from16 v0, v18

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    const/16 v25, 0x1

    goto :goto_b

    :cond_14
    const/16 v25, 0x0

    .line 312
    :goto_b
    if-lez v14, :cond_20

    const-wide/16 v0, 0x0

    cmp-long v0, v20, v0

    if-eqz v0, :cond_20

    add-int/lit8 v0, v18, -0x1

    if-lt v14, v0, :cond_15

    if-nez v25, :cond_15

    move/from16 v0, v16

    const/4 v1, 0x1

    if-le v0, v1, :cond_20

    .line 314
    :cond_15
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    int-to-float v1, v0

    move/from16 v26, v1

    .line 316
    if-nez v25, :cond_17

    .line 318
    const-wide/16 v0, 0x1

    and-long v0, v0, v20

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 319
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v27, v0

    .line 320
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->ϯ:Z

    if-nez v0, :cond_16

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v26, v26, v0

    .line 322
    :cond_16
    add-int/lit8 v0, v22, -0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    int-to-long v0, v0

    and-long v0, v0, v20

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 323
    add-int/lit8 v0, v22, -0x1

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v27, v0

    .line 324
    move-object/from16 v0, v27

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->ϯ:Z

    if-nez v0, :cond_17

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v26, v26, v0

    .line 328
    :cond_17
    const/4 v0, 0x0

    cmpl-float v0, v26, v0

    if-lez v0, :cond_18

    mul-int v0, v14, v13

    int-to-float v0, v0

    div-float v0, v0, v26

    float-to-int v1, v0

    move/from16 v27, v1

    goto :goto_c

    :cond_18
    const/16 v27, 0x0

    .line 331
    :goto_c
    const/16 v28, 0x0

    :goto_d
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_1f

    .line 332
    const/4 v0, 0x1

    shl-int v0, v0, v28

    int-to-long v0, v0

    and-long v0, v0, v20

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    goto/16 :goto_e

    .line 334
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 335
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v30, v0

    .line 336
    move-object/from16 v0, v29

    instance-of v0, v0, Lo/ᴬ;

    if-eqz v0, :cond_1b

    .line 338
    move/from16 v0, v27

    move-object/from16 v1, v30

    iput v0, v1, Lo/ᖦ$ˊ;->ϝ:I

    .line 339
    const/4 v0, 0x1

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lo/ᖦ$ˊ;->ϵ:Z

    .line 340
    if-nez v28, :cond_1a

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->ϯ:Z

    if-nez v0, :cond_1a

    .line 343
    move/from16 v0, v27

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    move-object/from16 v1, v30

    iput v0, v1, Lo/ᖦ$ˊ;->leftMargin:I

    .line 345
    :cond_1a
    const/16 v24, 0x1

    goto :goto_e

    .line 346
    :cond_1b
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Λ:Z

    if-eqz v0, :cond_1c

    .line 347
    move/from16 v0, v27

    move-object/from16 v1, v30

    iput v0, v1, Lo/ᖦ$ˊ;->ϝ:I

    .line 348
    const/4 v0, 0x1

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lo/ᖦ$ˊ;->ϵ:Z

    .line 349
    move/from16 v0, v27

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    move-object/from16 v1, v30

    iput v0, v1, Lo/ᖦ$ˊ;->rightMargin:I

    .line 350
    const/16 v24, 0x1

    goto :goto_e

    .line 355
    :cond_1c
    if-eqz v28, :cond_1d

    .line 356
    div-int/lit8 v0, v27, 0x2

    move-object/from16 v1, v30

    iput v0, v1, Lo/ᖦ$ˊ;->leftMargin:I

    .line 358
    :cond_1d
    add-int/lit8 v0, v22, -0x1

    move/from16 v1, v28

    if-eq v1, v0, :cond_1e

    .line 359
    div-int/lit8 v0, v27, 0x2

    move-object/from16 v1, v30

    iput v0, v1, Lo/ᖦ$ˊ;->rightMargin:I

    .line 331
    :cond_1e
    :goto_e
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_d

    .line 364
    :cond_1f
    const/4 v14, 0x0

    .line 368
    :cond_20
    if-eqz v24, :cond_22

    .line 369
    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_22

    .line 370
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 371
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v28, v0

    .line 373
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->ϵ:Z

    if-nez v0, :cond_21

    goto :goto_10

    .line 375
    :cond_21
    move-object/from16 v0, v28

    iget v0, v0, Lo/ᖦ$ˊ;->ϙ:I

    mul-int/2addr v0, v13

    move-object/from16 v1, v28

    iget v1, v1, Lo/ᖦ$ˊ;->ϝ:I

    add-int v29, v0, v1

    .line 376
    move/from16 v0, v29

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move-object/from16 v1, v27

    invoke-virtual {v1, v0, v10}, Landroid/view/View;->measure(II)V

    .line 369
    :goto_10
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 381
    :cond_22
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v0, :cond_23

    .line 382
    move v7, v15

    .line 385
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lo/ᖦ;->setMeasuredDimension(II)V

    .line 386
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 586
    if-eqz p1, :cond_0

    instance-of v0, p1, Lo/ᖦ$ˊ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 689
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->זּ()Z

    .line 692
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/ᖦ;->רּ()Lo/ᖦ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lo/ᖦ;->ˋ(Landroid/util/AttributeSet;)Lo/ᖦ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lo/ᖦ;->ˊ(Landroid/view/ViewGroup$LayoutParams;)Lo/ᖦ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 677
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 126
    invoke-super {p0, p1}, Lo/ί;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᓴ;->ˈ(Z)V

    .line 132
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->hideOverflowMenu()Z

    .line 134
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->showOverflowMenu()Z

    .line 137
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 543
    invoke-super {p0}, Lo/ί;->onDetachedFromWindow()V

    .line 544
    invoke-virtual {p0}, Lo/ᖦ;->dismissPopupMenus()V

    .line 545
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    .line 438
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lo/ᖦ;->Ȳ:Z

    if-nez v0, :cond_0

    .line 439
    invoke-super/range {p0 .. p5}, Lo/ί;->onLayout(ZIIII)V

    .line 440
    return-void

    .line 443
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getChildCount()I

    move-result v5

    .line 444
    sub-int v0, p5, p3

    div-int/lit8 v6, v0, 0x2

    .line 445
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->ŀ()I

    move-result v7

    .line 446
    const/4 v8, 0x0

    .line 447
    const/4 v9, 0x0

    .line 448
    const/4 v10, 0x0

    .line 449
    sub-int v0, p4, p2

    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingLeft()I

    move-result v1

    sub-int v11, v0, v1

    .line 450
    const/4 v12, 0x0

    .line 451
    invoke-static/range {p0 .. p0}, Lo/ᓯ;->ᐩ(Landroid/view/View;)Z

    move-result v13

    .line 452
    const/4 v14, 0x0

    :goto_0
    if-ge v14, v5, :cond_6

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 454
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 455
    goto/16 :goto_2

    .line 458
    :cond_1
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v16, v0

    .line 459
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Λ:Z

    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 461
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lo/ᖦ;->เ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    add-int/2addr v8, v7

    .line 464
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 467
    if-eqz v13, :cond_3

    .line 468
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingLeft()I

    move-result v0

    move-object/from16 v1, v16

    iget v1, v1, Lo/ᖦ$ˊ;->leftMargin:I

    add-int v19, v0, v1

    .line 469
    add-int v18, v19, v8

    goto :goto_1

    .line 471
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move-object/from16 v1, v16

    iget v1, v1, Lo/ᖦ$ˊ;->rightMargin:I

    sub-int v18, v0, v1

    .line 472
    sub-int v19, v18, v8

    .line 474
    :goto_1
    div-int/lit8 v0, v17, 0x2

    sub-int v20, v6, v0

    .line 475
    add-int v21, v20, v17

    .line 476
    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 478
    sub-int/2addr v11, v8

    .line 479
    const/4 v12, 0x1

    .line 480
    goto :goto_2

    .line 481
    :cond_4
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, v16

    iget v1, v1, Lo/ᖦ$ˊ;->leftMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, v16

    iget v1, v1, Lo/ᖦ$ˊ;->rightMargin:I

    add-int v17, v0, v1

    .line 482
    add-int v9, v9, v17

    .line 483
    sub-int v11, v11, v17

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lo/ᖦ;->เ(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 485
    add-int/2addr v9, v7

    .line 487
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 452
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 491
    :cond_6
    const/4 v0, 0x1

    if-ne v5, v0, :cond_7

    if-nez v12, :cond_7

    .line 493
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 494
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 495
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 496
    sub-int v0, p4, p2

    div-int/lit8 v17, v0, 0x2

    .line 497
    div-int/lit8 v0, v15, 0x2

    sub-int v18, v17, v0

    .line 498
    div-int/lit8 v0, v16, 0x2

    sub-int v19, v6, v0

    .line 499
    add-int v0, v18, v15

    add-int v1, v19, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v14, v2, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 500
    return-void

    .line 503
    :cond_7
    if-eqz v12, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    :goto_3
    sub-int v14, v10, v0

    .line 504
    if-lez v14, :cond_9

    div-int v0, v11, v14

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 506
    if-eqz v13, :cond_d

    .line 507
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingRight()I

    move-result v1

    sub-int v16, v0, v1

    .line 508
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v0, v5, :cond_c

    .line 509
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 510
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v19, v0

    .line 511
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Λ:Z

    if-eqz v0, :cond_a

    .line 512
    goto :goto_6

    .line 515
    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Lo/ᖦ$ˊ;->rightMargin:I

    sub-int v16, v16, v0

    .line 516
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 517
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 518
    div-int/lit8 v0, v21, 0x2

    sub-int v22, v6, v0

    .line 519
    sub-int v0, v16, v20

    add-int v1, v22, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v16

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 520
    move-object/from16 v0, v19

    iget v0, v0, Lo/ᖦ$ˊ;->leftMargin:I

    add-int v0, v0, v20

    add-int/2addr v0, v15

    sub-int v16, v16, v0

    .line 508
    :cond_b
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 522
    :cond_c
    goto/16 :goto_9

    .line 523
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lo/ᖦ;->getPaddingLeft()I

    move-result v16

    .line 524
    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v0, v5, :cond_10

    .line 525
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 526
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object/from16 v19, v0

    .line 527
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lo/ᖦ$ˊ;->Λ:Z

    if-eqz v0, :cond_e

    .line 528
    goto :goto_8

    .line 531
    :cond_e
    move-object/from16 v0, v19

    iget v0, v0, Lo/ᖦ$ˊ;->leftMargin:I

    add-int v16, v16, v0

    .line 532
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 533
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 534
    div-int/lit8 v0, v21, 0x2

    sub-int v22, v6, v0

    .line 535
    add-int v0, v16, v20

    add-int v1, v22, v21

    move-object/from16 v2, v18

    move/from16 v3, v16

    move/from16 v4, v22

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 536
    move-object/from16 v0, v19

    iget v0, v0, Lo/ᖦ$ˊ;->rightMargin:I

    add-int v0, v0, v20

    add-int/2addr v0, v15

    add-int v16, v16, v0

    .line 524
    :cond_f
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 539
    :cond_10
    :goto_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 146
    iget-boolean v2, p0, Lo/ᖦ;->Ȳ:Z

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/ᖦ;->Ȳ:Z

    .line 149
    iget-boolean v0, p0, Lo/ᖦ;->Ȳ:Z

    if-eq v2, v0, :cond_1

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lo/ᖦ;->ʜ:I

    .line 155
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 156
    iget-boolean v0, p0, Lo/ᖦ;->Ȳ:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ᖦ;->ｼ:Lo/ᵁ;

    if-eqz v0, :cond_2

    iget v0, p0, Lo/ᖦ;->ʜ:I

    if-eq v3, v0, :cond_2

    .line 157
    iput v3, p0, Lo/ᖦ;->ʜ:I

    .line 158
    iget-object v0, p0, Lo/ᖦ;->ｼ:Lo/ᵁ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ᵁ;->ˑ(Z)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lo/ᖦ;->getChildCount()I

    move-result v4

    .line 162
    iget-boolean v0, p0, Lo/ᖦ;->Ȳ:Z

    if-eqz v0, :cond_3

    if-lez v4, :cond_3

    .line 163
    invoke-direct {p0, p1, p2}, Lo/ᖦ;->ᐨ(II)V

    goto :goto_2

    .line 166
    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 167
    invoke-virtual {p0, v5}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 168
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/ᖦ$ˊ;

    move-object v7, v0

    .line 169
    const/4 v0, 0x0

    iput v0, v7, Lo/ᖦ$ˊ;->rightMargin:I

    const/4 v0, 0x0

    iput v0, v7, Lo/ᖦ$ˊ;->leftMargin:I

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 171
    :cond_4
    invoke-super {p0, p1, p2}, Lo/ί;->onMeasure(II)V

    .line 173
    :goto_2
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    .line 719
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0, p1}, Lo/ᓴ;->setExpandedActionViewsExclusive(Z)V

    .line 720
    return-void
.end method

.method public setMenuCallbacks(Lo/ᵉ$if;Lo/ᵁ$if;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lo/ᖦ;->ƈ:Lo/ᵉ$if;

    .line 641
    iput-object p2, p0, Lo/ᖦ;->ȝ:Lo/ᵁ$if;

    .line 642
    return-void
.end method

.method public setOnMenuItemClickListener(Lo/ᖦ$ˋ;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/ᖦ;->Κ:Lo/ᖦ$ˋ;

    .line 141
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 554
    iput-boolean p1, p0, Lo/ᖦ;->ﺧ:Z

    .line 555
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 95
    iget v0, p0, Lo/ᖦ;->Ť:I

    if-eq v0, p1, :cond_1

    .line 96
    iput p1, p0, Lo/ᖦ;->Ť:I

    .line 97
    if-nez p1, :cond_0

    .line 98
    iget-object v0, p0, Lo/ᖦ;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lo/ᖦ;->Ἴ:Landroid/content/Context;

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lo/ᖦ;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lo/ᖦ;->Ἴ:Landroid/content/Context;

    .line 103
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Lo/ᓴ;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    .line 120
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0, p0}, Lo/ᓴ;->ˊ(Lo/ᖦ;)V

    .line 121
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᖦ;->Ɔ:Lo/ᓴ;

    invoke-virtual {v0}, Lo/ᓴ;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ˊ(Landroid/view/ViewGroup$LayoutParams;)Lo/ᖦ$ˊ;
    .locals 2

    .line 572
    if-eqz p1, :cond_2

    .line 573
    instance-of v0, p1, Lo/ᖦ$ˊ;

    if-eqz v0, :cond_0

    new-instance v1, Lo/ᖦ$ˊ;

    move-object v0, p1

    check-cast v0, Lo/ᖦ$ˊ;

    invoke-direct {v1, v0}, Lo/ᖦ$ˊ;-><init>(Lo/ᖦ$ˊ;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lo/ᖦ$ˊ;

    invoke-direct {v1, p1}, Lo/ᖦ$ˊ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 576
    :goto_0
    iget v0, v1, Lo/ᖦ$ˊ;->gravity:I

    if-gtz v0, :cond_1

    .line 577
    const/16 v0, 0x10

    iput v0, v1, Lo/ᖦ$ˊ;->gravity:I

    .line 579
    :cond_1
    return-object v1

    .line 581
    :cond_2
    invoke-virtual {p0}, Lo/ᖦ;->רּ()Lo/ᖦ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ᵁ;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lo/ᖦ;->ｼ:Lo/ᵁ;

    .line 609
    return-void
.end method

.method public ˊ(Lo/ᵃ;)Z
    .locals 2

    .line 598
    iget-object v0, p0, Lo/ᖦ;->ｼ:Lo/ᵁ;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/ᵁ;->ˊ(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public ˋ(Landroid/util/AttributeSet;)Lo/ᖦ$ˊ;
    .locals 2

    .line 567
    new-instance v0, Lo/ᖦ$ˊ;

    invoke-virtual {p0}, Lo/ᖦ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/ᖦ$ˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected synthetic ˋ(Landroid/view/ViewGroup$LayoutParams;)Lo/ί$if;
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lo/ᖦ;->ˊ(Landroid/view/ViewGroup$LayoutParams;)Lo/ᖦ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˎ(Landroid/util/AttributeSet;)Lo/ί$if;
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lo/ᖦ;->ˋ(Landroid/util/AttributeSet;)Lo/ᖦ$ˊ;

    move-result-object v0

    return-object v0
.end method

.method protected เ(I)Z
    .locals 4

    .line 698
    if-nez p1, :cond_0

    .line 699
    const/4 v0, 0x0

    return v0

    .line 701
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 702
    invoke-virtual {p0, p1}, Lo/ᖦ;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 703
    const/4 v3, 0x0

    .line 704
    invoke-virtual {p0}, Lo/ᖦ;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    instance-of v0, v1, Lo/ᖦ$if;

    if-eqz v0, :cond_1

    .line 705
    move-object v0, v1

    check-cast v0, Lo/ᖦ$if;

    invoke-interface {v0}, Lo/ᖦ$if;->ї()Z

    move-result v0

    or-int/lit8 v3, v0, 0x0

    .line 707
    :cond_1
    if-lez p1, :cond_2

    instance-of v0, v2, Lo/ᖦ$if;

    if-eqz v0, :cond_2

    .line 708
    move-object v0, v2

    check-cast v0, Lo/ᖦ$if;

    invoke-interface {v0}, Lo/ᖦ$if;->і()Z

    move-result v0

    or-int/2addr v3, v0

    .line 710
    :cond_2
    return v3
.end method

.method protected רּ()Lo/ᖦ$ˊ;
    .locals 3

    .line 559
    new-instance v2, Lo/ᖦ$ˊ;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v2, v0, v1}, Lo/ᖦ$ˊ;-><init>(II)V

    .line 561
    const/16 v0, 0x10

    iput v0, v2, Lo/ᖦ$ˊ;->gravity:I

    .line 562
    return-object v2
.end method

.method public ﭕ()Lo/ᖦ$ˊ;
    .locals 2

    .line 591
    invoke-virtual {p0}, Lo/ᖦ;->רּ()Lo/ᖦ$ˊ;

    move-result-object v1

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, v1, Lo/ᖦ$ˊ;->Λ:Z

    .line 593
    return-object v1
.end method

.method public ﭜ()Lo/ᵁ;
    .locals 1

    .line 649
    iget-object v0, p0, Lo/ᖦ;->ｼ:Lo/ᵁ;

    return-object v0
.end method

.method protected synthetic ﭡ()Lo/ί$if;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/ᖦ;->רּ()Lo/ᖦ$ˊ;

    move-result-object v0

    return-object v0
.end method
