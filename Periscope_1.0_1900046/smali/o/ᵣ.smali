.class public Lo/ᵣ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 317
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 318
    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 319
    invoke-static {p0, p1}, Lo/יִ;->ˊ(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
