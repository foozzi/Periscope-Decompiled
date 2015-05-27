.class public Lo/ᴽ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ḟ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Landroid/graphics/drawable/Drawable;>Ljava/lang/Object;Lo/\u1e1f<TT;>;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private final mG:Lo/ḟ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u1e1f<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ḟ;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u1e1f<TT;>;I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/ᴽ;->mG:Lo/ḟ;

    .line 26
    iput p2, p0, Lo/ᴽ;->duration:I

    .line 27
    return-void
.end method


# virtual methods
.method public ˊ(Landroid/graphics/drawable/Drawable;Lo/ḟ$if;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Lo/\u1e1f$if;)Z"
        }
    .end annotation

    .line 44
    invoke-interface {p2}, Lo/ḟ$if;->ḟ()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-direct {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 48
    iget v0, p0, Lo/ᴽ;->duration:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 49
    invoke-interface {p2, v3}, Lo/ḟ$if;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lo/ᴽ;->mG:Lo/ḟ;

    invoke-interface {v0, p1, p2}, Lo/ḟ;->ˊ(Ljava/lang/Object;Lo/ḟ$if;)Z

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic ˊ(Ljava/lang/Object;Lo/ḟ$if;)Z
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p2}, Lo/ᴽ;->ˊ(Landroid/graphics/drawable/Drawable;Lo/ḟ$if;)Z

    move-result v0

    return v0
.end method
