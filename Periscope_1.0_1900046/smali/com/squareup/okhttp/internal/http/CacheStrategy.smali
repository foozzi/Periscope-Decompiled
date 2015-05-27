.class public final Lcom/squareup/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lcom/squareup/okhttp/Response;

.field public final networkRequest:Lcom/squareup/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/squareup/okhttp/Request;

    .line 42
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/squareup/okhttp/Response;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/internal/http/CacheStrategy$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/CacheStrategy;-><init>(Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V

    return-void
.end method

.method public static isCacheable(Lcom/squareup/okhttp/Response;Lcom/squareup/okhttp/Request;)Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 65
    :sswitch_0
    goto :goto_1

    .line 72
    :sswitch_1
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->isPublic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    goto :goto_1

    .line 82
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 86
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->cacheControl()Lcom/squareup/okhttp/CacheControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/CacheControl;->noStore()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0x12c -> :sswitch_0
        0x12d -> :sswitch_0
        0x12e -> :sswitch_1
        0x133 -> :sswitch_1
        0x134 -> :sswitch_0
        0x194 -> :sswitch_0
        0x195 -> :sswitch_0
        0x19a -> :sswitch_0
        0x19e -> :sswitch_0
        0x1f5 -> :sswitch_0
    .end sparse-switch
.end method
