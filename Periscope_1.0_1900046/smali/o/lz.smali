.class public abstract Lo/lz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lretrofit/Callback<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final failure(Lretrofit/RetrofitError;)V
    .locals 1

    .line 28
    invoke-static {p1}, Lo/mj;->ˎ(Lretrofit/RetrofitError;)Lo/mj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/lz;->ˊ(Lo/mo;)V

    .line 29
    return-void
.end method

.method public final success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Lretrofit/client/Response;)V"
        }
    .end annotation

    .line 23
    new-instance v0, Lo/mf;

    invoke-direct {v0, p1, p2}, Lo/mf;-><init>(Ljava/lang/Object;Lretrofit/client/Response;)V

    invoke-virtual {p0, v0}, Lo/lz;->ˊ(Lo/mf;)V

    .line 24
    return-void
.end method

.method public abstract ˊ(Lo/mf;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract ˊ(Lo/mo;)V
.end method
