.class final Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final out:Lo/ue;


# direct methods
.method constructor <init>(Lo/ue;)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lo/ue;

    .line 374
    return-void
.end method


# virtual methods
.method writeByteString(Lo/uj;)V
    .locals 3

    .line 417
    invoke-virtual {p1}, Lo/uj;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    .line 418
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ˊ(Lo/uj;)Lo/ue;

    .line 419
    return-void
.end method

.method writeHeaders(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation

    .line 380
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 381
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lo/uj;

    invoke-virtual {v0}, Lo/uj;->em()Lo/uj;

    move-result-object v5

    .line 382
    # getter for: Lcom/squareup/okhttp/internal/spdy/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Hpack;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0

    .line 383
    if-eqz v6, :cond_0

    .line 385
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeInt(III)V

    .line 386
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lo/uj;)V

    goto :goto_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lo/ue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 389
    invoke-virtual {p0, v5}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lo/uj;)V

    .line 390
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Header;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->value:Lo/uj;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->writeByteString(Lo/uj;)V

    .line 380
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method writeInt(III)V
    .locals 3

    .line 398
    if-ge p1, p2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lo/ue;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 400
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lo/ue;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 405
    sub-int/2addr p1, p2

    .line 408
    :goto_0
    const/16 v0, 0x80

    if-lt p1, v0, :cond_1

    .line 409
    and-int/lit8 v2, p1, 0x7f

    .line 410
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lo/ue;

    or-int/lit16 v1, v2, 0x80

    invoke-virtual {v0, v1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 411
    ushr-int/lit8 p1, p1, 0x7

    .line 412
    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Hpack$Writer;->out:Lo/ue;

    invoke-virtual {v0, p1}, Lo/ue;->ﺜ(I)Lo/ue;

    .line 414
    return-void
.end method
