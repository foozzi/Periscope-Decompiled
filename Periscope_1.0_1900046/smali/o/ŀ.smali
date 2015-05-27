.class public Lo/ŀ;
.super Landroid/widget/ListView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ŀ$if;
    }
.end annotation


# static fields
.field private static final ڽ:[I


# instance fields
.field final ܐ:Landroid/graphics/Rect;

.field private ܫ:Ljava/lang/reflect/Field;

.field private ट:Lo/ŀ$if;

.field ｬ:I

.field ｴ:I

.field ｺ:I

.field ﾋ:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ŀ;->ڽ:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ŀ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ŀ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/ŀ;->ܐ:Landroid/graphics/Rect;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lo/ŀ;->ｬ:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lo/ŀ;->ｴ:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lo/ŀ;->ｺ:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lo/ŀ;->ﾋ:I

    .line 69
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lo/ŀ;->ܫ:Ljava/lang/reflect/Field;

    .line 70
    iget-object v0, p0, Lo/ŀ;->ܫ:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 74
    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 102
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lo/ŀ;->ˊ(Landroid/graphics/Canvas;)V

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ŀ;->ٴ(Z)V

    .line 97
    invoke-virtual {p0}, Lo/ŀ;->ᵁ()V

    .line 98
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 78
    if-eqz p1, :cond_0

    new-instance v0, Lo/ŀ$if;

    invoke-direct {v0, p1}, Lo/ŀ$if;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/ŀ;->ट:Lo/ŀ$if;

    .line 79
    iget-object v0, p0, Lo/ŀ;->ट:Lo/ŀ$if;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 82
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 86
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lo/ŀ;->ｬ:I

    .line 87
    iget v0, v1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lo/ŀ;->ｴ:I

    .line 88
    iget v0, v1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lo/ŀ;->ｺ:I

    .line 89
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lo/ŀ;->ﾋ:I

    .line 90
    return-void
.end method

.method protected ˊ(ILandroid/view/View;FF)V
    .locals 2

    .line 176
    invoke-virtual {p0, p1, p2}, Lo/ŀ;->ˋ(ILandroid/view/View;)V

    .line 178
    invoke-virtual {p0}, Lo/ŀ;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 180
    invoke-static {v1, p3, p4}, Lo/ᐪ;->ˊ(Landroid/graphics/drawable/Drawable;FF)V

    .line 182
    :cond_0
    return-void
.end method

.method protected ˊ(Landroid/graphics/Canvas;)V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/ŀ;->ܐ:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lo/ŀ;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    iget-object v0, p0, Lo/ŀ;->ܐ:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 130
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected ˋ(ILandroid/view/View;)V
    .locals 7

    .line 187
    invoke-virtual {p0}, Lo/ŀ;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 189
    :goto_0
    if-eqz v3, :cond_1

    .line 190
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 193
    :cond_1
    invoke-virtual {p0, p1, p2}, Lo/ŀ;->ˎ(ILandroid/view/View;)V

    .line 195
    if-eqz v3, :cond_3

    .line 196
    iget-object v4, p0, Lo/ŀ;->ܐ:Landroid/graphics/Rect;

    .line 197
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 198
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 199
    invoke-virtual {p0}, Lo/ŀ;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 200
    invoke-static {v2, v5, v6}, Lo/ᐪ;->ˊ(Landroid/graphics/drawable/Drawable;FF)V

    .line 202
    :cond_3
    return-void
.end method

.method public ˎ(IIIII)I
    .locals 19

    .line 259
    invoke-virtual/range {p0 .. p0}, Lo/ŀ;->getListPaddingTop()I

    move-result v2

    .line 260
    invoke-virtual/range {p0 .. p0}, Lo/ŀ;->getListPaddingBottom()I

    move-result v3

    .line 261
    invoke-virtual/range {p0 .. p0}, Lo/ŀ;->getListPaddingLeft()I

    move-result v4

    .line 262
    invoke-virtual/range {p0 .. p0}, Lo/ŀ;->getListPaddingRight()I

    move-result v5

    .line 263
    invoke-virtual/range {p0 .. p0}, Lo/ŀ;->getDividerHeight()I

    move-result v6

    .line 264
    invoke-virtual/range {p0 .. p0}, Lo/ŀ;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 266
    invoke-virtual/range {p0 .. p0}, Lo/ŀ;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 268
    if-nez v8, :cond_0

    .line 269
    add-int v0, v2, v3

    return v0

    .line 273
    :cond_0
    add-int v9, v2, v3

    .line 274
    if-lez v6, :cond_1

    if-eqz v7, :cond_1

    move v10, v6

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 279
    :goto_0
    const/4 v11, 0x0

    .line 281
    const/4 v12, 0x0

    .line 282
    const/4 v13, 0x0

    .line 283
    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v14

    .line 284
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_8

    .line 285
    invoke-interface {v8, v15}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v16

    .line 286
    move/from16 v0, v16

    if-eq v0, v13, :cond_2

    .line 287
    const/4 v12, 0x0

    .line 288
    move/from16 v13, v16

    .line 290
    :cond_2
    move-object/from16 v0, p0

    invoke-interface {v8, v15, v12, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 294
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 295
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_3

    .line 296
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    goto :goto_2

    .line 299
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    .line 301
    :goto_2
    move/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 303
    if-lez v15, :cond_4

    .line 305
    add-int/2addr v9, v10

    .line 308
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v9, v0

    .line 310
    move/from16 v0, p4

    if-lt v9, v0, :cond_6

    .line 313
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v15, v0, :cond_5

    if-lez v11, :cond_5

    move/from16 v0, p4

    if-eq v9, v0, :cond_5

    move v0, v11

    goto :goto_3

    :cond_5
    move/from16 v0, p4

    :goto_3
    return v0

    .line 321
    :cond_6
    if-ltz p5, :cond_7

    move/from16 v0, p5

    if-lt v15, v0, :cond_7

    .line 322
    move v11, v9

    .line 284
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 328
    :cond_8
    return v9
.end method

.method protected ˎ(ILandroid/view/View;)V
    .locals 6

    .line 205
    iget-object v4, p0, Lo/ŀ;->ܐ:Landroid/graphics/Rect;

    .line 206
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 209
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lo/ŀ;->ｬ:I

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 210
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lo/ŀ;->ｴ:I

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 211
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lo/ŀ;->ｺ:I

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 212
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lo/ŀ;->ﾋ:I

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 217
    :try_start_0
    iget-object v0, p0, Lo/ŀ;->ܫ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    .line 218
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq v0, v5, :cond_1

    .line 219
    iget-object v0, p0, Lo/ŀ;->ܫ:Ljava/lang/reflect/Field;

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 221
    invoke-virtual {p0}, Lo/ŀ;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_1
    goto :goto_1

    .line 224
    :catch_0
    move-exception v5

    .line 225
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 227
    :goto_1
    return-void
.end method

.method protected ٴ(Z)V
    .locals 1

    .line 332
    iget-object v0, p0, Lo/ŀ;->ट:Lo/ŀ$if;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lo/ŀ;->ट:Lo/ŀ$if;

    invoke-virtual {v0, p1}, Lo/ŀ$if;->setEnabled(Z)V

    .line 335
    :cond_0
    return-void
.end method

.method protected ᵁ()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lo/ŀ;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/ŀ;->ᵃ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lo/ŀ;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 115
    :cond_0
    return-void
.end method

.method protected ᵃ()Z
    .locals 1

    .line 118
    invoke-virtual {p0}, Lo/ŀ;->ᵅ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ŀ;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected ᵅ()Z
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method
