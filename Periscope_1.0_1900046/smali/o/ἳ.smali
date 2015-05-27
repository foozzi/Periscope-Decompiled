.class public Lo/ἳ;
.super Lo/ῖ;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u1fd6<Landroid/graphics/Bitmap;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lo/ῖ;-><init>(Landroid/widget/ImageView;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected ˈ(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lo/ἳ;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 26
    return-void
.end method

.method protected synthetic ᐩ(Ljava/lang/Object;)V
    .locals 1

    .line 12
    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lo/ἳ;->ˈ(Landroid/graphics/Bitmap;)V

    return-void
.end method
