.class public Lo/ἴ;
.super Lo/ῖ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u1fd6<Landroid/graphics/drawable/Drawable;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lo/ῖ;-><init>(Landroid/widget/ImageView;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected ʾ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lo/ἴ;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    return-void
.end method

.method protected synthetic ᐩ(Ljava/lang/Object;)V
    .locals 1

    .line 9
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/ἴ;->ʾ(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
