.class public Lo/ahh;
.super Landroid/support/v7/widget/RecyclerView$aux;
.source ""


# static fields
.field private static final bEy:[I


# instance fields
.field private final bEz:I

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ahh;->bEy:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7
        0x3
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$aux;-><init>()V

    .line 18
    iput p1, p0, Lo/ahh;->bEz:I

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/ahh;->mPaint:Landroid/graphics/Paint;

    .line 20
    iget-object v0, p0, Lo/ahh;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    return-void
.end method

.method private ˊ(I[ILandroid/support/v7/widget/RecyclerView;)Z
    .locals 8

    .line 54
    const/4 v1, 0x0

    .line 55
    add-int/lit8 v2, p1, -0x1

    .line 56
    if-ltz v2, :cond_1

    .line 57
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->ᵇ()Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$if;->getItemViewType(I)I

    move-result v3

    .line 58
    move-object v4, p2

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    .line 59
    if-ne v3, v7, :cond_0

    .line 60
    const/4 v1, 0x1

    .line 61
    goto :goto_1

    .line 58
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public ˊ(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 3

    .line 26
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->ᵣ(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ˑ;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ˑ;->getItemViewType()I

    move-result v1

    .line 27
    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 32
    :sswitch_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->ᴶ(Landroid/view/View;)I

    move-result v2

    .line 33
    sget-object v0, Lo/ahh;->bEy:[I

    invoke-direct {p0, v2, v0, p3}, Lo/ahh;->ˊ(I[ILandroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 36
    :cond_0
    iget v0, p0, Lo/ahh;->bEz:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 38
    :goto_0
    iget v0, p0, Lo/ahh;->bEz:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 39
    iget v0, p0, Lo/ahh;->bEz:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 40
    iget v0, p0, Lo/ahh;->bEz:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 41
    goto :goto_2

    .line 44
    :goto_1
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 45
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 46
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 47
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public ˋ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V
    .locals 9

    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$aux;->ˋ(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ˉ;)V

    .line 72
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    .line 73
    if-lez v6, :cond_0

    .line 74
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 75
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->ᵖ()Landroid/support/v7/widget/RecyclerView$ʻ;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView$ʻ;->ᒡ(Landroid/view/View;)I

    move-result v8

    .line 77
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 78
    move-object v0, p1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v8

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lo/ahh;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    :cond_0
    return-void
.end method
