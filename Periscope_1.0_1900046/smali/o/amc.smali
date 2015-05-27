.class public Lo/amc;
.super Landroid/widget/ImageView;
.source ""


# instance fields
.field private bMQ:Landroid/content/res/ColorStateList;

.field private bMR:I

.field private bMS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/amc;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/amc;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lo/amc;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method private BM()V
    .locals 4

    .line 66
    iget-object v0, p0, Lo/amc;->bMQ:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lo/amc;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 67
    invoke-virtual {p0, v3}, Lo/amc;->setColorFilter(I)V

    .line 68
    return-void
.end method

.method private ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 35
    sget-object v0, Lo/vh$if;->PsImageView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 36
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lo/amc;->bMQ:Landroid/content/res/ColorStateList;

    .line 37
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/amc;->bMR:I

    .line 38
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/amc;->bMS:I

    .line 39
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method


# virtual methods
.method public BK()I
    .locals 1

    .line 50
    iget v0, p0, Lo/amc;->bMR:I

    return v0
.end method

.method public BL()I
    .locals 1

    .line 55
    iget v0, p0, Lo/amc;->bMS:I

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 61
    iget-object v0, p0, Lo/amc;->bMQ:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/amc;->bMQ:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lo/amc;->BM()V

    .line 63
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 44
    iput-object p1, p0, Lo/amc;->bMQ:Landroid/content/res/ColorStateList;

    .line 45
    invoke-virtual {p0}, Lo/amc;->getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46
    return-void
.end method
