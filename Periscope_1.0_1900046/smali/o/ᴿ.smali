.class public Lo/ᴿ;
.super Landroid/widget/TextView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ᴿ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ᴿ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Lo/ڊ$ʽ;->AppCompatTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 49
    sget v0, Lo/ڊ$ʽ;->AppCompatTextView_android_textAppearance:I

    const/4 v1, -0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 50
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    .line 54
    sget-object v0, Lo/ڊ$ʽ;->TextAppearance:[I

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 55
    sget v0, Lo/ڊ$ʽ;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget v0, Lo/ڊ$ʽ;->TextAppearance_textAllCaps:I

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ᴿ;->setAllCaps(Z)V

    .line 58
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    :cond_1
    sget-object v0, Lo/ڊ$ʽ;->AppCompatTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 63
    sget v0, Lo/ڊ$ʽ;->AppCompatTextView_textAllCaps:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    sget v0, Lo/ڊ$ʽ;->AppCompatTextView_textAllCaps:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ᴿ;->setAllCaps(Z)V

    .line 66
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method


# virtual methods
.method public setAllCaps(Z)V
    .locals 2

    .line 70
    if-eqz p1, :cond_0

    new-instance v0, Lo/ว;

    invoke-virtual {p0}, Lo/ᴿ;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ว;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lo/ᴿ;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 71
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    sget-object v0, Lo/ڊ$ʽ;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 78
    sget v0, Lo/ڊ$ʽ;->TextAppearance_textAllCaps:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget v0, Lo/ڊ$ʽ;->TextAppearance_textAllCaps:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ᴿ;->setAllCaps(Z)V

    .line 81
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method
