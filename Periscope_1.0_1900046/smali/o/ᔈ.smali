.class Lo/ᔈ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ˋ(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 30
    return-void
.end method

.method public static ᐝ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 33
    instance-of v0, p0, Lo/ᵋ;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lo/ᵋ;

    invoke-direct {v0, p0}, Lo/ᵋ;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 36
    :cond_0
    return-object p0
.end method
