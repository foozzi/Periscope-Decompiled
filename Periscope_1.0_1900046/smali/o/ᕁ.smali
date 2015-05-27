.class Lo/ᕁ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ(Landroid/view/LayoutInflater;Lo/ᕑ;)V
    .locals 1

    .line 24
    if-eqz p1, :cond_0

    new-instance v0, Lo/ᔋ$if;

    invoke-direct {v0, p1}, Lo/ᔋ$if;-><init>(Lo/ᕑ;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 26
    return-void
.end method
