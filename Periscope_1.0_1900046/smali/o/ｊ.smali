.class public abstract Lo/ｊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Į;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\u012e<TT;>;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final gV:Ljava/lang/String;

.field private final gW:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lo/ｊ;->gW:Landroid/content/res/AssetManager;

    .line 23
    iput-object p2, p0, Lo/ｊ;->gV:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 55
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/ｊ;->gV:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract ˊ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/res/AssetManager;Ljava/lang/String;)TT;"
        }
    .end annotation
.end method

.method public ˊ(Lo/ᔿ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u153f;)TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lo/ｊ;->gW:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lo/ｊ;->gV:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lo/ｊ;->ˊ(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ｊ;->data:Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lo/ｊ;->data:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract ˮ(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public ב()V
    .locals 3

    .line 34
    iget-object v0, p0, Lo/ｊ;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 35
    return-void

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/ｊ;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lo/ｊ;->ˮ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    .line 40
    const-string v0, "AssetUriFetcher"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    const-string v0, "AssetUriFetcher"

    const-string v1, "Failed to close data"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_1
    :goto_0
    return-void
.end method
