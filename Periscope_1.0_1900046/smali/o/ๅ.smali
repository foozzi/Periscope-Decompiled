.class public Lo/ๅ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;

.field private ᒴ:Lo/ฯ;

.field private final ỵ:Landroid/content/res/TypedArray;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lo/ๅ;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    .line 56
    return-void
.end method

.method public static ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lo/ๅ;
    .locals 2

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 44
    new-instance v0, Lo/ๅ;

    invoke-direct {v0, p0, v1}, Lo/ๅ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;
    .locals 2

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 50
    new-instance v0, Lo/ๅ;

    invoke-direct {v0, p0, v1}, Lo/ๅ;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public getDimensionPixelOffset(II)I
    .locals 1

    .line 135
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    return v0
.end method

.method public getDimensionPixelSize(II)I
    .locals 1

    .line 139
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 59
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(IF)F
    .locals 1

    .line 115
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1

    .line 111
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getInteger(II)I
    .locals 1

    .line 127
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    return v0
.end method

.method public getLayoutDimension(II)I
    .locals 1

    .line 147
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    return v0
.end method

.method public getResourceId(II)I
    .locals 1

    .line 155
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasValue(I)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 79
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 183
    iget-object v0, p0, Lo/ๅ;->ỵ:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 184
    return-void
.end method

.method public ゝ()Lo/ฯ;
    .locals 1

    .line 191
    iget-object v0, p0, Lo/ๅ;->ᒴ:Lo/ฯ;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lo/ๅ;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lo/ฯ;->ʻ(Landroid/content/Context;)Lo/ฯ;

    move-result-object v0

    iput-object v0, p0, Lo/ๅ;->ᒴ:Lo/ฯ;

    .line 194
    :cond_0
    iget-object v0, p0, Lo/ๅ;->ᒴ:Lo/ฯ;

    return-object v0
.end method
