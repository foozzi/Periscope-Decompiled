.class public Lo/ᐡ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ˊ(II)I
    .locals 8

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 36
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 37
    invoke-static {v3, v2}, Lo/ᐡ;->ˋ(II)I

    move-result v4

    .line 39
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0, v3, v1, v2, v4}, Lo/ᐡ;->ˊ(IIIII)I

    move-result v5

    .line 41
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v0, v3, v1, v2, v4}, Lo/ᐡ;->ˊ(IIIII)I

    move-result v6

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v3, v1, v2, v4}, Lo/ᐡ;->ˊ(IIIII)I

    move-result v7

    .line 46
    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static ˊ(IIIII)I
    .locals 3

    .line 54
    if-nez p4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 55
    :cond_0
    mul-int/lit16 v0, p0, 0xff

    mul-int/2addr v0, p1

    mul-int v1, p2, p3

    rsub-int v2, p1, 0xff

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit16 v1, p4, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private static ˋ(II)I
    .locals 2

    .line 50
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static ˎ(II)I
    .locals 2

    .line 278
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alpha must be between 0 and 255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
