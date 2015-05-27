.class public Lo/ṝ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ḟ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ṝ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u1e1f<TR;>;"
    }
.end annotation


# instance fields
.field private final mJ:Lo/ṝ$if;


# direct methods
.method constructor <init>(Lo/ṝ$if;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/ṝ;->mJ:Lo/ṝ$if;

    .line 22
    return-void
.end method


# virtual methods
.method public ˊ(Ljava/lang/Object;Lo/ḟ$if;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;Lo/\u1e1f$if;)Z"
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Lo/ḟ$if;->getView()Landroid/view/View;

    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 39
    iget-object v0, p0, Lo/ṝ;->mJ:Lo/ṝ$if;

    invoke-interface {v0}, Lo/ṝ$if;->ᴽ()Landroid/view/animation/Animation;

    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
