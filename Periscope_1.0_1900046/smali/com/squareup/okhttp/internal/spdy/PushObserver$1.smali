.class final Lcom/squareup/okhttp/internal/spdy/PushObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/PushObserver;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(ILo/ui;IZ)Z
    .locals 2

    .line 88
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lo/ui;->ᵋ(J)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onHeaders(ILjava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;Z)Z"
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public onRequest(ILjava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)Z"
        }
    .end annotation

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public onReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .locals 0

    .line 93
    return-void
.end method
