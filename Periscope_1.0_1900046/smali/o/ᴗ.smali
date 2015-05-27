.class public Lo/ᴗ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/丨$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴗ$if;,
        Lo/ᴗ$ˊ;
    }
.end annotation


# instance fields
.field private Ϲ:Lo/ﯨ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufbe8$if<Lo/\u1d17$\u02ca;>;"
        }
    .end annotation
.end field

.field final С:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u1d17$\u02ca;>;"
        }
    .end annotation
.end field

.field final У:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u1d17$\u02ca;>;"
        }
    .end annotation
.end field

.field final н:Lo/ᴗ$if;

.field п:Ljava/lang/Runnable;

.field final ѵ:Z

.field final Ғ:Lo/丨;


# direct methods
.method public constructor <init>(Lo/ᴗ$if;)V
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ᴗ;-><init>(Lo/ᴗ$if;Z)V

    .line 72
    return-void
.end method

.method constructor <init>(Lo/ᴗ$if;Z)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lo/ﯨ$ˊ;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lo/ﯨ$ˊ;-><init>(I)V

    iput-object v0, p0, Lo/ᴗ;->Ϲ:Lo/ﯨ$if;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    .line 76
    iput-boolean p2, p0, Lo/ᴗ;->ѵ:Z

    .line 77
    new-instance v0, Lo/丨;

    invoke-direct {v0, p0}, Lo/丨;-><init>(Lo/丨$if;)V

    iput-object v0, p0, Lo/ᴗ;->Ғ:Lo/丨;

    .line 78
    return-void
.end method

.method private ʻ(Lo/ᴗ$ˊ;)V
    .locals 3

    .line 432
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 435
    :pswitch_0
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, p1, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p1, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->ᵎ(II)V

    .line 436
    goto :goto_1

    .line 438
    :pswitch_1
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, p1, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p1, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->ᵔ(II)V

    .line 439
    goto :goto_1

    .line 441
    :pswitch_2
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, p1, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p1, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->ٴ(II)V

    .line 443
    goto :goto_1

    .line 445
    :pswitch_3
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, p1, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, p1, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->ᴵ(II)V

    .line 446
    goto :goto_1

    .line 448
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private ˊ(Lo/ᴗ$ˊ;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lo/ᴗ;->ʻ(Lo/ᴗ$ˊ;)V

    .line 128
    return-void
.end method

.method private ˋ(Lo/ᴗ$ˊ;)V
    .locals 10

    .line 131
    iget v2, p1, Lo/ᴗ$ˊ;->Ҭ:I

    .line 132
    const/4 v3, 0x0

    .line 133
    iget v0, p1, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p1, Lo/ᴗ$ˊ;->ӟ:I

    add-int v4, v0, v1

    .line 134
    const/4 v5, -0x1

    .line 135
    iget v6, p1, Lo/ᴗ$ˊ;->Ҭ:I

    :goto_0
    if-ge v6, v4, :cond_5

    .line 136
    const/4 v7, 0x0

    .line 137
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    invoke-interface {v0, v6}, Lo/ᴗ$if;->ᒢ(I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v8

    .line 138
    if-nez v8, :cond_0

    invoke-direct {p0, v6}, Lo/ᴗ;->Ꭵ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    :cond_0
    if-nez v5, :cond_1

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v9

    .line 149
    invoke-direct {p0, v9}, Lo/ᴗ;->ˏ(Lo/ᴗ$ˊ;)V

    .line 150
    const/4 v7, 0x1

    .line 152
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 156
    :cond_2
    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v9

    .line 160
    invoke-direct {p0, v9}, Lo/ᴗ;->ʻ(Lo/ᴗ$ˊ;)V

    .line 161
    const/4 v7, 0x1

    .line 163
    :cond_3
    const/4 v5, 0x0

    .line 165
    :goto_1
    if-eqz v7, :cond_4

    .line 166
    sub-int/2addr v6, v3

    .line 167
    sub-int/2addr v4, v3

    .line 168
    const/4 v3, 0x1

    goto :goto_2

    .line 170
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 135
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 173
    :cond_5
    iget v0, p1, Lo/ᴗ$ˊ;->ӟ:I

    if-eq v3, v0, :cond_6

    .line 174
    invoke-virtual {p0, p1}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object p1

    .line 177
    :cond_6
    if-nez v5, :cond_7

    .line 178
    invoke-direct {p0, p1}, Lo/ᴗ;->ˏ(Lo/ᴗ$ˊ;)V

    goto :goto_3

    .line 180
    :cond_7
    invoke-direct {p0, p1}, Lo/ᴗ;->ʻ(Lo/ᴗ$ˊ;)V

    .line 182
    :goto_3
    return-void
.end method

.method private ˎ(Lo/ᴗ$ˊ;)V
    .locals 9

    .line 185
    iget v2, p1, Lo/ᴗ$ˊ;->Ҭ:I

    .line 186
    const/4 v3, 0x0

    .line 187
    iget v0, p1, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p1, Lo/ᴗ$ˊ;->ӟ:I

    add-int v4, v0, v1

    .line 188
    const/4 v5, -0x1

    .line 189
    iget v6, p1, Lo/ᴗ$ˊ;->Ҭ:I

    :goto_0
    if-ge v6, v4, :cond_4

    .line 190
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    invoke-interface {v0, v6}, Lo/ᴗ$if;->ᒢ(I)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v7

    .line 191
    if-nez v7, :cond_0

    invoke-direct {p0, v6}, Lo/ᴗ;->Ꭵ(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :cond_0
    if-nez v5, :cond_1

    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v8

    .line 194
    invoke-direct {p0, v8}, Lo/ᴗ;->ˏ(Lo/ᴗ$ˊ;)V

    .line 195
    const/4 v3, 0x0

    .line 196
    move v2, v6

    .line 198
    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    .line 200
    :cond_2
    const/4 v0, 0x1

    if-ne v5, v0, :cond_3

    .line 201
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v8

    .line 202
    invoke-direct {p0, v8}, Lo/ᴗ;->ʻ(Lo/ᴗ$ˊ;)V

    .line 203
    const/4 v3, 0x0

    .line 204
    move v2, v6

    .line 206
    :cond_3
    const/4 v5, 0x0

    .line 208
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 210
    :cond_4
    iget v0, p1, Lo/ᴗ$ˊ;->ӟ:I

    if-eq v3, v0, :cond_5

    .line 211
    invoke-virtual {p0, p1}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    .line 212
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object p1

    .line 214
    :cond_5
    if-nez v5, :cond_6

    .line 215
    invoke-direct {p0, p1}, Lo/ᴗ;->ˏ(Lo/ᴗ$ˊ;)V

    goto :goto_2

    .line 217
    :cond_6
    invoke-direct {p0, p1}, Lo/ᴗ;->ʻ(Lo/ᴗ$ˊ;)V

    .line 219
    :goto_2
    return-void
.end method

.method private ˏ(Lo/ᴗ$ˊ;)V
    .locals 12

    .line 225
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    if-eqz v0, :cond_0

    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "should not dispatch add or move for pre layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    iget v0, p1, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, p1, Lo/ᴗ$ˊ;->ʳ:I

    invoke-direct {p0, v0, v1}, Lo/ᴗ;->ﹳ(II)I

    move-result v3

    .line 243
    const/4 v4, 0x1

    .line 244
    iget v5, p1, Lo/ᴗ$ˊ;->Ҭ:I

    .line 246
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 248
    :sswitch_0
    const/4 v6, 0x1

    .line 249
    goto :goto_1

    .line 251
    :sswitch_1
    const/4 v6, 0x0

    .line 252
    goto :goto_1

    .line 254
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :goto_1
    const/4 v7, 0x1

    :goto_2
    iget v0, p1, Lo/ᴗ$ˊ;->ӟ:I

    if-ge v7, v0, :cond_6

    .line 257
    iget v0, p1, Lo/ᴗ$ˊ;->Ҭ:I

    mul-int v1, v6, v7

    add-int v8, v0, v1

    .line 258
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    invoke-direct {p0, v8, v0}, Lo/ᴗ;->ﹳ(II)I

    move-result v9

    .line 262
    const/4 v10, 0x0

    .line 263
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_4

    .line 265
    :sswitch_2
    add-int/lit8 v0, v3, 0x1

    if-ne v9, v0, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 266
    :goto_3
    goto :goto_4

    .line 268
    :sswitch_3
    if-ne v9, v3, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    .line 271
    :goto_4
    if-eqz v10, :cond_4

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 275
    :cond_4
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    invoke-virtual {p0, v0, v3, v4}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v11

    .line 279
    invoke-virtual {p0, v11, v5}, Lo/ᴗ;->ˊ(Lo/ᴗ$ˊ;I)V

    .line 280
    invoke-virtual {p0, v11}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    .line 281
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 282
    add-int/2addr v5, v4

    .line 284
    :cond_5
    move v3, v9

    .line 285
    const/4 v4, 0x1

    .line 256
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 288
    :cond_6
    invoke-virtual {p0, p1}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    .line 289
    if-lez v4, :cond_7

    .line 290
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    invoke-virtual {p0, v0, v3, v4}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v7

    .line 294
    invoke-virtual {p0, v7, v5}, Lo/ᴗ;->ˊ(Lo/ᴗ$ˊ;I)V

    .line 295
    invoke-virtual {p0, v7}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    .line 305
    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
    .end sparse-switch
.end method

.method private Ꭵ(I)Z
    .locals 7

    .line 404
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 405
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 406
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v4, v0

    .line 407
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 408
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v0, v1}, Lo/ᴗ;->ﾞ(II)I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 409
    const/4 v0, 0x1

    return v0

    .line 411
    :cond_0
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    if-nez v0, :cond_2

    .line 413
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int v5, v0, v1

    .line 414
    iget v6, v4, Lo/ᴗ$ˊ;->Ҭ:I

    :goto_1
    if-ge v6, v5, :cond_2

    .line 415
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v6, v0}, Lo/ᴗ;->ﾞ(II)I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 416
    const/4 v0, 0x1

    return v0

    .line 414
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 405
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private ᐝ(Lo/ᴗ$ˊ;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Lo/ᴗ;->ʻ(Lo/ᴗ$ˊ;)V

    .line 426
    return-void
.end method

.method private ﹳ(II)I
    .locals 7

    .line 323
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 324
    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_e

    .line 325
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v4, v0

    .line 326
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 328
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v4, Lo/ᴗ$ˊ;->ӟ:I

    if-ge v0, v1, :cond_0

    .line 329
    iget v5, v4, Lo/ᴗ$ˊ;->Ҭ:I

    .line 330
    iget v6, v4, Lo/ᴗ$ˊ;->ӟ:I

    goto :goto_1

    .line 332
    :cond_0
    iget v5, v4, Lo/ᴗ$ˊ;->ӟ:I

    .line 333
    iget v6, v4, Lo/ᴗ$ˊ;->Ҭ:I

    .line 335
    :goto_1
    if-lt p1, v5, :cond_6

    if-gt p1, v6, :cond_6

    .line 337
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-ne v5, v0, :cond_3

    .line 338
    if-nez p2, :cond_1

    .line 339
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    goto :goto_2

    .line 340
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 341
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    .line 344
    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 346
    :cond_3
    if-nez p2, :cond_4

    .line 347
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    goto :goto_3

    .line 348
    :cond_4
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 349
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    .line 352
    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 354
    :cond_6
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-ge p1, v0, :cond_8

    .line 356
    if-nez p2, :cond_7

    .line 357
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    .line 358
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    goto :goto_4

    .line 359
    :cond_7
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    .line 360
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    .line 361
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    .line 364
    :cond_8
    :goto_4
    goto :goto_5

    .line 365
    :cond_9
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-gt v0, p1, :cond_b

    .line 366
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    if-nez v0, :cond_a

    .line 367
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr p1, v0

    goto :goto_5

    .line 368
    :cond_a
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 369
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr p1, v0

    goto :goto_5

    .line 372
    :cond_b
    if-nez p2, :cond_c

    .line 373
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    goto :goto_5

    .line 374
    :cond_c
    const/4 v0, 0x1

    if-ne p2, v0, :cond_d

    .line 375
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    .line 324
    :cond_d
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 388
    :cond_e
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_6
    if-ltz v3, :cond_12

    .line 389
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v4, v0

    .line 390
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 391
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    iget v1, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-eq v0, v1, :cond_f

    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    if-gez v0, :cond_11

    .line 392
    :cond_f
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 393
    invoke-virtual {p0, v4}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    goto :goto_7

    .line 395
    :cond_10
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    if-gtz v0, :cond_11

    .line 396
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    invoke-virtual {p0, v4}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    .line 388
    :cond_11
    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 400
    :cond_12
    return p1
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᴗ;->ˎ(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᴗ;->ˎ(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public ʹ(II)Z
    .locals 2

    .line 493
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ʻ(III)Lo/ᴗ$ˊ;
    .locals 2

    .line 686
    iget-object v0, p0, Lo/ᴗ;->Ϲ:Lo/ﯨ$if;

    invoke-interface {v0}, Lo/ﯨ$if;->ᐩ()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v1, v0

    .line 687
    if-nez v1, :cond_0

    .line 688
    new-instance v1, Lo/ᴗ$ˊ;

    invoke-direct {v1, p1, p2, p3}, Lo/ᴗ$ˊ;-><init>(III)V

    goto :goto_0

    .line 690
    :cond_0
    iput p1, v1, Lo/ᴗ$ˊ;->ʳ:I

    .line 691
    iput p2, v1, Lo/ᴗ$ˊ;->Ҭ:I

    .line 692
    iput p3, v1, Lo/ᴗ$ˊ;->ӟ:I

    .line 694
    :goto_0
    return-object v1
.end method

.method public ʼ(Lo/ᴗ$ˊ;)V
    .locals 1

    .line 699
    iget-boolean v0, p0, Lo/ᴗ;->ѵ:Z

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lo/ᴗ;->Ϲ:Lo/ﯨ$if;

    invoke-interface {v0, p1}, Lo/ﯨ$if;->ˏ(Ljava/lang/Object;)Z

    .line 702
    :cond_0
    return-void
.end method

.method ˊ(Lo/ᴗ$ˊ;I)V
    .locals 2

    .line 308
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    invoke-interface {v0, p1}, Lo/ᴗ$if;->ʽ(Lo/ᴗ$ˊ;)V

    .line 309
    iget v0, p1, Lo/ᴗ$ˊ;->ʳ:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 311
    :sswitch_0
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, p1, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, p2, v1}, Lo/ᴗ$if;->י(II)V

    .line 312
    goto :goto_1

    .line 314
    :sswitch_1
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, p1, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, p2, v1}, Lo/ᴗ$if;->ᴵ(II)V

    .line 315
    goto :goto_1

    .line 317
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method ˎ(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/\u1d17$\u02ca;>;)V"
        }
    .end annotation

    .line 705
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 706
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 707
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    invoke-virtual {p0, v0}, Lo/ᴗ;->ʼ(Lo/ᴗ$ˊ;)V

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 710
    return-void
.end method

.method public ՙ(II)Z
    .locals 2

    .line 501
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lo/ᴗ;->ʻ(III)Lo/ᴗ$ˊ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ᐤ(I)I
    .locals 1

    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/ᴗ;->ﾞ(II)I

    move-result v0

    return v0
.end method

.method public ᒡ(I)I
    .locals 6

    .line 563
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 564
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 565
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v4, v0

    .line 566
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 568
    :pswitch_0
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-gt v0, p1, :cond_3

    .line 569
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr p1, v0

    goto :goto_1

    .line 573
    :pswitch_1
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-gt v0, p1, :cond_3

    .line 574
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int v5, v0, v1

    .line 575
    if-le v5, p1, :cond_0

    .line 576
    const/4 v0, -0x1

    return v0

    .line 578
    :cond_0
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr p1, v0

    .line 579
    goto :goto_1

    .line 582
    :pswitch_2
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-ne v0, p1, :cond_1

    .line 583
    iget p1, v4, Lo/ᴗ$ˊ;->ӟ:I

    goto :goto_1

    .line 585
    :cond_1
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-ge v0, p1, :cond_2

    .line 586
    add-int/lit8 p1, p1, -0x1

    .line 588
    :cond_2
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    if-gt v0, p1, :cond_3

    .line 589
    add-int/lit8 p1, p1, 0x1

    .line 564
    :cond_3
    :goto_1
    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 595
    :cond_4
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public ﭤ()V
    .locals 5

    .line 91
    iget-object v0, p0, Lo/ᴗ;->Ғ:Lo/丨;

    iget-object v1, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lo/丨;->ᐝ(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 93
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 94
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v4, v0

    .line 95
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 97
    :pswitch_0
    invoke-direct {p0, v4}, Lo/ᴗ;->ᐝ(Lo/ᴗ$ˊ;)V

    .line 98
    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0, v4}, Lo/ᴗ;->ˋ(Lo/ᴗ$ˊ;)V

    .line 101
    goto :goto_1

    .line 103
    :pswitch_2
    invoke-direct {p0, v4}, Lo/ᴗ;->ˎ(Lo/ᴗ$ˊ;)V

    .line 104
    goto :goto_1

    .line 106
    :pswitch_3
    invoke-direct {p0, v4}, Lo/ᴗ;->ˊ(Lo/ᴗ$ˊ;)V

    .line 109
    :goto_1
    iget-object v0, p0, Lo/ᴗ;->п:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lo/ᴗ;->п:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ﯧ()V
    .locals 4

    .line 117
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 119
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget-object v1, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ᴗ$ˊ;

    invoke-interface {v0, v1}, Lo/ᴗ$if;->ͺ(Lo/ᴗ$ˊ;)V

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᴗ;->ˎ(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method public ﯿ()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ﹹ()V
    .locals 6

    .line 533
    invoke-virtual {p0}, Lo/ᴗ;->ﯧ()V

    .line 534
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 535
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 536
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v5, v0

    .line 537
    iget v0, v5, Lo/ᴗ$ˊ;->ʳ:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 539
    :pswitch_0
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    invoke-interface {v0, v5}, Lo/ᴗ$if;->ͺ(Lo/ᴗ$ˊ;)V

    .line 540
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, v5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, v5, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->ᵎ(II)V

    .line 541
    goto :goto_1

    .line 543
    :pswitch_1
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    invoke-interface {v0, v5}, Lo/ᴗ$if;->ͺ(Lo/ᴗ$ˊ;)V

    .line 544
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, v5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, v5, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->י(II)V

    .line 545
    goto :goto_1

    .line 547
    :pswitch_2
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    invoke-interface {v0, v5}, Lo/ᴗ$if;->ͺ(Lo/ᴗ$ˊ;)V

    .line 548
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, v5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, v5, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->ᴵ(II)V

    .line 549
    goto :goto_1

    .line 551
    :pswitch_3
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    invoke-interface {v0, v5}, Lo/ᴗ$if;->ͺ(Lo/ᴗ$ˊ;)V

    .line 552
    iget-object v0, p0, Lo/ᴗ;->н:Lo/ᴗ$if;

    iget v1, v5, Lo/ᴗ$ˊ;->Ҭ:I

    iget v2, v5, Lo/ᴗ$ˊ;->ӟ:I

    invoke-interface {v0, v1, v2}, Lo/ᴗ$if;->ᵔ(II)V

    .line 555
    :goto_1
    iget-object v0, p0, Lo/ᴗ;->п:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lo/ᴗ;->п:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 535
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lo/ᴗ;->С:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lo/ᴗ;->ˎ(Ljava/util/List;)V

    .line 560
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method ﾞ(II)I
    .locals 5

    .line 461
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 462
    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_6

    .line 463
    iget-object v0, p0, Lo/ᴗ;->У:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᴗ$ˊ;

    move-object v4, v0

    .line 464
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 465
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-ne v0, p1, :cond_0

    .line 466
    iget p1, v4, Lo/ᴗ$ˊ;->ӟ:I

    goto :goto_1

    .line 468
    :cond_0
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-ge v0, p1, :cond_1

    .line 469
    add-int/lit8 p1, p1, -0x1

    .line 471
    :cond_1
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    if-gt v0, p1, :cond_5

    .line 472
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 475
    :cond_2
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    if-gt v0, p1, :cond_5

    .line 476
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 477
    iget v0, v4, Lo/ᴗ$ˊ;->Ҭ:I

    iget v1, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_3

    .line 478
    const/4 v0, -0x1

    return v0

    .line 480
    :cond_3
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    sub-int/2addr p1, v0

    goto :goto_1

    .line 481
    :cond_4
    iget v0, v4, Lo/ᴗ$ˊ;->ʳ:I

    if-nez v0, :cond_5

    .line 482
    iget v0, v4, Lo/ᴗ$ˊ;->ӟ:I

    add-int/2addr p1, v0

    .line 462
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 486
    :cond_6
    return p1
.end method
