.class public abstract Lo/ɻ;
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
.field private final dV:Landroid/content/Context;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/ɻ;->dV:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lo/ɻ;->uri:Landroid/net/Uri;

    .line 39
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 65
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/ɻ;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˊ(Lo/ᔿ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u153f;)TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/ɻ;->dV:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 44
    iget-object v0, p0, Lo/ɻ;->uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lo/ɻ;->ˋ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/ɻ;->data:Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lo/ɻ;->data:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract ˋ(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/net/Uri;Landroid/content/ContentResolver;)TT;"
        }
    .end annotation
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

    .line 50
    iget-object v0, p0, Lo/ɻ;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lo/ɻ;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lo/ɻ;->ˮ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    const-string v0, "LocalUriFetcher"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "LocalUriFetcher"

    const-string v1, "failed to close data"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_0
    :goto_0
    return-void
.end method
