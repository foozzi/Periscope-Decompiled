.class public interface abstract Lcom/squareup/okhttp/internal/spdy/PushObserver;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CANCEL:Lcom/squareup/okhttp/internal/spdy/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/PushObserver$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/PushObserver$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/PushObserver;->CANCEL:Lcom/squareup/okhttp/internal/spdy/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILo/ui;IZ)Z
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.end method
