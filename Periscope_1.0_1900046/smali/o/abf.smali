.class public Lo/abf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final bvp:I

.field public final src:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lo/abf;->src:I

    .line 11
    iput p2, p0, Lo/abf;->bvp:I

    .line 12
    return-void
.end method


# virtual methods
.method public ˆ(F)I
    .locals 11

    .line 15
    iget v0, p0, Lo/abf;->src:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 16
    iget v0, p0, Lo/abf;->bvp:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 18
    iget v0, p0, Lo/abf;->src:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 19
    iget v0, p0, Lo/abf;->bvp:I

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 21
    iget v0, p0, Lo/abf;->src:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 22
    iget v0, p0, Lo/abf;->bvp:I

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 24
    int-to-float v0, v2

    sub-int v1, v3, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v8, v0

    .line 25
    int-to-float v0, v4

    sub-int v1, v5, v4

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 26
    int-to-float v0, v6

    sub-int v1, v7, v6

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v10, v0

    .line 28
    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method
