.class Lo/ᗮ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 29
    return-void
.end method

.method public static ˎ(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public static ᐝ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 36
    instance-of v0, p0, Lo/ᵗ;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lo/ᵗ;

    invoke-direct {v0, p0}, Lo/ᵗ;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 39
    :cond_0
    return-object p0
.end method
