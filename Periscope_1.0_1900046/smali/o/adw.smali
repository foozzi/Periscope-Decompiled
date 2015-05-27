.class public Lo/adw;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/adw$1;,
        Lo/adw$if;,
        Lo/adw$ˎ;,
        Lo/adw$ˊ;,
        Lo/adw$ˋ;
    }
.end annotation


# static fields
.field private static final 丨:[I


# instance fields
.field public bzd:F

.field public bze:F

.field private bzf:Lo/adw$ˎ;

.field private bzg:Lo/ʟ;

.field private bzh:Lo/adw$ˋ;

.field private bzi:Landroid/view/View;

.field private bzj:Z

.field private bzk:F

.field private bzl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/afx;>;"
        }
    .end annotation
.end field

.field private bzm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lo/afx;>;"
        }
    .end annotation
.end field

.field private bzn:Lo/vj;

.field private bzo:F

.field private final bzp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field private bzq:I

.field private bzr:Landroid/graphics/Paint;

.field private mInLayout:Z

.field private ر:F

.field private ᴐ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/adw;->丨:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100b3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/adw;->ᴐ:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/adw;->bzp:Ljava/util/ArrayList;

    .line 49
    const/high16 v0, -0x67000000

    iput v0, p0, Lo/adw;->bzq:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/adw;->bzr:Landroid/graphics/Paint;

    .line 54
    invoke-direct {p0, p1}, Lo/adw;->ˊ(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/adw;->ᴐ:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/adw;->bzp:Ljava/util/ArrayList;

    .line 49
    const/high16 v0, -0x67000000

    iput v0, p0, Lo/adw;->bzq:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/adw;->bzr:Landroid/graphics/Paint;

    .line 59
    invoke-direct {p0, p1}, Lo/adw;->ˊ(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/adw;->ᴐ:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/adw;->bzp:Ljava/util/ArrayList;

    .line 49
    const/high16 v0, -0x67000000

    iput v0, p0, Lo/adw;->bzq:I

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/adw;->bzr:Landroid/graphics/Paint;

    .line 64
    invoke-direct {p0, p1}, Lo/adw;->ˊ(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic jL()[I
    .locals 1

    .line 23
    sget-object v0, Lo/adw;->丨:[I

    return-object v0
.end method

.method private xk()V
    .locals 8

    .line 217
    iget-object v3, p0, Lo/adw;->bzi:Landroid/view/View;

    .line 218
    if-nez v3, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v4, v0

    .line 222
    iget v0, p0, Lo/adw;->bzd:F

    iget v1, v4, Lo/adw$ˊ;->bzt:F

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 223
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 225
    iget v0, v4, Lo/adw$ˊ;->leftMargin:I

    iget v1, v4, Lo/adw$ˊ;->leftMargin:I

    add-int/2addr v1, v6

    add-int v2, v5, v7

    invoke-virtual {v3, v0, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 226
    return-void
.end method

.method private xl()Landroid/view/View;
    .locals 4

    .line 390
    iget-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afx;

    move-object v2, v0

    .line 391
    iget-boolean v0, v2, Lo/afx;->bCU:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, v2, Lo/afx;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    iget v3, v0, Lo/adw$ˊ;->bzt:F

    .line 393
    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    .line 394
    iget-object v0, v2, Lo/afx;->view:Landroid/view/View;

    return-object v0

    .line 397
    :cond_0
    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private xm()F
    .locals 2

    .line 402
    invoke-direct {p0}, Lo/adw;->xl()Landroid/view/View;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_0

    .line 404
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    iget v0, v0, Lo/adw$ˊ;->bzt:F

    return v0

    .line 406
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ʹ(Ljava/util/List;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/afx;>;)Landroid/view/View;"
        }
    .end annotation

    .line 501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afx;

    move-object v2, v0

    .line 502
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lo/afx;->ʇ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, v2, Lo/afx;->view:Landroid/view/View;

    return-object v0

    .line 505
    :cond_0
    goto :goto_0

    .line 506
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic ʻ(Lo/adw;)Landroid/view/View;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    return-object v0
.end method

.method private ʻ(Landroid/view/View;II)V
    .locals 10

    .line 229
    if-nez p1, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    sub-int v3, p3, p2

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v6, v0

    .line 236
    int-to-float v0, v4

    iget v1, v6, Lo/adw$ˊ;->bzt:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int v7, v3, v0

    .line 237
    sub-int v0, v3, v7

    int-to-float v0, v0

    int-to-float v1, v4

    div-float v8, v0, v1

    .line 238
    iget v0, v6, Lo/adw$ˊ;->bzt:F

    cmpl-float v0, v8, v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 240
    :goto_0
    iget v0, v6, Lo/adw$ˊ;->leftMargin:I

    iget v1, v6, Lo/adw$ˊ;->leftMargin:I

    add-int/2addr v1, v5

    add-int v2, v7, v4

    invoke-virtual {p1, v0, v7, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 242
    if-eqz v9, :cond_2

    .line 243
    iput v8, v6, Lo/adw$ˊ;->bzt:F

    .line 245
    :cond_2
    return-void
.end method

.method static synthetic ʼ(Lo/adw;)Lo/vj;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/adw;->bzn:Lo/vj;

    return-object v0
.end method

.method private ˀ(Landroid/view/View;)Z
    .locals 1

    .line 248
    iget-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lo/adw;->ˊ(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private ˁ(Landroid/view/View;)Z
    .locals 3

    .line 454
    iget-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afx;

    move-object v2, v0

    .line 455
    iget-object v0, v2, Lo/afx;->view:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 456
    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, v2, Lo/afx;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lo/adw;->ˢ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    const/4 v0, 0x1

    return v0

    .line 461
    :cond_1
    goto :goto_0

    .line 462
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ˊ(Lo/adw;)Lo/adw$ˋ;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/adw;->bzh:Lo/adw$ˋ;

    return-object v0
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 4

    .line 68
    new-instance v0, Lo/adw$ˎ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/adw$ˎ;-><init>(Lo/adw;Lo/adw$1;)V

    iput-object v0, p0, Lo/adw;->bzf:Lo/adw$ˎ;

    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lo/adw;->bzk:F

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lo/adw;->bzd:F

    .line 72
    iget v0, p0, Lo/adw;->bzd:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lo/adw;->bze:F

    .line 74
    invoke-virtual {p0}, Lo/adw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 75
    const/high16 v0, 0x43c80000    # 400.0f

    mul-float v3, v0, v2

    .line 76
    iget-object v0, p0, Lo/adw;->bzf:Lo/adw$ˎ;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Lo/ʟ;->ˊ(Landroid/view/ViewGroup;FLo/ʟ$if;)Lo/ʟ;

    move-result-object v0

    iput-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    .line 77
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {v0, v3}, Lo/ʟ;->ˍ(F)V

    .line 78
    return-void
.end method

.method static synthetic ˊ(Lo/adw;Landroid/view/View;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lo/adw;->ᐝ(Landroid/view/View;Z)V

    return-void
.end method

.method private ˊ(Ljava/util/List;Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/afx;>;Landroid/view/View;)Z"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Lo/adw;->ˋ(Ljava/util/List;Landroid/view/View;)Lo/afx;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˊ(Lo/adw;Landroid/view/View;)Z
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lo/adw;->ˀ(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private ˋ(Ljava/util/List;Landroid/view/View;)Lo/afx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/afx;>;Landroid/view/View;)Lo/afx;"
        }
    .end annotation

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afx;

    move-object v2, v0

    .line 257
    iget-object v0, v2, Lo/afx;->view:Landroid/view/View;

    if-ne v0, p2, :cond_0

    .line 258
    return-object v2

    .line 260
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic ˋ(Lo/adw;)Lo/ʟ;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    return-object v0
.end method

.method private ˋ(IIIIZ)V
    .locals 18

    .line 266
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getChildCount()I

    move-result v2

    .line 268
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingLeft()I

    move-result v3

    .line 269
    sub-int v0, p3, p1

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 271
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingTop()I

    move-result v5

    .line 272
    sub-int v0, p4, p2

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingBottom()I

    move-result v1

    sub-int v6, v0, v1

    .line 274
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_4

    .line 275
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lo/adw;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/adw;->bzi:Landroid/view/View;

    if-eq v8, v0, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lo/adw;->ˀ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 277
    goto/16 :goto_5

    .line 279
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v9, v0

    .line 281
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 282
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 287
    iget v14, v9, Lo/adw$ˊ;->gravity:I

    .line 288
    const/4 v0, -0x1

    if-ne v14, v0, :cond_1

    .line 289
    const v14, 0x800033

    .line 292
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getLayoutDirection()I

    move-result v15

    .line 293
    invoke-static {v14, v15}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v16

    .line 294
    and-int/lit8 v17, v14, 0x70

    .line 296
    and-int/lit8 v0, v16, 0x7

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 298
    :pswitch_0
    sub-int v0, v4, v3

    sub-int/2addr v0, v10

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    iget v1, v9, Lo/adw$ˊ;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Lo/adw$ˊ;->rightMargin:I

    sub-int v12, v0, v1

    .line 300
    goto :goto_2

    .line 302
    :pswitch_1
    if-nez p5, :cond_2

    .line 303
    sub-int v0, v4, v10

    iget v1, v9, Lo/adw$ˊ;->rightMargin:I

    sub-int v12, v0, v1

    .line 304
    goto :goto_2

    .line 308
    :cond_2
    :goto_1
    :pswitch_2
    iget v0, v9, Lo/adw$ˊ;->leftMargin:I

    add-int v12, v3, v0

    .line 311
    :goto_2
    sparse-switch v17, :sswitch_data_0

    goto :goto_3

    .line 313
    :sswitch_0
    iget v0, v9, Lo/adw$ˊ;->topMargin:I

    add-int v13, v5, v0

    .line 314
    goto :goto_4

    .line 316
    :sswitch_1
    sub-int v0, v6, v5

    sub-int/2addr v0, v11

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    iget v1, v9, Lo/adw$ˊ;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v9, Lo/adw$ˊ;->bottomMargin:I

    sub-int v13, v0, v1

    .line 318
    goto :goto_4

    .line 320
    :sswitch_2
    sub-int v0, v6, v11

    iget v1, v9, Lo/adw$ˊ;->bottomMargin:I

    sub-int v13, v0, v1

    .line 321
    goto :goto_4

    .line 323
    :goto_3
    iget v0, v9, Lo/adw$ˊ;->topMargin:I

    add-int v13, v5, v0

    .line 326
    :goto_4
    add-int v0, v12, v10

    add-int v1, v13, v11

    invoke-virtual {v8, v12, v13, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 274
    :cond_3
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 328
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private ˋ(IZZ)V
    .locals 3

    .line 108
    invoke-virtual {p0, p1}, Lo/adw;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    new-instance v2, Lo/adw$if;

    invoke-direct {v2, p0}, Lo/adw$if;-><init>(Lo/adw;)V

    .line 111
    iput-object v1, v2, Lo/afx;->view:Landroid/view/View;

    .line 112
    iput-boolean p2, v2, Lo/afx;->bCT:Z

    .line 113
    iput-boolean p3, v2, Lo/afx;->bCU:Z

    .line 114
    iget-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic ˋ(Lo/adw;Landroid/view/View;)Z
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Lo/adw;->ˁ(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˎ(Lo/adw;)F
    .locals 1

    .line 23
    iget v0, p0, Lo/adw;->bzk:F

    return v0
.end method

.method static synthetic ˏ(Lo/adw;)F
    .locals 1

    .line 23
    iget v0, p0, Lo/adw;->ر:F

    return v0
.end method

.method private ˏ(IF)V
    .locals 4

    .line 474
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lo/ʟ;->ʾ(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {v0}, Lo/ʟ;->ᕑ()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 476
    iget v0, p0, Lo/adw;->ر:F

    sub-float v2, p2, v0

    .line 477
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    .line 478
    iget-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    invoke-direct {p0, v0}, Lo/adw;->ˁ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    iget-object v1, p0, Lo/adw;->bzi:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lo/ʟ;->ᐝ(Landroid/view/View;I)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    invoke-direct {p0, v0}, Lo/adw;->ՙ(Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    .line 482
    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lo/adw;->ˁ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {v0, v3, p1}, Lo/ʟ;->ᐝ(Landroid/view/View;I)V

    .line 485
    :cond_1
    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    invoke-direct {p0, v0}, Lo/adw;->ˁ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 488
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    iget-object v1, p0, Lo/adw;->bzi:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lo/ʟ;->ᐝ(Landroid/view/View;I)V

    goto :goto_0

    .line 490
    :cond_3
    iget-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    invoke-direct {p0, v0}, Lo/adw;->ʹ(Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    .line 491
    if-eqz v3, :cond_4

    invoke-direct {p0, v3}, Lo/adw;->ˁ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 492
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {v0, v3, p1}, Lo/ʟ;->ᐝ(Landroid/view/View;I)V

    .line 498
    :cond_4
    :goto_0
    return-void
.end method

.method private ՙ(Ljava/util/List;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/afx;>;)Landroid/view/View;"
        }
    .end annotation

    .line 510
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afx;

    move-object v2, v0

    .line 511
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lo/afx;->ʇ(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, v2, Lo/afx;->view:Landroid/view/View;

    return-object v0

    .line 514
    :cond_0
    goto :goto_0

    .line 515
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic ᐝ(Lo/adw;)F
    .locals 1

    .line 23
    iget v0, p0, Lo/adw;->bzo:F

    return v0
.end method

.method private ᐝ(Landroid/view/View;Z)V
    .locals 1

    .line 631
    iget-object v0, p0, Lo/adw;->bzh:Lo/adw$ˋ;

    if-eqz v0, :cond_1

    .line 632
    if-eqz p2, :cond_0

    .line 633
    iget-object v0, p0, Lo/adw;->bzh:Lo/adw$ˋ;

    invoke-interface {v0, p1}, Lo/adw$ˋ;->ᐢ(Landroid/view/View;)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lo/adw;->bzh:Lo/adw$ˋ;

    invoke-interface {v0, p1}, Lo/adw$ˋ;->৲(Landroid/view/View;)V

    .line 638
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 541
    instance-of v0, p1, Lo/adw$ˊ;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeScroll()V
    .locals 2

    .line 520
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ʟ;->ʿ(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    invoke-static {p0}, Lo/ﺑ;->ʿ(Landroid/view/View;)V

    .line 523
    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 12

    .line 642
    move-wide v0, p3

    invoke-super {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 644
    iget-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lo/adw;->ˋ(Ljava/util/List;Landroid/view/View;)Lo/afx;

    move-result-object v7

    .line 645
    if-eqz v7, :cond_0

    iget-boolean v0, v7, Lo/afx;->bCU:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    iget v8, v0, Lo/adw$ˊ;->bzt:F

    .line 647
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_0

    .line 648
    iget v0, p0, Lo/adw;->bzq:I

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    ushr-int/lit8 v9, v0, 0x18

    .line 649
    int-to-float v0, v9

    mul-float/2addr v0, v8

    float-to-int v10, v0

    .line 650
    shl-int/lit8 v0, v10, 0x18

    iget v1, p0, Lo/adw;->bzq:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int v11, v0, v1

    .line 651
    iget-object v0, p0, Lo/adw;->bzr:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    move-object v0, p1

    invoke-virtual {p0}, Lo/adw;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Lo/adw;->bzr:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 657
    :cond_0
    return v6
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/adw;->xn()Lo/adw$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 23
    invoke-virtual {p0, p1}, Lo/adw;->ᐝ(Landroid/util/AttributeSet;)Lo/adw$ˊ;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 532
    instance-of v0, p1, Lo/adw$ˊ;

    if-eqz v0, :cond_0

    new-instance v0, Lo/adw$ˊ;

    move-object v1, p1

    check-cast v1, Lo/adw$ˊ;

    invoke-direct {v0, v1}, Lo/adw$ˊ;-><init>(Lo/adw$ˊ;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lo/adw$ˊ;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lo/adw$ˊ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lo/adw$ˊ;

    invoke-direct {v0, p1}, Lo/adw$ˊ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 345
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/adw;->ᴐ:Z

    .line 347
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 339
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/adw;->ᴐ:Z

    .line 341
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 102
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lo/adw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/adw;->bzi:Landroid/view/View;

    .line 103
    const v0, 0x7f0b009a

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/adw;->ˋ(IZZ)V

    .line 104
    const v0, 0x7f0b009d

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lo/adw;->ˋ(IZZ)V

    .line 105
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 351
    iget-boolean v0, p0, Lo/adw;->bzj:Z

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    return v0

    .line 354
    :cond_0
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v3

    .line 355
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 358
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 360
    iput v6, p0, Lo/adw;->bzo:F

    .line 362
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {v0, p1}, Lo/ʟ;->ʻ(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 363
    const/4 v8, 0x0

    .line 365
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 367
    :sswitch_0
    iput v6, p0, Lo/adw;->ر:F

    .line 368
    invoke-direct {p0}, Lo/adw;->xm()F

    move-result v9

    .line 369
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    float-to-int v1, v5

    float-to-int v2, v6

    invoke-virtual {v0, v1, v2}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lo/adw;->xl()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 370
    const/4 v8, 0x1

    goto :goto_0

    .line 375
    :sswitch_1
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    float-to-int v1, v5

    float-to-int v2, v6

    invoke-virtual {v0, v1, v2}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v9

    .line 376
    if-eqz v9, :cond_1

    iget v0, p0, Lo/adw;->ر:F

    sub-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {v9, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 377
    :cond_1
    invoke-direct {p0, v4, v6}, Lo/adw;->ˏ(IF)V

    .line 379
    :cond_2
    iput v6, p0, Lo/adw;->ر:F

    .line 380
    .line 383
    :cond_3
    :goto_0
    if-nez v7, :cond_4

    if-eqz v8, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/adw;->mInLayout:Z

    .line 205
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/adw;->ˋ(IIIIZ)V

    .line 206
    invoke-direct {p0}, Lo/adw;->xk()V

    .line 208
    iget-object v0, p0, Lo/adw;->bzm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/afx;

    move-object v7, v0

    .line 209
    iget-object v0, v7, Lo/afx;->view:Landroid/view/View;

    invoke-direct {p0, v0, p3, p5}, Lo/adw;->ʻ(Landroid/view/View;II)V

    .line 210
    goto :goto_0

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/adw;->mInLayout:Z

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/adw;->ᴐ:Z

    .line 214
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    .line 121
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getChildCount()I

    move-result v6

    .line 123
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 126
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/adw;->bzp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    const/4 v8, 0x0

    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v10, 0x0

    .line 132
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v6, :cond_4

    .line 133
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lo/adw;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 134
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 135
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, p1

    move/from16 v4, p2

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lo/adw;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 136
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v13, v0

    .line 137
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, v13, Lo/adw$ˊ;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Lo/adw$ˊ;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 139
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, v13, Lo/adw$ˊ;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Lo/adw$ˊ;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 141
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v10, v0}, Lo/adw;->combineMeasuredStates(II)I

    move-result v10

    .line 142
    if-eqz v7, :cond_3

    .line 143
    iget v0, v13, Lo/adw$ˊ;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, v13, Lo/adw$ˊ;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 145
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/adw;->bzp:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 152
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 157
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 159
    move/from16 v0, p1

    invoke-static {v9, v0, v10}, Lo/adw;->resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v1, v10, 0x10

    move/from16 v2, p2

    invoke-static {v8, v2, v1}, Lo/adw;->resolveSizeAndState(III)I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Lo/adw;->setMeasuredDimension(II)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/adw;->bzp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 164
    const/4 v0, 0x1

    if-le v6, v0, :cond_7

    .line 165
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v6, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/adw;->bzp:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v12, v0

    .line 168
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v13, v0

    .line 172
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 173
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    goto :goto_3

    .line 178
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v2, p1

    invoke-static {v2, v0, v1}, Lo/adw;->getChildMeasureSpec(III)I

    move-result v14

    .line 184
    :goto_3
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 185
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getMeasuredHeight()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_4

    .line 190
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lo/adw;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v2, p2

    invoke-static {v2, v0, v1}, Lo/adw;->getChildMeasureSpec(III)I

    move-result v15

    .line 196
    :goto_4
    invoke-virtual {v12, v14, v15}, Landroid/view/View;->measure(II)V

    .line 165
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 199
    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 411
    iget-boolean v0, p0, Lo/adw;->bzj:Z

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    return v0

    .line 415
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 418
    iput v4, p0, Lo/adw;->bzo:F

    .line 421
    :try_start_0
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {v0, p1}, Lo/ʟ;->ʼ(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    goto :goto_0

    .line 422
    :catch_0
    move-exception v5

    .line 427
    :goto_0
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v5

    .line 428
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 430
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lo/adw;->ر:F

    .line 431
    goto :goto_1

    .line 434
    :pswitch_1
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    float-to-int v1, v3

    float-to-int v2, v4

    invoke-virtual {v0, v1, v2}, Lo/ʟ;->ˈ(II)Landroid/view/View;

    move-result-object v6

    .line 435
    if-eqz v6, :cond_1

    iget v0, p0, Lo/adw;->ر:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/ᵧ;->ˋ(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 437
    invoke-direct {p0, v7, v4}, Lo/adw;->ˏ(IF)V

    .line 439
    :cond_2
    iput v4, p0, Lo/adw;->ر:F

    .line 440
    goto :goto_1

    .line 443
    :pswitch_2
    invoke-direct {p0}, Lo/adw;->xl()Landroid/view/View;

    move-result-object v6

    .line 444
    if-eqz v6, :cond_3

    .line 445
    invoke-virtual {p0, v6}, Lo/adw;->ᕀ(Landroid/view/View;)V

    .line 450
    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .line 332
    iget-boolean v0, p0, Lo/adw;->mInLayout:Z

    if-nez v0, :cond_0

    .line 333
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 335
    :cond_0
    return-void
.end method

.method public setDragRecorder(Lo/vj;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lo/adw;->bzn:Lo/vj;

    .line 90
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lo/adw;->bzj:Z

    .line 86
    return-void
.end method

.method public setFriction(F)V
    .locals 0

    .line 96
    iput p1, p0, Lo/adw;->bzk:F

    .line 97
    return-void
.end method

.method public setOnViewDragListener(Lo/adw$ˋ;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lo/adw;->bzh:Lo/adw$ˋ;

    .line 82
    return-void
.end method

.method protected xn()Lo/adw$ˊ;
    .locals 3

    .line 527
    new-instance v0, Lo/adw$ˊ;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lo/adw$ˊ;-><init>(II)V

    return-object v0
.end method

.method public ˢ(Landroid/view/View;)Z
    .locals 3

    .line 550
    if-nez p1, :cond_0

    .line 551
    const/4 v0, 0x0

    return v0

    .line 553
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v2, v0

    .line 554
    iget v0, v2, Lo/adw$ˊ;->bzt:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˤ(Landroid/view/View;)V
    .locals 5

    .line 558
    iget-boolean v0, p0, Lo/adw;->ᴐ:Z

    if-eqz v0, :cond_2

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0089

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lo/adw;->ˊ(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v4, v0

    .line 561
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Lo/adw$ˊ;->bzt:F

    .line 562
    goto :goto_1

    .line 563
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 568
    :sswitch_0
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lo/adw;->bzd:F

    float-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lo/ʟ;->ˊ(Landroid/view/View;II)Z

    .line 569
    goto :goto_1

    .line 571
    :goto_0
    invoke-direct {p0, p1}, Lo/adw;->ˀ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lo/adw;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lo/ʟ;->ˊ(Landroid/view/View;II)Z

    goto :goto_1

    .line 574
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :goto_1
    invoke-virtual {p0}, Lo/adw;->invalidate()V

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/adw;->ᐝ(Landroid/view/View;Z)V

    .line 580
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
    .end sparse-switch
.end method

.method public ι(Landroid/view/View;)V
    .locals 2

    .line 608
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 610
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-gtz v0, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Lo/adw;->ˤ(Landroid/view/View;)V

    goto :goto_1

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Lo/adw;->ᕀ(Landroid/view/View;)V

    .line 615
    goto :goto_1

    .line 617
    :goto_0
    invoke-direct {p0, p1}, Lo/adw;->ˀ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Lo/adw;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 619
    invoke-virtual {p0, p1}, Lo/adw;->ˤ(Landroid/view/View;)V

    goto :goto_1

    .line 621
    :cond_1
    invoke-virtual {p0, p1}, Lo/adw;->ᕀ(Landroid/view/View;)V

    goto :goto_1

    .line 624
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
    .end sparse-switch
.end method

.method public ᐝ(Landroid/util/AttributeSet;)Lo/adw$ˊ;
    .locals 2

    .line 546
    new-instance v0, Lo/adw$ˊ;

    invoke-virtual {p0}, Lo/adw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/adw$ˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public ᕀ(Landroid/view/View;)V
    .locals 4

    .line 583
    iget-boolean v0, p0, Lo/adw;->ᴐ:Z

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0089

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/adw;->bzl:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lo/adw;->ˊ(Ljava/util/List;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/adw$ˊ;

    move-object v3, v0

    .line 586
    const/4 v0, 0x0

    iput v0, v3, Lo/adw$ˊ;->bzt:F

    .line 587
    goto :goto_1

    .line 588
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 593
    :sswitch_0
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lo/ʟ;->ˊ(Landroid/view/View;II)Z

    .line 594
    goto :goto_1

    .line 596
    :goto_0
    invoke-direct {p0, p1}, Lo/adw;->ˀ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, p0, Lo/adw;->bzg:Lo/ʟ;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lo/adw;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lo/ʟ;->ˊ(Landroid/view/View;II)Z

    goto :goto_1

    .line 599
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a drag child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :goto_1
    invoke-virtual {p0}, Lo/adw;->invalidate()V

    .line 604
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lo/adw;->ᐝ(Landroid/view/View;Z)V

    .line 605
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0089 -> :sswitch_0
    .end sparse-switch
.end method
