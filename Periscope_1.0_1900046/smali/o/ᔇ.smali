.class Lo/ᔇ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 29
    instance-of v0, p0, Lo/ᴸ;

    if-eqz v0, :cond_0

    .line 30
    move-object v0, p0

    check-cast v0, Lo/ᴸ;

    invoke-interface {v0, p1}, Lo/ᴸ;->setTint(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 35
    instance-of v0, p0, Lo/ᴸ;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, p0

    check-cast v0, Lo/ᴸ;

    invoke-interface {v0, p1}, Lo/ᴸ;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static ˊ(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 41
    instance-of v0, p0, Lo/ᴸ;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Lo/ᴸ;

    invoke-interface {v0, p1}, Lo/ᴸ;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static ᐝ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 47
    instance-of v0, p0, Lo/ᵀ;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lo/ᵀ;

    invoke-direct {v0, p0}, Lo/ᵀ;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 50
    :cond_0
    return-object p0
.end method
