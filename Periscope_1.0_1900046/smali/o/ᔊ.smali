.class Lo/ᔊ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᔊ$if;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static ˊ(Landroid/view/LayoutInflater;Lo/ᕑ;)V
    .locals 1

    .line 45
    if-eqz p1, :cond_0

    new-instance v0, Lo/ᔊ$if;

    invoke-direct {v0, p1}, Lo/ᔊ$if;-><init>(Lo/ᕑ;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 46
    return-void
.end method
