.class public final Lo/კ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static ˊ(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 3

    .line 188
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 189
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 190
    invoke-static {p0, v2}, Lo/კ;->ˊ(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 191
    :cond_0
    sget v0, Lo/ผ;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 192
    invoke-static {p0, v2}, Lo/კ;->ˋ(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {p0, v2}, Lo/კ;->ˎ(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 196
    :goto_0
    return-object v2
.end method

.method private static ˊ(ZIIII)Landroid/graphics/Point;
    .locals 3

    .line 171
    if-eqz p0, :cond_2

    if-le p3, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_2

    .line 173
    move v2, p1

    .line 174
    move p1, p2

    .line 175
    move p2, v2

    .line 178
    :cond_2
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    .line 180
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Lo/ผ;->Ꭵ(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 183
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Lo/ผ;->Ꭵ(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static ˊ(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 201
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 202
    return-void
.end method

.method private static ˊ(Lo/ব;[Ljava/lang/String;ZI)Z
    .locals 2

    .line 144
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ব;->mimeType:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/ผ;->ˊ([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    if-eqz p2, :cond_2

    iget v0, p0, Lo/ব;->width:I

    const/16 v1, 0x500

    if-ge v0, v1, :cond_1

    iget v0, p0, Lo/ব;->height:I

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_2

    .line 151
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 153
    :cond_2
    iget v0, p0, Lo/ব;->width:I

    if-lez v0, :cond_3

    iget v0, p0, Lo/ব;->height:I

    if-lez v0, :cond_3

    .line 157
    iget v0, p0, Lo/ব;->width:I

    iget v1, p0, Lo/ব;->height:I

    mul-int/2addr v0, v1

    if-le v0, p3, :cond_3

    .line 159
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static ˊ(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/util/List<+Lo/\u09b6;>;[Ljava/lang/String;Z)[I"
        }
    .end annotation

    .line 58
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    move-object v6, v0

    .line 59
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 60
    invoke-static {v7}, Lo/კ;->ˊ(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v8

    .line 61
    move-object v0, p1

    move-object v1, p2

    move v2, p3

    iget v4, v8, Landroid/graphics/Point;->x:I

    iget v5, v8, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lo/კ;->ˊ(Ljava/util/List;[Ljava/lang/String;ZZII)[I

    move-result-object v0

    return-object v0
.end method

.method public static ˊ(Ljava/util/List;[Ljava/lang/String;ZZII)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<+Lo/\u09b6;>;[Ljava/lang/String;ZZII)[I"
        }
    .end annotation

    .line 96
    const v5, 0x7fffffff

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-static {}, Lo/ԁ;->з()I

    move-result v7

    .line 101
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    .line 102
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    .line 103
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/শ;

    invoke-interface {v0}, Lo/শ;->ᐴ()Lo/ব;

    move-result-object v10

    .line 104
    invoke-static {v10, p1, p2, v7}, Lo/კ;->ˊ(Lo/ব;[Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget v0, v10, Lo/ব;->width:I

    if-lez v0, :cond_0

    iget v0, v10, Lo/ব;->height:I

    if-lez v0, :cond_0

    .line 112
    iget v0, v10, Lo/ব;->width:I

    iget v1, v10, Lo/ব;->height:I

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-static {v2, v3, v4, v0, v1}, Lo/კ;->ˊ(ZIIII)Landroid/graphics/Point;

    move-result-object v11

    .line 114
    iget v0, v10, Lo/ব;->width:I

    iget v1, v10, Lo/ব;->height:I

    mul-int v12, v0, v1

    .line 115
    iget v0, v10, Lo/ব;->width:I

    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const v2, 0x3f7ae148    # 0.98f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v0, v1, :cond_0

    iget v0, v10, Lo/ব;->height:I

    iget v1, v11, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const v2, 0x3f7ae148    # 0.98f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v0, v1, :cond_0

    if-ge v12, v5, :cond_0

    .line 118
    move v5, v12

    .line 102
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 127
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    :goto_1
    if-ltz v9, :cond_3

    .line 128
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/শ;

    invoke-interface {v0}, Lo/শ;->ᐴ()Lo/ব;

    move-result-object v10

    .line 129
    iget v0, v10, Lo/ব;->width:I

    if-lez v0, :cond_2

    iget v0, v10, Lo/ব;->height:I

    if-lez v0, :cond_2

    iget v0, v10, Lo/ব;->width:I

    iget v1, v10, Lo/ব;->height:I

    mul-int/2addr v0, v1

    if-le v0, v5, :cond_2

    .line 131
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    :cond_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 135
    :cond_3
    invoke-static {v6}, Lo/ผ;->ʽ(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method private static ˋ(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 207
    return-void
.end method

.method private static ˎ(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 212
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 213
    return-void
.end method
