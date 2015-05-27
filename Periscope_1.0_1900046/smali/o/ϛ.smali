.class public abstract Lo/ϛ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ɽ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u027d<Landroid/net/Uri;TT;>;"
    }
.end annotation


# instance fields
.field private final dV:Landroid/content/Context;

.field private final jN:Lo/ɽ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u027d<Lo/\ufee3;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ɽ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\u027d<Lo/\ufee3;TT;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lo/ϛ;->dV:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lo/ϛ;->jN:Lo/ɽ;

    .line 23
    return-void
.end method

.method private static ι(Ljava/lang/String;)Z
    .locals 1

    .line 49
    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.resource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected abstract ˊ(Landroid/content/Context;Landroid/net/Uri;)Lo/Į;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Landroid/net/Uri;)Lo/\u012e<TT;>;"
        }
    .end annotation
.end method

.method protected abstract ˊ(Landroid/content/Context;Ljava/lang/String;)Lo/Į;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Ljava/lang/String;)Lo/\u012e<TT;>;"
        }
    .end annotation
.end method

.method public final ˊ(Landroid/net/Uri;II)Lo/Į;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/net/Uri;II)Lo/\u012e<TT;>;"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static {v3}, Lo/ϛ;->ι(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {p1}, Lo/ﮢ;->ˏ(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lo/ﮢ;->ᐝ(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 33
    iget-object v0, p0, Lo/ϛ;->dV:Landroid/content/Context;

    invoke-virtual {p0, v0, v5}, Lo/ϛ;->ˊ(Landroid/content/Context;Ljava/lang/String;)Lo/Į;

    move-result-object v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lo/ϛ;->dV:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lo/ϛ;->ˊ(Landroid/content/Context;Landroid/net/Uri;)Lo/Į;

    move-result-object v4

    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lo/ϛ;->jN:Lo/ɽ;

    if-eqz v0, :cond_3

    const-string v0, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    :cond_2
    iget-object v0, p0, Lo/ϛ;->jN:Lo/ɽ;

    new-instance v1, Lo/ﻣ;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ﻣ;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2, p3}, Lo/ɽ;->ˎ(Ljava/lang/Object;II)Lo/Į;

    move-result-object v4

    .line 41
    :cond_3
    :goto_0
    return-object v4
.end method

.method public synthetic ˎ(Ljava/lang/Object;II)Lo/Į;
    .locals 1

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, v0, p2, p3}, Lo/ϛ;->ˊ(Landroid/net/Uri;II)Lo/Į;

    move-result-object v0

    return-object v0
.end method
