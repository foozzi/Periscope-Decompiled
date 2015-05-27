.class public Lo/ī;
.super Landroid/widget/TextView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 10

    .line 49
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 51
    invoke-virtual {p0}, Lo/ī;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v6

    .line 54
    if-lez v6, :cond_1

    .line 55
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v5, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v7

    .line 56
    if-lez v7, :cond_1

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ī;->setSingleLine(Z)V

    .line 58
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/ī;->setMaxLines(I)V

    .line 60
    invoke-virtual {p0}, Lo/ī;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/ڊ$ʽ;->TextAppearance:[I

    const/4 v2, 0x0

    const v3, 0x1010041

    const v4, 0x1030044

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 64
    sget v0, Lo/ڊ$ʽ;->TextAppearance_android_textSize:I

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 66
    if-eqz v9, :cond_0

    .line 68
    int-to-float v0, v9

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lo/ī;->setTextSize(IF)V

    .line 70
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 76
    :cond_1
    return-void
.end method
