.class public abstract Lo/ahl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bER:Ljava/util/Random;

.field private final bES:I

.field private final bET:I

.field private final bEU:I

.field private final bEV:I

.field private final bEW:I

.field private final bEX:I

.field private final mLength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    const v0, 0x7f0a0052

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/ahl;->bES:I

    .line 37
    const v0, 0x7f0a0053

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/ahl;->bET:I

    .line 38
    const v0, 0x7f0a0051

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/ahl;->bEU:I

    .line 39
    const v0, 0x7f0a0054

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/ahl;->mLength:I

    .line 40
    const v0, 0x7f0a0055

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/ahl;->bEV:I

    .line 41
    const v0, 0x7f0c0004

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lo/ahl;->bEW:I

    .line 42
    const v0, 0x7f0a0056

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lo/ahl;->bEX:I

    .line 43
    invoke-static {}, Lo/akn;->AA()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lo/ahl;->bER:Ljava/util/Random;

    .line 44
    return-void
.end method


# virtual methods
.method public zF()F
    .locals 2

    .line 97
    iget-object v0, p0, Lo/ahl;->bER:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x41e4cccd    # 28.6f

    mul-float/2addr v0, v1

    const v1, 0x4164cccd    # 14.3f

    sub-float/2addr v0, v1

    return v0
.end method

.method public ˊ(Ljava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;I)Landroid/graphics/Path;
    .locals 18

    .line 55
    move-object/from16 v0, p0

    iget-object v7, v0, Lo/ahl;->bER:Ljava/util/Random;

    .line 57
    move-object/from16 v0, p0

    iget v0, v0, Lo/ahl;->bEU:I

    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 58
    move-object/from16 v0, p0

    iget v0, v0, Lo/ahl;->bEU:I

    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget v1, v1, Lo/ahl;->bET:I

    sub-int v10, v0, v1

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xf

    move-object/from16 v1, p0

    iget v1, v1, Lo/ahl;->mLength:I

    mul-int v1, v1, p3

    add-int v11, v0, v1

    .line 66
    move-object/from16 v0, p0

    iget v0, v0, Lo/ahl;->bEV:I

    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v11, v0

    .line 68
    const-string v0, "HeartRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning path composition with heart count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "and length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and adjusted Y value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/akk;->ᐪ(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    int-to-float v0, v11

    move-object/from16 v1, p0

    iget v1, v1, Lo/ahl;->bEW:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v12, v0

    .line 73
    move-object/from16 v0, p0

    iget v0, v0, Lo/ahl;->bEX:I

    add-int v13, v0, v8

    .line 74
    move-object/from16 v0, p0

    iget v0, v0, Lo/ahl;->bEX:I

    add-int v14, v0, v9

    .line 75
    sub-int v15, v10, v11

    .line 76
    div-int/lit8 v0, v11, 0x2

    sub-int v16, v10, v0

    .line 78
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 79
    move-object/from16 v0, p0

    iget v0, v0, Lo/ahl;->bES:I

    int-to-float v0, v0

    int-to-float v1, v10

    move-object/from16 v2, v17

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iget v1, v1, Lo/ahl;->bES:I

    int-to-float v1, v1

    sub-int v2, v10, v12

    int-to-float v2, v2

    int-to-float v3, v13

    add-int v4, v16, v12

    int-to-float v4, v4

    int-to-float v5, v13

    move/from16 v6, v16

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 86
    int-to-float v0, v13

    move/from16 v1, v16

    int-to-float v1, v1

    move-object/from16 v2, v17

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    move-object/from16 v0, v17

    int-to-float v1, v13

    sub-int v2, v16, v12

    int-to-float v2, v2

    int-to-float v3, v14

    add-int v4, v15, v12

    int-to-float v4, v4

    int-to-float v5, v14

    int-to-float v6, v15

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 93
    return-object v17
.end method

.method public abstract ˊ(Landroid/view/View;Landroid/view/ViewGroup;)V
.end method
