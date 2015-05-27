.class public abstract Lo/gk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ˊ(Lo/kc;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/kc;TT;)V"
        }
    .end annotation
.end method

.method public abstract ˋ(Lo/jz;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/jz;)TT;"
        }
    .end annotation
.end method

.method public final ᴶ(Ljava/lang/Object;)Lo/fw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Lo/fw;"
        }
    .end annotation

    .line 229
    :try_start_0
    new-instance v1, Lo/ie;

    invoke-direct {v1}, Lo/ie;-><init>()V

    .line 230
    invoke-virtual {p0, v1, p1}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {v1}, Lo/ie;->N()Lo/fw;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 232
    :catch_0
    move-exception v1

    .line 233
    new-instance v0, Lo/fx;

    invoke-direct {v0, v1}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
